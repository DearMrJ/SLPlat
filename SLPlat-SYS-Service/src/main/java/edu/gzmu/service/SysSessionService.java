package edu.gzmu.service;

import edu.gzmu.mapper.SysSessionMapper;
import edu.gzmu.model.SysSession;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.ibase4j.core.Constants;
import top.ibase4j.core.base.BaseService;
import top.ibase4j.core.util.CacheUtil;
import top.ibase4j.core.util.InstanceUtil;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 用户会话  服务实现类
 * </p>
 *
 * @author JiaYinWei
 * @since 2018-04-08
 */
@Service
@CacheConfig(cacheNames = "sysSession")
public class SysSessionService extends BaseService<SysSession> {

	@CachePut
	@Transactional
	public SysSession update(SysSession record) {
		if (record != null && record.getId() == null) {
			record.setUpdateTime(new Date());
			Long id = ((SysSessionMapper) mapper).queryBySessionId(record.getSessionId());
			if (id != null) {
				mapper.updateById(record);
			} else {
				record.setCreateTime(new Date());
				mapper.insert(record);
			}
		} else {
			mapper.updateById(record);
		}
		return record;
	}

	// 系统触发,由系统自动管理缓存
	public void deleteBySessionId(final SysSession sysSession) {
		if (sysSession != null) {
			((SysSessionMapper) mapper).deleteBySessionId(sysSession.getSessionId());
		}
	}

	public List<String> querySessionIdByAccount(SysSession sysSession) {
		if (sysSession != null) {
			return ((SysSessionMapper) mapper).querySessionIdByAccount(sysSession.getAccount());
		}
		return null;
	}

	//
	public void cleanExpiredSessions() {
		Map<String, Object> columnMap = InstanceUtil.newHashMap();
		List<SysSession> sessions = queryList(columnMap);
		for (SysSession sysSession : sessions) {
			if (sysSession != null) {
				logger.info("检查SESSION : {}", sysSession.getSessionId());
				if (!CacheUtil.getCache().exists(Constants.REDIS_SHIRO_SESSION + sysSession.getSessionId())) {
					logger.info("移除SESSION : {}", sysSession.getSessionId());
					delete(sysSession.getId());
				}
			}
		}
	}
}