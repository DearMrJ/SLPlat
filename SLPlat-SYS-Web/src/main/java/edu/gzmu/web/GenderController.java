package edu.gzmu.web;

import edu.gzmu.model.Gender;
import edu.gzmu.provider.ISysProvider;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.MediaType;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import top.ibase4j.core.base.provider.BaseController;
import top.ibase4j.core.util.WebUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * <p>
 * 性别  前端控制器
 * </p>
 *
 * @author JiaYinWei
 * @since 2018-04-08
 */
@RestController
@RequestMapping("/gender")
@Api(value = "性别接口", description = "性别接口")
public class GenderController extends BaseController<ISysProvider> {
	public String getService() {
		return "genderService";
	}

	@RequiresPermissions("sys.baseInfo.gender.read")
	@PutMapping(value = "/read/list")
	@ApiOperation(value = "查询性别", produces = MediaType.APPLICATION_JSON_VALUE)
	public Object query(HttpServletRequest request) {
		Map<String, Object> param = WebUtil.getParameter(request);
		return super.query(param);
	}

	@ApiOperation(value = "查询性别", produces = MediaType.APPLICATION_JSON_VALUE)
	@RequiresPermissions("sys.baseInfo.gender.read")
	@PutMapping(value = "/read/page")
	public Object query(ModelMap modelMap, @RequestBody Map<String, Object> param) {
		return super.query(modelMap, param);
	}

	@RequiresPermissions("sys.baseInfo.gender.read")
	@PutMapping(value = "/read/detail")
	@ApiOperation(value = "性别详情", produces = MediaType.APPLICATION_JSON_VALUE)
	public Object get(HttpServletRequest request) {
		Gender param = WebUtil.getParameter(request, Gender.class);
		return super.get(param);
	}

	@PostMapping
	@RequiresPermissions("sys.baseInfo.gender.update")
	@ApiOperation(value = "修改性别", produces = MediaType.APPLICATION_JSON_VALUE)
	public Object update(HttpServletRequest request) {
		Gender param = WebUtil.getParameter(request, Gender.class);
		return super.update(param);
	}

	@DeleteMapping
	@RequiresPermissions("sys.baseInfo.gender.delete")
	@ApiOperation(value = "删除性别", produces = MediaType.APPLICATION_JSON_VALUE)
	public Object del(HttpServletRequest request) {
		Gender param = WebUtil.getParameter(request, Gender.class);
		return super.del(param);
	}
}