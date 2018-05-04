/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/30 22:55:26                           */
/*==============================================================*/

/*==============================================================*/
/* Table: administrative_post                                   */
/*==============================================================*/
create table administrative_post
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table administrative_post comment '����ְ��';

/*==============================================================*/
/* Index: administrative_post_index                             */
/*==============================================================*/
create unique index administrative_post_index on administrative_post
(
   id_
);

/*==============================================================*/
/* Index: administrative_post_name_index                        */
/*==============================================================*/
create index administrative_post_name_index on administrative_post
(
   name_
);

/*==============================================================*/
/* Table: answer_for_completion                                 */
/*==============================================================*/
create table answer_for_completion
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `completion_id`         bigint comment '�������',
   `answer_`                varchar(254) comment '��',
   `synonyms`              varchar(500) comment 'ͬ���(�𰸵�ͬ�����)',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table answer_for_completion comment '������';

/*==============================================================*/
/* Index: answer_for_completion_index                           */
/*==============================================================*/
create unique index answer_for_completion_index on answer_for_completion
(
   id_
);

/*==============================================================*/
/* Index: answer_for_completion_completion_index                */
/*==============================================================*/
create index answer_for_completion_completion_index on answer_for_completion
(
   completion_id
);

/*==============================================================*/
/* Table: attachment                                            */
/*==============================================================*/
create table attachment
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `type_id`               bigint not null comment '����',
   `path_`                 varchar(1000) not null comment '·��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table attachment comment '�����ĵ�';

/*==============================================================*/
/* Index: attachment_index                                      */
/*==============================================================*/
create unique index attachment_index on attachment
(
   id_
);

/*==============================================================*/
/* Index: attachment_name_index                                 */
/*==============================================================*/
create index attachment_name_index on attachment
(
   name_
);

/*==============================================================*/
/* Table: attachment_type                                       */
/*==============================================================*/
create table attachment_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table attachment_type comment '��������';

/*==============================================================*/
/* Index: attachment_type_index                                 */
/*==============================================================*/
create unique index attachment_type_index on attachment_type
(
   id_
);

/*==============================================================*/
/* Index: attachment_type_name_index                            */
/*==============================================================*/
create index attachment_type_name_index on attachment_type
(
   name_
);

/*==============================================================*/
/* Table: authority                                             */
/*==============================================================*/
create table authority
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `prent_id`              bigint not null default 0 comment '�����ϼ�',
   `type_`                 bigint not null default 1 comment '����(1:Ŀ¼,2:�˵�,3:��ť)',
   `permission_value`      varchar(254) comment 'Ȩ��ֵ',
   `uri_`                  varchar(1000) not null comment '·��',
   `icon_`                 varchar(254) comment 'ͼ��',
   `status_`               tinyint not null default true comment '״̬(true:����, false:��ֹ)',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table authority comment 'Ȩ��';

/*==============================================================*/
/* Index: authority_index                                       */
/*==============================================================*/
create unique index authority_index on authority
(
   id_
);

/*==============================================================*/
/* Index: authority_name_index                                  */
/*==============================================================*/
create index authority_name_index on authority
(
   name_
);

/*==============================================================*/
/* Index: authority_parent_id_index                             */
/*==============================================================*/
create index authority_parent_id_index on authority
(
   prent_id
);

/*==============================================================*/
/* Index: authority_type_index                                  */
/*==============================================================*/
create index authority_type_index on authority
(
   type_
);

/*==============================================================*/
/* Table: batch                                                 */
/*==============================================================*/
create table batch
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table batch comment '����';

/*==============================================================*/
/* Index: batch_index                                           */
/*==============================================================*/
create unique index batch_index on batch
(
   id_
);

/*==============================================================*/
/* Index: batch_name_index                                      */
/*==============================================================*/
create index batch_name_index on batch
(
   name_
);

/*==============================================================*/
/* Table: book_resource                                         */
/*==============================================================*/
create table book_resource
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `specialty_id`          bigint comment 'רҵ���',
   `type_`                 varchar(254) comment 'ͼ����ʽ������ͼ�顢ֽ��ͼ��',
   `number_`               bigint comment 'ͼ������',
   `publisher_id`          bigint comment '������',
   `publish_time`          date comment '����ʱ��',
   `ISBN_`                 varchar(254) comment 'ISBN',
   `introdution_`          varchar(5000) comment '���',
   `authors_`              varchar(254) comment '����',
   `href_`                 varchar(254) comment '�����鳬����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table book_resource comment 'ͼ������';

/*==============================================================*/
/* Table: cee_annual_score                                      */
/*==============================================================*/
create table cee_annual_score
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `year_`                  bigint not null comment '���',
   `province_id`           bigint not null comment 'ʡ�ݱ��',
   `category_id`           bigint not null comment '���������',
   `batch_id`              bigint not null comment '���α��',
   `min_score_line`        float not null comment '��ͷ�����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table cee_annual_score comment '���������';

/*==============================================================*/
/* Index: cee_annual_score_index                                 */
/*==============================================================*/
create unique index cee_annual_score_index on cee_annual_score
(
   id_
);

/*==============================================================*/
/* Index: cee_annual_score_year_index                            */
/*==============================================================*/
create index cee_annual_score_year_index on cee_annual_score
(
   year_
);

/*==============================================================*/
/* Index: cee_annual_score_province_index                        */
/*==============================================================*/
create index cee_annual_score_province_index on cee_annual_score
(
   province_id
);

/*==============================================================*/
/* Index: cee_annual_score_category_index                        */
/*==============================================================*/
create index cee_annual_score_category_index on cee_annual_score
(
   category_id
);

/*==============================================================*/
/* Index: cee_annual_score_batch_index                           */
/*==============================================================*/
create index cee_annual_score_batch_index on cee_annual_score
(
   batch_id
);

/*==============================================================*/
/* Table: certificate                                           */
/*==============================================================*/
create table certificate
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '����ȫƴ',
   `certificate_no`        varchar(254) comment '֤����',
   `owner_id`              bigint comment 'ӵ���߱��',
   `level_`                varchar(254) comment '���𣺳������м����߼�',
   `type_`                 varchar(254) comment '���ͣ���ҵ��֤��������֤',
   `time_`                 datetime comment '���ʱ�䣺������ݡ��·�',
   `student_id`            varchar(254) comment 'ѧ�����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table certificate comment '�����ҵ֤��';

/*==============================================================*/
/* Table: chapter_and_sections                                  */
/*==============================================================*/
create table chapter_and_sections
(
   `id_`                   bigint not null auto_increment comment '���',
   `course_id`             bigint not null comment '�γ̱��',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `overview_`             varchar(10000) comment '����',
   `parent_id`             bigint comment '�������½ڱ��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table chapter_and_sections comment '�½�';

/*==============================================================*/
/* Index: chapter_and_sections_index                            */
/*==============================================================*/
create unique index chapter_and_sections_index on chapter_and_sections
(
   id_
);

/*==============================================================*/
/* Index: chapter_and_sections_course_index                     */
/*==============================================================*/
create index chapter_and_sections_course_index on chapter_and_sections
(
   course_id
);

/*==============================================================*/
/* Index: chapter_and_sections_name_index                       */
/*==============================================================*/
create index chapter_and_sections_name_index on chapter_and_sections
(
   name_
);

/*==============================================================*/
/* Index: chapter_and_sections_parent_index                     */
/*==============================================================*/
create index chapter_and_sections_parent_index on chapter_and_sections
(
   parent_id
);

/*==============================================================*/
/* Table: city                                                  */
/*==============================================================*/
create table city
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `province_id`           bigint not null comment 'ʡ�ݱ��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table city comment '��';

/*==============================================================*/
/* Index: city_index                                            */
/*==============================================================*/
create unique index city_index on city
(
   id_
);

/*==============================================================*/
/* Index: city_name_index                                       */
/*==============================================================*/
create index city_name_index on city
(
   name_
);

/*==============================================================*/
/* Index: city_province_index                                   */
/*==============================================================*/
create index city_province_index on city
(
   province_id
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `specialty_id`          bigint not null comment 'רҵ���',
   `adviser_id`            bigint comment '�����α��',
   `monitor_id`            bigint comment '�೤���',
   `secretary_id`          bigint comment 'ѧϰίԱ���',
   `entrance_date`         datetime comment '��ѧ����',
   `students_number`       bigint comment 'ѧ������',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table class comment '�༶';

/*==============================================================*/
/* Index: class_index                                           */
/*==============================================================*/
create unique index class_index on class
(
   id_
);

/*==============================================================*/
/* Index: class_name_index                                      */
/*==============================================================*/
create index class_name_index on class
(
   name_
);

/*==============================================================*/
/* Index: class_adviser_index                                   */
/*==============================================================*/
create index class_adviser_index on class
(
   adviser_id
);

/*==============================================================*/
/* Index: class_specialty_index                                 */
/*==============================================================*/
create index class_specialty_index on class
(
   `specialty_id`
);

/*==============================================================*/
/* Table: college                                               */
/*==============================================================*/
create table college
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `school_id`             bigint not null comment 'ѧУ���',
   `college_profile`       varchar(10000) comment 'ѧԺ�ſ�',
   `college_code`          varchar(254) comment 'ѧԺ����',
   `students_number`       bigint comment '��У������',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table college comment 'ѧԺ';

/*==============================================================*/
/* Index: college_index                                         */
/*==============================================================*/
create unique index college_index on college
(
   id_
);

/*==============================================================*/
/* Index: college_name_index                                    */
/*==============================================================*/
create index college_name_index on college
(
   name_
);

/*==============================================================*/
/* Index: college_code_index                                    */
/*==============================================================*/
create index college_code_index on college
(
   college_code
);

/*==============================================================*/
/* Index: college_school_index                                  */
/*==============================================================*/
create index college_school_index on college
(
   school_id
);

/*==============================================================*/
/* Table: completion                                            */
/*==============================================================*/
create table completion
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(1000) comment '����',
   `spell_`                varchar(1000) comment '���Ƶ�ȫƴ',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table completion comment '�����';

/*==============================================================*/
/* Index: completion_index                                      */
/*==============================================================*/
create unique index completion_index on completion
(
   id_
);

/*==============================================================*/
/* Index: completion_difficult_degree_index                     */
/*==============================================================*/
create index completion_difficult_degree_index on completion
(
   difficult_degree
);

/*==============================================================*/
/* Index: completion_is_required_index                          */
/*==============================================================*/
create index completion_is_required_index on completion
(
   is_required
);

/*==============================================================*/
/* Index: completion_section_index                              */
/*==============================================================*/
create index completion_section_index on completion
(
   section_id
);

/*==============================================================*/
/* Table: content                                               */
/*==============================================================*/
create table content
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `year_`                 bigint not null comment '���',
   `index_`                varchar(254) comment 'ָ�꣺����ָ�ꡢ����ָ��',
   `specialty_id`          bigint not null comment 'רҵ���',
   `professor_id`          bigint not null comment 'ר�ұ��',
   `estimate_`             varchar(5000) not null comment '����',
   `score_`                bigint comment '��ֵ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table content comment '��������';

/*==============================================================*/
/* Index: content_index                                         */
/*==============================================================*/
create unique index content_index on content
(
   id_
);

/*==============================================================*/
/* Index: content_year_index                                    */
/*==============================================================*/
create index content_year_index on content
(
   year_
);

/*==============================================================*/
/* Index: content_specialty_index                               */
/*==============================================================*/
create index content_specialty_index on content
(
   specialty_id
);

/*==============================================================*/
/* Index: content_professor_index                               */
/*==============================================================*/
create index content_professor_index on content
(
   professor_id
);

/*==============================================================*/
/* Table: content_detailed_grading_item                         */
/*==============================================================*/
create table content_detailed_grading_item
(
   `id_`                       bigint not null comment '���',
   `name_`                     varchar(254) comment '����',
   `spell_`                    varchar(254) comment '���Ƶ�ȫƴ',
   `content_id`                bigint not null comment '�������ݱ��',
   `detailed_grading_item_id`   bigint not null comment '����ϸ����',
   `create_by`                 bigint comment '�����û����',
   `create_time`               datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`                 bigint comment '�����û����',
   `update_time`               datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`                   int default 1 comment '����',
   `remark_`                   varchar(254) comment '��ע',
   `enable_`                   tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table content_detailed_grading_item comment '�������������ֹ������';

/*==============================================================*/
/* Index: content_detailed_grading_item_contentID_index         */
/*==============================================================*/
create index content_detailed_grading_item_contentID_index on content_detailed_grading_item
(
   content_id
);

/*====================================================================*/
/* Index: content_detailed_grading_item_detailed_grading_item_id_index */
/*====================================================================*/
create index content_detailed_grading_item_detailed_grading_item_id_index on content_detailed_grading_item
(
   detailed_grading_item_id
);

/*==============================================================*/
/* Table: copyright                                             */
/*==============================================================*/
create table copyright
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `certificate_id`        varchar(254) comment '֤���',
   `completion_date`       datetime comment '�����������',
   `release_date`          datetime comment '�״η�������',
   `acquisition_mode`      datetime comment 'Ȩ��ȡ�÷�ʽ',
   `interest_field`        varchar(1000) comment 'Ȩ����Χ',
   `register_no`           varchar(254) comment '�ǼǺ�',
   `licence_date`          datetime comment '��֤����',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table copyright comment '����Ȩ';

/*==============================================================*/
/* Index: copyright_index                                       */
/*==============================================================*/
create index copyright_index on copyright
(
   id_
);

/*==============================================================*/
/* Index: copyright_name_index                                  */
/*==============================================================*/
create index copyright_name_index on copyright
(
   name_
);

/*==============================================================*/
/* Table: copyright_owner                                       */
/*==============================================================*/
create table copyright_owner
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `copyright_no`          bigint not null comment '����Ȩ���',
   `owner_id`              bigint not null comment 'ӵ���߱��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table copyright_owner comment '����Ȩ��ӵ���ߣ�����Ȩ�ˣ�����';

/*==============================================================*/
/* Index: copyright_owner_copyright_index                       */
/*==============================================================*/
create index copyright_owner_copyright_index on copyright_owner
(
   copyright_no
);

/*==============================================================*/
/* Index: copyright_owner_owner_index                           */
/*==============================================================*/
create index copyright_owner_owner_index on copyright_owner
(
   owner_id
);

/*==============================================================*/
/* Table: county                                                */
/*==============================================================*/
create table county
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `city_id`              bigint not null comment '�б��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table county comment '����';

/*==============================================================*/
/* Index: county_index                                          */
/*==============================================================*/
create unique index county_index on county
(
   id_
);

/*==============================================================*/
/* Index: county_name_index                                     */
/*==============================================================*/
create index county_name_index on county
(
   name_
);

/*==============================================================*/
/* Index: county_city_index                                     */
/*==============================================================*/
create index county_city_index on county
(
   city_id
);

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `specialty_id`         bigint not null comment 'רҵ���',
   `code_`                 varchar(254) not null comment '�γ̴���',
   `credit_`               bigint not null comment 'ѧ��',
   `class_hours`          bigint not null comment 'ѧʱ',
   `start_time`           datetime comment '����ʱ��',
   `theory_hours`         bigint not null comment '���ۿ�ʱ',
   `practical_hours`      bigint not null comment 'ʵ����ʱ',
   `type_id`              bigint comment '�γ����ͱ��',
   `course_property`      varchar(254) comment '�γ�����',
   `is_boutique_course`   tinyint default false comment '�Ƿ�Ʒ�γ�(true:��, false:��)',
   `introduction_`         varchar(10000) comment '�γ̼��',
   `target_`               varchar(10000) comment '�γ�Ŀ��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table course comment '�γ�';

/*==============================================================*/
/* Index: course_index                                          */
/*==============================================================*/
create unique index course_index on course
(
   id_
);

/*==============================================================*/
/* Index: course_name_index                                     */
/*==============================================================*/
create index course_name_index on course
(
   name_
);

/*==============================================================*/
/* Index: course_specialty_index                                */
/*==============================================================*/
create index course_specialty_index on course
(
   specialty_id
);

/*==============================================================*/
/* Index: course_code_index                                     */
/*==============================================================*/
create index course_code_index on course
(
   code_
);

/*==============================================================*/
/* Index: course_type_index                                     */
/*==============================================================*/
create index course_type_index on course
(
   type_id
);

/*==============================================================*/
/* Index: course_is_boutique_course_index                       */
/*==============================================================*/
create index course_is_boutique_course_index on course
(
   is_boutique_course
);

/*==============================================================*/
/* Table: course_material                                       */
/*==============================================================*/
create table course_material
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `publisher_id`         bigint comment '��������',
   `editor_`               varchar(254) comment '����',
   `ISBN_`                 varchar(254) comment 'ISBN',
   `price_`                numeric(8,0) comment '����',
   `feature_`              varchar(10000) comment '�̲���ɫ',
   `publish_date`         datetime comment '��������',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table course_material comment '�γ̲̽�';

/*==============================================================*/
/* Index: course_material_index                                 */
/*==============================================================*/
create unique index course_material_index on course_material
(
   id_
);

/*==============================================================*/
/* Index: course_material_name_index                            */
/*==============================================================*/
create index course_material_name_index on course_material
(
   name_
);

/*==============================================================*/
/* Index: course_material_editor_index                          */
/*==============================================================*/
create index course_material_editor_index on course_material
(
   editor_
);

/*==============================================================*/
/* Index: course_material_iSBN_index                            */
/*==============================================================*/
create index course_material_iSBN_index on course_material
(
   ISBN_
);

/*==============================================================*/
/* Table: course_teaching                                       */
/*==============================================================*/
create table course_teaching
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `course_id`             bigint comment '�γ̱��',
   `tutor_id`              bigint comment '�ڿ���ʦ���',
   `counselor_id`          bigint comment '������ʦ���',
   `lecturer_id`           bigint comment '�ڿΰ༶���',
   `semester_id`           bigint comment '����ѧ�ڱ��',
   `course_material_id`    bigint comment '���ý̲ı��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table course_teaching comment '�γ̽���';

/*==============================================================*/
/* Index: course_teaching_index                                 */
/*==============================================================*/
create unique index course_teaching_index on course_teaching
(
   id_
);

/*==============================================================*/
/* Index: course_teaching_name_index                            */
/*==============================================================*/
create index course_teaching_name_index on course_teaching
(
   name_
);

/*==============================================================*/
/* Index: course_teaching_course_index                          */
/*==============================================================*/
create index course_teaching_course_index on course_teaching
(
   course_id
);

/*==============================================================*/
/* Index: course_teaching_tutor_index                           */
/*==============================================================*/
create index course_teaching_tutor_index on course_teaching
(
   tutor_id
);

/*==============================================================*/
/* Index: course_teaching_counselor_index                       */
/*==============================================================*/
create index course_teaching_counselor_index on course_teaching
(
   counselor_id
);

/*==============================================================*/
/* Index: course_teaching_lecturer_index                        */
/*==============================================================*/
create index course_teaching_lecturer_index on course_teaching
(
   lecturer_id
);

/*==============================================================*/
/* Index: course_teaching_semester_index                        */
/*==============================================================*/
create index course_teaching_semester_index on course_teaching
(
   semester_id
);

/*==============================================================*/
/* Table: course_type                                           */
/*==============================================================*/
create table course_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table course_type comment '�γ�����';

/*==============================================================*/
/* Index: course_type_index                                     */
/*==============================================================*/
create unique index course_type_index on course_type
(
   id_
);

/*==============================================================*/
/* Index: course_type_name_index                                */
/*==============================================================*/
create index course_type_name_index on course_type
(
   name_
);

/*==============================================================*/
/* Table: detailed_grading_item                                 */
/*==============================================================*/
create table detailed_grading_item
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(5000) comment '����',
   `spell_`                varchar(5000) comment '���Ƶ�ȫƴ',
   `description_`          varchar(10000) comment '����˵��',
   `third_rule_id`         bigint not null comment '����Ŀ¼���',
   `year_`                 bigint not null comment '���',
   `specialty_id`          bigint not null comment 'רҵ���',
   `data_source`           varchar(500) comment '������Դ',
   `computing_method`      varchar(500) comment '���㷽��',
   `score_`                bigint comment '��ռ��ֵ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table detailed_grading_item comment '����ϸ��';

/*==============================================================*/
/* Index: detailed_grading_item_index                           */
/*==============================================================*/
create unique index detailed_grading_item_index on detailed_grading_item
(
   id_
);

/*==============================================================*/
/* Table: education_program                                     */
/*==============================================================*/
create table education_program
(
   `id_`                           bigint not null auto_increment comment '���',
   `name_`                         varchar(254) comment '����',
   `spell_`                        varchar(254) comment '���Ƶ�ȫƴ',
   `year_`                         bigint comment '���',
   `specialty_id`                  bigint not null comment 'רҵ���',
   `theoretical_teaching_credit`   bigint comment '���۽�ѧѧ��',
   `practice_teaching_credit`      bigint comment 'ʵ����ѧѧ��',
   `brief_introduction`            varchar(10000) comment '���',
   `attachment_id`                 bigint comment '�����ĵ�',
   `create_by`                     bigint comment '�����û����',
   `create_time`                   datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`                     bigint comment '�����û����',
   `update_time`                   datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`                       int default 1 comment '����',
   `remark_`                       varchar(254) comment '��ע',
   `enable_`                       tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table education_program comment '��������';

/*==============================================================*/
/* Index: education_program_index                               */
/*==============================================================*/
create unique index education_program_index on education_program
(
   id_
);

/*==============================================================*/
/* Index: education_program_name_index                          */
/*==============================================================*/
create index education_program_name_index on education_program
(
   name_
);

/*==============================================================*/
/* Index: education_program_year_index                          */
/*==============================================================*/
create index education_program_year_index on education_program
(
   year_
);

/*==============================================================*/
/* Index: education_program_specialty_index                     */
/*==============================================================*/
create index education_program_specialty_index on education_program
(
   specialty_id
);

/*==============================================================*/
/* Table: employment_situation                                  */
/*==============================================================*/
create table employment_situation
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `student_id`            bigint not null comment 'ѧ�����',
   `time_`                 datetime comment 'ʱ��',
   `company_`              varchar(254) comment '��ҵ',
   `orientation_`          varchar(254) comment '����',
   `status_`               tinyint default true comment 'true��ǩԼ��false����Լ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table employment_situation comment '��ҵ���';

/*==============================================================*/
/* Index: employment_situation_index                            */
/*==============================================================*/
create unique index employment_situation_index on employment_situation
(
   id_
);

/*==============================================================*/
/* Index: employment_situation_student_index                    */
/*==============================================================*/
create index employment_situation_student_index on employment_situation
(
   student_id
);

/*==============================================================*/
/* Table: equipment                                             */
/*==============================================================*/
create table equipment
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `number_`               bigint comment '̨��',
   `specialty_id`          bigint comment 'רҵ���',
   `price_`                bigint comment '����',
   `is_nearly_add`         tinyint default false comment '�Ƿ����������(true:��, false:��)',
   `use_rate`              float comment '��רҵʹ�ñ���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table equipment comment '�����豸';

/*==============================================================*/
/* Table: examinee_category                                     */
/*==============================================================*/
create table examinee_category
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table examinee_category comment '�������';

/*==============================================================*/
/* Index: examinee_category_index                               */
/*==============================================================*/
create unique index examinee_category_index on examinee_category
(
   id_
);

/*==============================================================*/
/* Index: examinee_category_name_index                          */
/*==============================================================*/
create index examinee_category_name_index on examinee_category
(
   name_
);

/*==============================================================*/
/* Table: gender                                                */
/*==============================================================*/
create table gender
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table gender comment '�Ա�';

/*==============================================================*/
/* Index: gender_index                                          */
/*==============================================================*/
create unique index gender_index on gender
(
   id_
);

/*==============================================================*/
/* Index: gender_name_index                                     */
/*==============================================================*/
create index gender_name_index on gender
(
   name_
);

/*==============================================================*/
/* Table: high_school_category                                  */
/*==============================================================*/
create table high_school_category
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table high_school_category comment '�������';

/*==============================================================*/
/* Index: high_school_category_index                            */
/*==============================================================*/
create unique index high_school_category_index on high_school_category
(
   id_
);

/*==============================================================*/
/* Index: high_school_category_name_index                       */
/*==============================================================*/
create index high_school_category_name_index on high_school_category
(
   name_
);

/*==============================================================*/
/* Table: judgment                                              */
/*==============================================================*/
create table judgment
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `answer_`               tinyint comment '�ο���',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table judgment comment '�ж���';

/*==============================================================*/
/* Index: judgment_index                                        */
/*==============================================================*/
create unique index judgment_index on judgment
(
   id_
);

/*==============================================================*/
/* Index: judgment_difficult_degree_index                       */
/*==============================================================*/
create index judgment_difficult_degree_index on judgment
(
   difficult_degree
);

/*==============================================================*/
/* Index: judgment_is_required_index                            */
/*==============================================================*/
create index judgment_is_required_index on judgment
(
   is_required
);

/*==============================================================*/
/* Index: judgment_section_index                                */
/*==============================================================*/
create index judgment_section_index on judgment
(
   section_id
);

/*==============================================================*/
/* Table: knowledge_point                                       */
/*==============================================================*/
create table knowledge_point
(
   `id_`                          bigint not null auto_increment comment '���',
   `name_`                        varchar(254) comment '����',
   `spell_`                       varchar(254) comment '���Ƶ�ȫƴ',
   `overview_`                    varchar(10000) comment '֪ʶ����',
   `difficult_degree`             bigint comment '֪ʶ�Ѷ�',
   `parent_knowledge_point_id`    bigint comment '������֪ʶ����',
   `create_by`                    bigint comment '�����û����',
   `create_time`                  datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`                    bigint comment '�����û����',
   `update_time`                  datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`                      int default 1 comment '����',
   `remark_`                      varchar(254) comment '��ע',
   `enable_`                      tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table knowledge_point comment '֪ʶ��';

/*==============================================================*/
/* Index: knowledge_point_index                                  */
/*==============================================================*/
create unique index knowledge_point_index on knowledge_point
(
   id_
);

/*==============================================================*/
/* Index: knowledge_point_name_index                             */
/*==============================================================*/
create index knowledge_point_name_index on knowledge_point
(
   name_
);

/*==============================================================*/
/* Index: knowledge_point_difficult_degree_index                 */
/*==============================================================*/
create index knowledge_point_difficult_degree_index on knowledge_point
(
   difficult_degree
);

/*==============================================================*/
/* Index: knowledge_point_parent_index                           */
/*==============================================================*/
create index knowledge_point_parent_index on knowledge_point
(
   parent_knowledge_point_id
);

/*==============================================================*/
/* Table: multi_select                                          */
/*==============================================================*/
create table multi_select
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table multi_select comment '����ѡ����';

/*==============================================================*/
/* Index: multi_select_index                                    */
/*==============================================================*/
create unique index multi_select_index on multi_select
(
   id_
);

/*==============================================================*/
/* Index: multi_select_difficult_degree_index                   */
/*==============================================================*/
create index multi_select_difficult_degree_index on multi_select
(
   difficult_degree
);

/*==============================================================*/
/* Index: multi_select_is_required_index                        */
/*==============================================================*/
create index multi_select_is_required_index on multi_select
(
   is_required
);

/*==============================================================*/
/* Index: multi_select_section_index                            */
/*==============================================================*/
create index multi_select_section_index on multi_select
(
   section_id
);

/*==============================================================*/
/* Table: nation                                                */
/*==============================================================*/
create table nation
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table nation comment '����';

/*==============================================================*/
/* Index: nation_index                                          */
/*==============================================================*/
create unique index nation_index on nation
(
   id_
);

/*==============================================================*/
/* Index: nation_name_index                                     */
/*==============================================================*/
create index nation_name_index on nation
(
   name_
);

/*==============================================================*/
/* Table: owner                                                 */
/*==============================================================*/
create table owner
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `flag_`                 bigint not null default 0 comment 'ֵΪ0����ѧ����1�����ʦ��2����ѧԺ��3����ѧУ',
   `student_id`            bigint not null comment 'ѧ��',
   `teacher_id`            bigint not null comment '��ʦ',
   `college_id`            bigint comment 'ѧԺ���',
   `school_id`             bigint comment 'ѧУ���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table owner comment 'ӵ����';

/*==============================================================*/
/* Index: owner_index                                           */
/*==============================================================*/
create unique index owner_index on owner
(
   id_
);

/*==============================================================*/
/* Index: owner_student_id_index                                */
/*==============================================================*/
create index owner_student_id_index on owner
(
   student_id
);

/*==============================================================*/
/* Index: owner_teacher_index                                   */
/*==============================================================*/
create index owner_teacher_index on owner
(
   teacher_id
);

/*==============================================================*/
/* Index: owner_college_index                                   */
/*==============================================================*/
create index owner_college_index on owner
(
   college_id
);

/*==============================================================*/
/* Index: owner_school_index                                    */
/*==============================================================*/
create index owner_school_index on owner
(
   school_id
);

/*==============================================================*/
/* Table: patent                                                */
/*==============================================================*/
create table patent
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `patent_type_id`        bigint comment '���ͱ��',
   `patent_no`             varchar(254) comment 'ר����',
   `patent_date`           datetime comment 'ר��������',
   `auth_date`             datetime comment '��Ȩ������',
   `patent_deadline`       datetime comment '��ֹ����',
   `domain_`               varchar(254) comment '������������',
   `content_`              varchar(5000) comment 'ר�����',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table patent comment 'ר��';

/*==============================================================*/
/* Index: patent_index                                          */
/*==============================================================*/
create unique index patent_index on patent
(
   id_
);

/*==============================================================*/
/* Index: patent_name_index                                     */
/*==============================================================*/
create index patent_name_index on patent
(
   name_
);

/*==============================================================*/
/* Index: patent_type_index                                     */
/*==============================================================*/
create index patent_type_index on patent
(
   patent_type_id
);

/*==============================================================*/
/* Table: patent_inventor_owner                                 */
/*==============================================================*/
create table patent_inventor_owner
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `patent_no`             bigint not null comment 'ר�����',
   `owner_id`              bigint not null comment 'ӵ���߱��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table patent_inventor_owner comment 'ר�������ˣ�����ˣ���ӵ���߹���';

/*==============================================================*/
/* Index: patent_inventor_owner_index                           */
/*==============================================================*/
create unique index patent_inventor_owner_index on patent_inventor_owner
(
   id_
);

/*==============================================================*/
/* Table: patent_type                                           */
/*==============================================================*/
create table patent_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table patent_type comment 'ר������';

/*==============================================================*/
/* Index: patent_type_index                                     */
/*==============================================================*/
create unique index patent_type_index on patent_type
(
   id_
);

/*==============================================================*/
/* Index: patent_type_name_index                                */
/*==============================================================*/
create index patent_type_name_index on patent_type
(
   name_
);

/*==============================================================*/
/* Table: project                                               */
/*==============================================================*/
create table project
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `type_id`               bigint comment '���ͱ��',
   `leader_id`             bigint comment '������',
   `field_`                varchar(254) comment '�漰����',
   `approve_time`          datetime comment '��׼ʱ�䣺��',
   `start_time`            datetime comment '��ʼʱ�䣺��',
   `finish_time`           datetime comment '����ʱ�䣺��',
   `duration_`             datetime comment '����ʱ�䣺��',
   `funds_`                float comment '���ѣ���',
   `status_`               tinyint comment '�Ƿ����',
   `source_`               varchar(254) comment '��Դ',
   `leader_department`     varchar(254) comment '������λ',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table project comment '��Ŀ';

/*==============================================================*/
/* Index: project_index                                         */
/*==============================================================*/
create unique index project_index on project
(
   id_
);

/*==============================================================*/
/* Index: project_name_index                                    */
/*==============================================================*/
create index project_name_index on project
(
   name_
);

/*==============================================================*/
/* Index: project_type_index                                    */
/*==============================================================*/
create index project_type_index on project
(
   type_id
);

/*==============================================================*/
/* Index: project_leader_index                                  */
/*==============================================================*/
create index project_leader_index on project
(
   leader_id
);

/*==============================================================*/
/* Table: project_owner                                         */
/*==============================================================*/
create table project_owner
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `peoject_id`            bigint not null comment '��Ŀ���',
   `owner_id`              bigint not null comment 'ӵ���߱��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table project_owner comment '��Ŀ��ӵ���ߣ���Ҫ�����ߣ�����';

/*==============================================================*/
/* Index: project_owner_peoject_index                           */
/*==============================================================*/
create index project_owner_peoject_index on project_owner
(
   peoject_id
);

/*==============================================================*/
/* Index: project_owner_owner_index                             */
/*==============================================================*/
create index project_owner_owner_index on project_owner
(
   owner_id
);

/*==============================================================*/
/* Table: person                                                */
/*==============================================================*/
create table person
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `is_teacher`            tinyint not null default false comment 'ֵΪfalse����ѧ����true�����ʦ',
   `student_id`            bigint not null comment 'ѧ��',
   `teacher_id`            bigint not null comment '��ʦ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table person comment '��Ա';

/*==============================================================*/
/* Index: person_index                                          */
/*==============================================================*/
create unique index person_index on person
(
   id_
);

/*==============================================================*/
/* Index: person_student_id_index                               */
/*==============================================================*/
create index person_student_id_index on person
(
   student_id
);

/*==============================================================*/
/* Index: person_teacher_id_index                               */
/*==============================================================*/
create index person_teacher_id_index on person
(
   teacher_id
);

/*==============================================================*/
/* Table: political_status                                      */
/*==============================================================*/
create table political_status
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table political_status comment '������ò';

/*==============================================================*/
/* Index: political_status_index                                */
/*==============================================================*/
create unique index political_status_index on political_status
(
   id_
);

/*==============================================================*/
/* Index: political_status_name_index                           */
/*==============================================================*/
create index political_status_name_index on political_status
(
   name_
);

/*==============================================================*/
/* Table: postgraduate_situation                                */
/*==============================================================*/
create table postgraduate_situation
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `student_id`           bigint not null comment 'ѧ�����',
   `time_`                 datetime comment 'ʱ��',
   `school_`               varchar(254) comment 'ѧУ',
   `specialty_`            varchar(254) comment 'רҵ',
   `is_adjust`            tinyint default true comment 'true����һ־Ը��false������',
   `status_`               tinyint default true comment 'true��¼ȡ��false��δ¼ȡ',
   `create_by`             bigint comment '�����û����',
   `create_time`          datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table postgraduate_situation comment '�������';

/*==============================================================*/
/* Index: postgraduate_situation_index                          */
/*==============================================================*/
create unique index postgraduate_situation_index on postgraduate_situation
(
   id_
);

/*==============================================================*/
/* Index: postgraduate_situation_student_index                  */
/*==============================================================*/
create index postgraduate_situation_student_index on postgraduate_situation
(
   student_id
);

/*==============================================================*/
/* Table: practice_basement                                     */
/*==============================================================*/
create table practice_basement
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `enterprise_`           varchar(254) comment '������ҵ',
   `number_`               bigint comment 'ʵϰѧ������',
   `specialty_id`          bigint comment 'רҵ���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table practice_basement comment 'У��ʵϰ����';

/*==============================================================*/
/* Table: professional_title                                    */
/*==============================================================*/
create table professional_title
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table professional_title comment 'ְ��';

/*==============================================================*/
/* Index: professional_title_index                              */
/*==============================================================*/
create unique index professional_title_index on professional_title
(
   id_
);

/*==============================================================*/
/* Index: professional_title_name_index                         */
/*==============================================================*/
create index professional_title_name_index on professional_title
(
   name_
);

/*==============================================================*/
/* Table: professor                                             */
/*==============================================================*/
create table professor
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `gender_id`             bigint not null comment '�Ա���',
   `phone_`                varchar(254) comment '��ϵ�绰',
   `email_`                varchar(254) comment '�����ʼ�',
   `address_`              varchar(1000) comment '��ͥסַ',
   `employer_Unit`         varchar(254) comment '��ְ��λ',
   `unit_address`          varchar(1000) comment '��λ��ַ',
   `unit_phone`            varchar(254) comment '��λ�绰',
   `major_field`           varchar(254) comment 'רҵ����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table professor comment 'ר��';

/*==============================================================*/
/* Index: professor_index                                       */
/*==============================================================*/
create unique index professor_index on professor
(
   id_
);

/*==============================================================*/
/* Index: professor_name_index                                  */
/*==============================================================*/
create index professor_name_index on professor
(
   name_
);

/*==============================================================*/
/* Table: program                                               */
/*==============================================================*/
create table program
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `answer_`               text comment '�ο���',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table program comment '�����';

/*==============================================================*/
/* Index: program_index                                         */
/*==============================================================*/
create unique index program_index on program
(
   id_
);

/*==============================================================*/
/* Index: program_difficult_degree_index                        */
/*==============================================================*/
create index program_difficult_degree_index on program
(
   difficult_degree
);

/*==============================================================*/
/* Index: program_is_required_index                             */
/*==============================================================*/
create index program_is_required_index on program
(
   is_required
);

/*==============================================================*/
/* Index: program_section_index                                 */
/*==============================================================*/
create index program_section_index on program
(
   section_id
);

/*==============================================================*/
/* Table: project_type                                          */
/*==============================================================*/
create table project_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `level_`                varchar(254) not null comment '���𣺹��Ҽ���ʡ����У��',
   `type_`                 varchar(254) comment '���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table project_type comment '��Ŀ���ͣ����п��⣺���Ҽ����Ƽ������⡢������Ȼ������⡢������ƻ������ȣ�';

/*==============================================================*/
/* Index: project_type_index                                    */
/*==============================================================*/
create unique index project_type_index on project_type
(
   id_
);

/*==============================================================*/
/* Index: project_type_name_index                               */
/*==============================================================*/
create index project_type_name_index on project_type
(
   name_
);

/*==============================================================*/
/* Table: province                                              */
/*==============================================================*/
create table province
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table province comment 'ʡ��';

/*==============================================================*/
/* Index: province_index                                        */
/*==============================================================*/
create unique index province_index on province
(
   id_
);

/*==============================================================*/
/* Index: province_name_index                                   */
/*==============================================================*/
create index province_name_index on province
(
   name_
);

/*==============================================================*/
/* Table: publisher                                             */
/*==============================================================*/
create table publisher
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table publisher comment '������';

/*==============================================================*/
/* Index: publisher_index                                       */
/*==============================================================*/
create unique index publisher_index on publisher
(
   id_
);

/*==============================================================*/
/* Index: publisher_name_index                                  */
/*==============================================================*/
create index publisher_name_index on publisher
(
   name_
);

/*==============================================================*/
/* Table: question_knowledge_point                              */
/*==============================================================*/
create table question_knowledge_point
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `question_type`         bigint not null default 0 comment '0������ѡ���⣬1������ѡ���⣬2������⣬3������⣬4������⣬5�������',
   `question_id`           bigint not null comment '��Ŀ���',
   `knowledge_point_id`    bigint not null comment '֪ʶ����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table question_knowledge_point comment '��Ŀ��֪ʶ�����';

/*==============================================================*/
/* Index: question_knowledge_point_index                        */
/*==============================================================*/
create unique index question_knowledge_point_index on question_knowledge_point
(
   id_
);

/*==============================================================*/
/* Index: question_knowledge_point_question_type_index          */
/*==============================================================*/
create index question_knowledge_point_question_type_index on question_knowledge_point
(
   question_type
);

/*==============================================================*/
/* Index: question_knowledge_point_question_id_index            */
/*==============================================================*/
create index question_knowledge_point_question_id_index on question_knowledge_point
(
   question_id
);

/*==============================================================*/
/* Index: question_knowledge_point_knowledge_point_index         */
/*==============================================================*/
create index question_knowledge_point_knowledge_point_index on question_knowledge_point
(
   knowledge_point_id
);

/*==============================================================*/
/* Table: reward                                                */
/*==============================================================*/
create table reward
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `certificate_no`        varchar(254) comment '֤����',
   `award_date`            datetime comment '������',
   `award_class`           varchar(254),
   `type_id`               bigint comment '�����',
   `complete_department`   varchar(254),
   `departments_`          varchar(254) comment '�佱����',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table reward comment '����';

/*==============================================================*/
/* Index: reward_index                                          */
/*==============================================================*/
create unique index reward_index on reward
(
   id_
);

/*==============================================================*/
/* Index: reward_name_index                                     */
/*==============================================================*/
create index reward_name_index on reward
(
   name_
);

/*==============================================================*/
/* Index: reward_type_index                                     */
/*==============================================================*/
create index reward_type_index on reward
(
   type_id
);

/*==============================================================*/
/* Table: reward_owner                                          */
/*==============================================================*/
create table reward_owner
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `reward_id`             bigint not null comment '�������',
   `owner_id`              bigint not null comment 'ӵ���߱��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table reward_owner comment '������ӵ���ߣ����ˣ�����';

/*==============================================================*/
/* Index: reward_owner_reward_index                             */
/*==============================================================*/
create index reward_owner_reward_index on reward_owner
(
   reward_id
);

/*==============================================================*/
/* Index: reward_owner_owner_index                              */
/*==============================================================*/
create index reward_owner_owner_index on reward_owner
(
   owner_id
);

/*==============================================================*/
/* Table: reward_type                                           */
/*==============================================================*/
create table reward_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table reward_type comment '������𣺹�����Ȼ��ѧ�����������������Ƽ�����������������У���гɹ�������ѧ������������ƣ���ʡ�����Ƽ�����������������';

/*==============================================================*/
/* Index: reward_type_index                                     */
/*==============================================================*/
create unique index reward_type_index on reward_type
(
   id_
);

/*==============================================================*/
/* Index: reward_type_name_index                                */
/*==============================================================*/
create index reward_type_name_index on reward_type
(
   name_
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `description_`          varchar(1000) comment '��ɫ����',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table role comment '��ɫ';

/*==============================================================*/
/* Index: role_index                                            */
/*==============================================================*/
create unique index role_index on role
(
   id_
);

/*==============================================================*/
/* Index: role_name_index                                       */
/*==============================================================*/
create index role_name_index on role
(
   name_
);

/*==============================================================*/
/* Table: role_authority                                        */
/*==============================================================*/
create table role_authority
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `role_id`               bigint not null comment '��ɫ���',
   `authority_id`          bigint not null comment 'Ȩ�ޱ��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table role_authority comment '��ɫȨ�޹���';

/*==============================================================*/
/* Index: roleauthority_role_index                              */
/*==============================================================*/
create index roleauthority_role_index on role_authority
(
   role_id
);

/*==============================================================*/
/* Index: roleauthority_authority_index                         */
/*==============================================================*/
create index roleauthority_authority_index on role_authority
(
   authority_id
);

/*==============================================================*/
/* Table: school                                                */
/*==============================================================*/
create table school
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `school_profiles`       varchar(10000) comment 'ѧУ�ſ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table school comment 'ѧУ';

/*==============================================================*/
/* Index: school_index                                          */
/*==============================================================*/
create unique index school_index on school
(
   id_
);

/*==============================================================*/
/* Index: school_name_index                                     */
/*==============================================================*/
create index school_name_index on school
(
   name_
);

/*==============================================================*/
/* Table: second_rule_categories                                */
/*==============================================================*/
create table second_rule_categories
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(5000) not null comment '����',
   `spell_`                varchar(5000) comment '���Ƶ�ȫƴ',
   `top_rule_id`           bigint not null comment 'һ��Ŀ¼���',
   `total_score`           bigint comment '��ռ��ֵ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table second_rule_categories comment '���ֶ���Ŀ¼';

/*==============================================================*/
/* Index: second_rule_categories_index                          */
/*==============================================================*/
create unique index second_rule_categories_index on second_rule_categories
(
   id_
);

/*==============================================================*/
/* Index: second_rule_categories_toprule_index                  */
/*==============================================================*/
create index second_rule_categories_toprule_index on second_rule_categories
(
   top_rule_id
);

/*==============================================================*/
/* Table: select_options                                        */
/*==============================================================*/
create table select_options
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `question_type`        tinyint default true comment '��Ŀ����(true:��ѡ, false:��ѡ)',
   `question_id`          bigint comment '��Ŀ���',
   `is_answer`            tinyint default false comment '�Ƿ�Ϊ��(true:��, false:��)',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table select_options comment 'ѡ����ѡ��';

/*==============================================================*/
/* Index: selectoptions_index                                   */
/*==============================================================*/
create unique index selectoptions_index on select_options
(
   id_
);

/*==============================================================*/
/* Index: selectoptions_question_type_index                     */
/*==============================================================*/
create index selectoptions_question_type_index on select_options
(
   question_type
);

/*==============================================================*/
/* Index: selectoptions_question_id_index                       */
/*==============================================================*/
create index selectoptions_question_id_index on select_options
(
   question_id
);

/*==============================================================*/
/* Table: semester                                              */
/*==============================================================*/
create table semester
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `start_date`            datetime not null comment '��ʼ����',
   `end_date`              datetime not null comment '��������',
   `total_Weeks`           bigint comment '������',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table semester comment 'ѧ��';

/*==============================================================*/
/* Index: semester_index                                        */
/*==============================================================*/
create unique index semester_index on semester
(
   id_
);

/*==============================================================*/
/* Index: semester_name_index                                   */
/*==============================================================*/
create index semester_name_index on semester
(
   name_
);

/*==============================================================*/
/* Table: short_answer_question                                 */
/*==============================================================*/
create table short_answer_question
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `answer_`               varchar(10000) comment '�ο���',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               bigint comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   `create_by`             bigint comment '�����û����',
   `update_by`             bigint comment '�����û����',
   primary key (id_)
);

alter table short_answer_question comment '�����';

/*==============================================================*/
/* Index: short_answer_question_index                           */
/*==============================================================*/
create unique index short_answer_question_index on short_answer_question
(
   id_
);

/*==============================================================*/
/* Index: short_answer_question_difficult_degree_index          */
/*==============================================================*/
create index short_answer_question_difficult_degree_index on short_answer_question
(
   difficult_degree
);

/*==============================================================*/
/* Index: short_`answer_`_question_is_required_index               */
/*==============================================================*/
create index short_answer_question_is_required_index on short_answer_question
(
   is_required
);

/*==============================================================*/
/* Index: short_answer_question_section_index                   */
/*==============================================================*/
create index short_answer_question_section_index on short_answer_question
(
   section_id
);

/*==============================================================*/
/* Table: single_select                                         */
/*==============================================================*/
create table single_select
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(2000) not null comment '����',
   `spell_`                varchar(2000) comment '���Ƶ�ȫƴ',
   `difficult_degree`      bigint comment '�Ѷ�ϵ��',
   `is_required`           tinyint default false comment '�Ƿ��ѡ(true:��, false:��)',
   `section_id`            bigint comment '�����½�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table single_select comment '����ѡ����';

/*==============================================================*/
/* Index: single_select_index                                   */
/*==============================================================*/
create unique index single_select_index on single_select
(
   id_
);

/*==============================================================*/
/* Index: single_select_difficult_degree_index                  */
/*==============================================================*/
create index single_select_difficult_degree_index on single_select
(
   difficult_degree
);

/*==============================================================*/
/* Index: single_select_is_required_index                       */
/*==============================================================*/
create index single_select_is_required_index on single_select
(
   is_required
);

/*==============================================================*/
/* Index: single_select_section_index                           */
/*==============================================================*/
create index single_select_section_index on single_select
(
   section_id
);

/*==============================================================*/
/* Table: specialty                                             */
/*==============================================================*/
create table specialty
(
   `id_`                   bigint not null auto_increment comment '���',
   `major_code`            varchar(254),
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `college_id`            bigint not null comment 'ѧԺ���',
   `school_year`           bigint comment 'ѧ��',
   `category_`             varchar(254) comment '���',
   `major_leader_id`       bigint comment '��Ҫ�����˱��',
   `introduction_`         varchar(10000) comment '���',
   `students_number`       bigint comment '��У������',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table specialty comment 'רҵ';

/*==============================================================*/
/* Index: specialty_index                                       */
/*==============================================================*/
create unique index specialty_index on specialty
(
   id_
);

/*==============================================================*/
/* Index: specialty_name_index                                  */
/*==============================================================*/
create index specialty_name_index on specialty
(
   name_
);

/*==============================================================*/
/* Index: specialty_college_index                               */
/*==============================================================*/
create index specialty_college_index on specialty
(
   college_id
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `no_`                   varchar(254) comment 'ѧ��',
   `birthdady_`            date comment '��������',
   `gender_id`             bigint comment '�Ա���',
   `nation_id`             bigint comment '������',
   `political_status_id`   bigint comment '������ò���',
   `college_id`            bigint comment 'ѧԺ���',
   `specialty_id`          bigint comment 'רҵ���',
   `class_own_id`          bigint comment '�༶���',
   `entrance_date`         date comment '��ѧ����',
   `age_`                  int comment '����',
   `idcard_no`             varchar(254) comment '���֤��',
   `phone_`                varchar(254) comment '�绰',
   `email_`                varchar(254) comment '��������',
   `college_enexam_scores` float comment '�߿�����',
   `province_id`           bigint comment 'ʡ���',
   `city_id`               bigint comment '�б��',
   `county_id`             bigint comment '��/�����',
   `town_id`               bigint comment '����',
   `address_`              varchar(254) comment '��ͥסַ',
   `high_school`           varchar(254) comment '�Ͷ�����',
   `high_school_category_id` bigint comment '���������',
   `postgraduate_info_id`  bigint comment '������Ϣ���',
   `head_img_id`           bigint comment 'ͷ��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table student comment 'ѧ��';

/*==============================================================*/
/* Index: student_index                                         */
/*==============================================================*/
create unique index student_index on student
(
   id_
);

/*==============================================================*/
/* Index: student_name_index                                    */
/*==============================================================*/
create index student_name_index on student
(
   name_
);

/*==============================================================*/
/* Index: student_no_index                                      */
/*==============================================================*/
create index student_no_index on student
(
   no_
);

/*==============================================================*/
/* Index: student_college_index                                 */
/*==============================================================*/
create index student_college_index on student
(
   college_id
);

/*==============================================================*/
/* Index: student_specialty_index                               */
/*==============================================================*/
create index student_specialty_index on student
(
   specialty_id
);

/*==============================================================*/
/* Index: student_class_index                                   */
/*==============================================================*/
create index student_class_index on student
(
   class_own_id
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   `id_`                    bigint not null comment '���',
   `job_no`                 varchar(254) comment '����',
   `name_`                  varchar(254) not null comment '����',
   `spell_`                 varchar(254) comment '���Ƶ�ȫƴ',
   `type_`                 varchar(254) comment '��ʦ����׶�԰��ʦ��Сѧ��ʦ��������ѧ��ʦ���߼���ѧ��ʦ���е�ְҵѧУ��ʦ���е�ְҵѧУʵϰָ����ʦ���ߵ�ѧУ��ʦ��',
   `college_id`             bigint comment 'ѧԺ���',
   `entry_data`             date comment '��ְʱ��',
   `research_area`          varchar(254) comment '�о�����',
   `gender_id`              bigint comment '�Ա���',
   `nation_id`              bigint comment '������',
   `political_status_id`    bigint comment '������ò���',
   `certificate_type`       varchar(254) comment '֤������',
   `certificate_no`         varchar(254) comment '֤������',
   `birthday_`              date comment '��������',
   `administrative_post_id` bigint comment '����ְ����',
   `professional_title_id`  bigint comment 'רҵְ�Ʊ��',
   `is_external`            tinyint comment '�Ƿ���Ƹ',
   `terminal_degree`        varchar(254) comment '����ѧλ',
   `undergraduate_major`    varchar(254) comment '����רҵ',
   `gain_time_of_terminal_degree` date comment '����ѧλ��ȡʱ��',
   `gain_time_of_Undergraduate`   date comment '����רҵѧλ��ȡʱ��',
   `bachelor_degree`        varchar(254) comment '����ѧλ����ѧ������ѧ����ѧ������ѧ����ѧ����ʷѧ����ѧ����ѧ��ũѧ��ҽѧ������ѧ������ѧ������ѧ',
   `is_master_tutor`        tinyint default false comment '�Ƿ�˶ʿ��ʦ(true:��, false:��)',
   `is_study_abroad`        tinyint default false comment '�Ƿ�����ѧ(true:��, false:��)',
   `is_academician`         tinyint default false comment '�Ƿ�Ժʿ(true:��, false:��)',
   `is_changjiang_scholar`  tinyint default false comment '�Ƿ񳤽�ѧ��(true:��, false:��)',
   `is_tOYP`                tinyint default false comment '�Ƿ����(true:��, false:��)',
   `is_province_tube_expert` tinyint default false comment '�Ƿ�ʡ��ר��(true:��, false:��)',
   `is_industry_experience`  tinyint default false comment '�Ƿ�����ҵ����(true:��, false:��)',
   `is_practice_train`       tinyint default false comment '�Ƿ���ʵ����ѧ������ѵ(true:��, false:��)',
   `other_honorary_title`   varchar(254) comment '���������ƺ�',
   `phone_`                 varchar(254) comment '�绰',
   `email_`                 varchar(254) comment '��������',
   `individual_resume`      varchar(10000) comment '���˼��',
   `head_img_id`            bigint comment 'ͷ��',
   `create_by`              bigint comment '�����û����',
   `create_time`            datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`              bigint comment '�����û����',
   `update_time`            datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`                int default 1 comment '����',
   `remark_`                varchar(254) comment '��ע',
   `enable_`                tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table teacher comment '��ʦ';

/*==============================================================*/
/* Index: teacher_index                                         */
/*==============================================================*/
create unique index teacher_index on teacher
(
   id_
);

/*==============================================================*/
/* Index: teacher_jobnumber_index                               */
/*==============================================================*/
create index teacher_jobnumber_index on teacher
(
   job_no
);

/*==============================================================*/
/* Index: teacher_name_index                                    */
/*==============================================================*/
create index teacher_name_index on teacher
(
   name_
);

/*==============================================================*/
/* Index: teacher_college_index                                 */
/*==============================================================*/
create index teacher_college_index on teacher
(
   college_id
);

/*==============================================================*/
/* Table: text_book                                             */
/*==============================================================*/
create table text_book
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `chief_editor_id`       bigint comment '������',
   `domain_`               varchar(254) comment '����',
   `publisher_id`          bigint comment '��������',
   `introduction_`         varchar(5000) comment '���',
   `ISBN_`                 varchar(254) comment 'ISBN',
   `is_national_plan`      tinyint default false comment 'Ĭ�ϣ�false��true��',
   `award_situation`       varchar(254) comment '�����',
   `publish_date`          datetime comment '��������',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table text_book comment '�̲�';

/*==============================================================*/
/* Index: text_book_index                                       */
/*==============================================================*/
create unique index text_book_index on text_book
(
   id_
);

/*==============================================================*/
/* Index: text_book_name_index                                  */
/*==============================================================*/
create index text_book_name_index on text_book
(
   name_
);

/*==============================================================*/
/* Index: text_book_chiefEditor_index                           */
/*==============================================================*/
create index text_book_chiefEditor_index on text_book
(
   chief_editor_id
);

/*==============================================================*/
/* Table: text_book_person                                      */
/*==============================================================*/
create table text_book_person
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `text_book_id`          bigint not null comment '�̲ı��',
   `person_id`             bigint not null comment '��Ա���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table text_book_person comment '�̲�����Ա�������ࣩ����';

/*==============================================================*/
/* Index: text_book_person_text_book_index                      */
/*==============================================================*/
create index text_book_person_text_book_index on text_book_person
(
   text_book_id
);

/*==============================================================*/
/* Index: text_book_person_person_index                         */
/*==============================================================*/
create index text_book_person_person_index on text_book_person
(
   person_id
);

/*==============================================================*/
/* Table: thesis                                                */
/*==============================================================*/
create table thesis
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `journal_title`         varchar(254) comment '�ڿ�������������ƶ�ѡһ',
   `conference_name`       varchar(254) comment '��������',
   `publication_year`      datetime not null comment '���',
   `volume_`               bigint comment '��',
   `no_`                   bigint comment '��',
   `pages_`                varchar(254) comment '��ֹҳ��',
   `type_id`               bigint not null comment '���ͱ��',
   `accession_number`      varchar(254) comment '������',
   `is_research_paper`     tinyint default false comment '(true:��, false:��)',
   `impact_Factor`         float comment 'Ӱ�����ӣ���ѡ��Ϣ��',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   `recommend_count`       integer,
   primary key (id_)
);

alter table thesis comment '����';

/*==============================================================*/
/* Index: thesis_index                                          */
/*==============================================================*/
create unique index thesis_index on thesis
(
   id_
);

/*==============================================================*/
/* Index: thesis_name_index                                     */
/*==============================================================*/
create index thesis_name_index on thesis
(
   name_
);

/*==============================================================*/
/* Index: thesis_type_index                                     */
/*==============================================================*/
create index thesis_type_index on thesis
(
   type_id
);

/*==============================================================*/
/* Table: thesis_person                                         */
/*==============================================================*/
create table thesis_person
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `thesis_id`             bigint not null comment '���ı��',
   `person_id`             bigint not null comment '��Ա���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table thesis_person comment '��������Ա�����ߣ�����';

/*==============================================================*/
/* Index: thesis_person_thesis_index                            */
/*==============================================================*/
create index thesis_person_thesis_index on thesis_person
(
   thesis_id
);

/*==============================================================*/
/* Index: thesis_person_person_index                            */
/*==============================================================*/
create index thesis_person_person_index on thesis_person
(
   person_id
);

/*==============================================================*/
/* Table: thesis_type                                           */
/*==============================================================*/
create table thesis_type
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table thesis_type comment '���Ա������ĵ����ͣ����磺��ͨ���ġ��Ƽ����ġ����ĺ��ġ�ISTP��EI��SCI��';

/*==============================================================*/
/* Index: thesis_type_index                                     */
/*==============================================================*/
create unique index thesis_type_index on thesis_type
(
   id_
);

/*==============================================================*/
/* Index: thesis_type_name_index                                */
/*==============================================================*/
create index thesis_type_name_index on thesis_type
(
   name_
);

/*==============================================================*/
/* Table: Third_rule_categories                                 */
/*==============================================================*/
create table Third_rule_categories
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(5000) not null comment '����',
   `spell_`                varchar(5000) comment '���Ƶ�ȫƴ',
   `second_rule_id`        bigint not null comment '����Ŀ¼���',
   `total_score`           int comment '��ռ��ֵ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table Third_rule_categories comment '��������Ŀ¼';

/*==============================================================*/
/* Index: second_rule_categories_index                          */
/*==============================================================*/
create unique index second_rule_categories_index on Third_rule_categories
(
   id_
);

/*==============================================================*/
/* Table: top_rule_categories                                   */
/*==============================================================*/
create table top_rule_categories
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(5000) not null comment '����',
   `spell_`                varchar(5000) comment '���Ƶ�ȫƴ',
   `year_`                 int not null comment '���',
   `total_score`           int comment '��ռ��ֵ',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table top_rule_categories comment '����һ��Ŀ¼';

/*==============================================================*/
/* Index: top_rule_categories_index                             */
/*==============================================================*/
create unique index top_rule_categories_index on top_rule_categories
(
   id_
);

/*==============================================================*/
/* Index: top_rule_categories_year_index                        */
/*==============================================================*/
create index top_rule_categories_year_index on top_rule_categories
(
   year_
);

/*==============================================================*/
/* Table: town                                                  */
/*==============================================================*/
create table town
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `county_id`             bigint not null comment '���ر��',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table town comment '��';

/*==============================================================*/
/* Index: town_index                                            */
/*==============================================================*/
create unique index town_index on town
(
   id_
);

/*==============================================================*/
/* Index: town_name_index                                       */
/*==============================================================*/
create index town_name_index on town
(
   name_
);

/*==============================================================*/
/* Index: town_county_index                                     */
/*==============================================================*/
create index town_county_index on town
(
   county_id
);

/*==============================================================*/
/* Table: treatises                                             */
/*==============================================================*/
create table treatises
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) not null comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `author_id`             bigint comment '���߱��',
   `domain_`               varchar(254) comment '����',
   `publisher_id`          bigint comment '��������',
   `introduction_`         varchar(254) comment '���',
   `ISBN_`                 varchar(254) comment 'ISBN',
   `publish_date`          date comment '��������',
   `attachment_id`         bigint comment '�����ĵ�',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table treatises comment 'ר��';

/*==============================================================*/
/* Index: treatises_index                                       */
/*==============================================================*/
create unique index treatises_index on treatises
(
   id_
);

/*==============================================================*/
/* Index: treatises_name_index                                  */
/*==============================================================*/
create index treatises_name_index on treatises
(
   name_
);

/*==============================================================*/
/* Index: treatises_author_index                                */
/*==============================================================*/
create index treatises_author_index on treatises
(
   author_id
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `source_of_user`        bigint not null default 0 comment '�û���Դ��0��ѧ����1����ʦ��2��ר�ң�',
   `user_entity_id`        bigint not null comment '�û�ʵ����',
   `login_name`            varchar(254) comment '�ʺ�',
   `password_`             varchar(254) not null comment '����MD5(����+��)',
   `salt_`                 varchar(254) not null comment '��',
   `head_img_id`           bigint default 0 comment 'ͷ��',
   `phone_`                varchar(254) comment '�绰',
   `email_`                varchar(254) comment '����',
   `gender_id`             bigint comment '�Ա�',
   `is_locked`             tinyint not null comment '״̬(true:����, false:��ֹ)',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table user comment '�û�';

/*==============================================================*/
/* Index: user_index                                            */
/*==============================================================*/
create unique index user_index on user
(
   id_
);

/*==============================================================*/
/* Index: user_name_index                                       */
/*==============================================================*/
create index user_name_index on user
(
   name_
);

/*==============================================================*/
/* Index: user_userName_index                                   */
/*==============================================================*/
create index user_userName_index on user
(
   login_name
);

/*==============================================================*/
/* Index: user_entity_index                                     */
/*==============================================================*/
create index user_entity_index on user
(
   user_entity_id
);

/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   `id_`                   bigint not null auto_increment comment '���',
   `name_`                 varchar(254) comment '����',
   `spell_`                varchar(254) comment '���Ƶ�ȫƴ',
   `user_id`               bigint not null comment '�û����',
   `role_id`               bigint not null comment '��ɫ���',
   `create_by`             bigint comment '�����û����',
   `create_time`           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `update_by`             bigint comment '�����û����',
   `update_time`           datetime not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   `sort_no`               int default 1 comment '����',
   `remark_`               varchar(254) comment '��ע',
   `enable_`               tinyint default 1 comment '�Ƿ����(true:��, false:��)',
   primary key (id_)
);

alter table user_role comment '�û���ɫ����';

/*==============================================================*/
/* Index: user_role_user_index                                  */
/*==============================================================*/
create index user_role_user_index on user_role
(
   user_id
);

/*==============================================================*/
/* Index: user_role_role_index                                  */
/*==============================================================*/
create index user_role_role_index on user_role
(
   role_id
);

alter table answer_for_completion add constraint fk_answer_for_completion_completion_reference foreign key (completion_id)
      references completion (id_) on delete cascade on update cascade;

alter table attachment add constraint fk_attachment_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table attachment_type add constraint fk_attachment_type_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table attachment_type add constraint fk_attachment_type_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table attachment add constraint fk_attachment_type_reference foreign key (type_id)
      references attachment_type (id_) on delete cascade on update cascade;

alter table attachment add constraint fk_attachment_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete restrict on update restrict;


alter table authority add constraint fk_authority_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table authority add constraint fk_authority_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table book_resource add constraint fk_book_resource_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table book_resource add constraint fk_book_resource_publisher_reference foreign key (publisher_id)
      references publisher (id_) on delete restrict on update restrict;

alter table book_resource add constraint fk_book_resource_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete restrict on update restrict;

alter table book_resource add constraint fk_book_resource_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table CEE_annual_score add constraint fk_cEEAnnual_score_batch_reference foreign key (batch_id)
      references batch (id_) on delete cascade on update cascade;

alter table CEE_annual_score add constraint fk_cEEAnnual_score_examinee_category_reference foreign key (category_id)
      references examinee_category (id_) on delete cascade on update cascade;

alter table CEE_annual_score add constraint fk_cEEAnnual_score_province_reference foreign key (province_id)
      references province (id_) on delete cascade on update cascade;

alter table certificate add constraint fk_certificate_owner_reference foreign key (owner_id)
      references owner (id_) on delete restrict on update restrict;

alter table chapter_and_sections add constraint fk_chapter_and_sections_course_reference foreign key (course_id)
      references course (id_) on delete cascade on update cascade;

alter table city add constraint fk_city_province_reference foreign key (province_id)
      references province (id_) on delete cascade on update cascade;

alter table class add constraint fk_class_teacher_reference foreign key (adviser_id)
      references teacher (id_) on delete set null on update cascade;

alter table class add constraint fk_monitorstudent_class_reference foreign key (monitor_id)
      references student (id_) on delete set null on update cascade;

alter table class add constraint fk_secretarystudent_class_reference foreign key (secretary_id)
      references student (id_) on delete set null on update cascade;

alter table class add constraint fk_specialty_class_reference foreign key (specialty_id)
      references specialty (id_) on delete cascade on update cascade;

alter table college add constraint fk_school_college_reference foreign key (school_id)
      references school (id_) on delete cascade on update cascade;

alter table completion add constraint fk_completion_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table content add constraint fk_content_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table content add constraint fk_content_professor_reference foreign key (professor_id)
      references professor (id_) on delete restrict on update restrict;

alter table content add constraint fk_content_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table content_detailed_grading_item add constraint fk_content_detailed_grading_item_content_reference foreign key (content_id)
      references content (id_) on delete restrict on update restrict;

alter table content_detailed_grading_item add constraint fk_content_detailed_grading_item_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table content_detailed_grading_item add constraint fk_content_detailed_grading_item_detailed_grading_item_reference foreign key (detailed_grading_item_id)
      references detailed_grading_item (id_) on delete restrict on update restrict;

alter table content_detailed_grading_item add constraint fk_content_detailed_grading_item_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table copyright add constraint fk_copyright_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table copyright_owner add constraint fk_copyright_owner_copyright_reference foreign key (copyright_no)
      references copyright (id_) on delete cascade on update cascade;

alter table copyright_owner add constraint fk_copyright_owner_owner_reference foreign key (owner_id)
      references owner (id_) on delete cascade on update cascade;

alter table county add constraint fk_city_county_reference foreign key (city_id)
      references city (id_) on delete cascade on update cascade;

alter table course add constraint fk_course_course_type_reference foreign key (type_id)
      references course_type (id_) on delete cascade on update cascade;

alter table course add constraint fk_course_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete cascade on update cascade;

alter table course_teaching add constraint fk_course_teaching_class_reference foreign key (lecturer_id)
      references class (id_) on delete set null on update cascade;

alter table course_teaching add constraint fk_course_teaching_counselor_reference foreign key (counselor_id)
      references teacher (id_) on delete set null on update cascade;

alter table course_teaching add constraint fk_course_teaching_course_material_reference foreign key (course_material_id)
      references course_material (id_) on delete set null on update cascade;

alter table course_teaching add constraint fk_course_teaching_course_reference foreign key (course_id)
      references course (id_) on delete set null on update cascade;

alter table course_teaching add constraint fk_course_teaching_semester_reference foreign key (semester_id)
      references semester (id_) on delete set null on update cascade;

alter table course_teaching add constraint fk_course_teaching_tutor_reference foreign key (tutor_id)
      references teacher (id_) on delete set null on update cascade;

alter table detailed_grading_item add constraint fk_detailed_grading_item_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table detailed_grading_item add constraint fk_detailed_grading_item_third_rule_categories_reference foreign key (third_rule_id)
      references Third_rule_categories (id_) on delete restrict on update restrict;

alter table detailed_grading_item add constraint fk_detailed_grading_item_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table education_program add constraint fk_education_program_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table education_program add constraint fk_education_program_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete cascade on update cascade;

alter table employment_situation add constraint fk_employment_situation_student_reference foreign key (student_id)
      references student (id_) on delete cascade on update cascade;

alter table equipment add constraint fk_equipment_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table equipment add constraint fk_equipment_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete restrict on update restrict;

alter table equipment add constraint fk_equipment_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table judgment add constraint fk_judgment_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table multi_select add constraint fk_multi_select_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table owner add constraint fk_owner_college_reference foreign key (college_id)
      references college (id_) on delete cascade on update cascade;

alter table owner add constraint fk_owner_school_reference foreign key (school_id)
      references school (id_) on delete cascade on update cascade;

alter table owner add constraint fk_owner_student_reference foreign key (student_id)
      references student (id_) on delete cascade on update cascade;

alter table owner add constraint fk_owner_teacher_reference foreign key (teacher_id)
      references teacher (id_) on delete cascade on update cascade;

alter table patent add constraint fk_patent_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table patent add constraint fk_patent_patent_type_reference foreign key (patent_type_id)
      references patent_type (id_) on delete cascade on update cascade;

alter table patent_inventor_owner add constraint fk_patent_inventor_owner_owner_reference foreign key (owner_id)
      references owner (id_) on delete cascade on update cascade;

alter table patent_inventor_owner add constraint fk_patent_inventor_owner_patent_reference foreign key (patent_no)
      references patent (id_) on delete cascade on update cascade;

alter table project add constraint fk_peoject_owner_reference foreign key (leader_id)
      references owner (id_) on delete cascade on update cascade;

alter table project add constraint fk_peoject_peojectType_reference foreign key (type_id)
      references project_type (id_) on delete cascade on update cascade;

alter table project add constraint fk_project_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table project_owner add constraint fk_peoject_owner_owner_reference foreign key (owner_id)
      references owner (id_) on delete cascade on update cascade;

alter table project_owner add constraint fk_peoject_owner_peoject_reference foreign key (peoject_id)
      references project (id_) on delete cascade on update cascade;

alter table person add constraint fk_person_student_reference foreign key (student_id)
      references student (id_) on delete cascade on update cascade;

alter table person add constraint fk_person_teacher_reference foreign key (teacher_id)
      references teacher (id_) on delete cascade on update cascade;

alter table postgraduate_situation add constraint fk_postgraduate_situation_student_reference foreign key (student_id)
      references student (id_) on delete cascade on update cascade;

alter table practice_basement add constraint fk_practice_basement_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table practice_basement add constraint fk_practice_basement_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete restrict on update restrict;

alter table practice_basement add constraint fk_practice_basement_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table professor add constraint fk_professor_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table professor add constraint fk_professor_gender_reference foreign key (gender_id)
      references gender (id_) on delete cascade on update cascade;

alter table professor add constraint fk_professor_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table program add constraint fk_program_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table question_knowledge_point add constraint fk_question_and_knowledge_point_reference foreign key (knowledge_point_id)
      references knowledge_point (id_) on delete cascade on update cascade;

alter table reward add constraint fk_reward_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table reward add constraint fk_reward_reward_type_reference foreign key (type_id)
      references reward_type (id_) on delete cascade on update cascade;

alter table reward_owner add constraint fk_reward_owner_owner_reference foreign key (owner_id)
      references owner (id_) on delete cascade on update cascade;

alter table reward_owner add constraint fk_reward_owner_reward_reference foreign key (reward_id)
      references reward (id_) on delete cascade on update cascade;

alter table role add constraint fk_role_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table role add constraint fk_role_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table role_authority add constraint fk_roleauthority_authority_reference foreign key (authority_id)
      references authority (id_) on delete cascade on update cascade;

alter table role_authority add constraint fk_roleauthority_role_reference foreign key (role_id)
      references role (id_) on delete cascade on update cascade;

alter table role_authority add constraint fk_role_authority_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table role_authority add constraint fk_role_authority_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table second_rule_categories add constraint fk_secondrule_toprule_reference foreign key (top_rule_id)
      references top_rule_categories (id_) on delete cascade on update cascade;

alter table second_rule_categories add constraint fk_second_rule_categories_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table second_rule_categories add constraint fk_second_rule_categories_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table short_answer_question add constraint fk_short_answer_question_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table single_select add constraint fk_single_select_chapter_and_sections_reference foreign key (section_id)
      references chapter_and_sections (id_) on delete cascade on update cascade;

alter table specialty add constraint fk_college_specialty_reference foreign key (college_id)
      references college (id_) on delete cascade on update cascade;

alter table specialty add constraint fk_specialtyteacher_reference foreign key (major_leader_id)
      references teacher (id_) on delete set null on update cascade;

alter table student add constraint fk_student_attachment_reference foreign key (head_img_id)
      references attachment (id_) on delete cascade on update cascade;

alter table student add constraint fk_student_city_reference foreign key (city_id)
      references city (id_) on delete set null on update cascade;

alter table student add constraint fk_student_class_reference foreign key (class_own_id)
      references class (id_) on delete set null on update cascade;

alter table student add constraint fk_student_college_reference foreign key (college_id)
      references college (id_) on delete cascade on update cascade;

alter table student add constraint fk_student_county_reference foreign key (county_id)
      references county (id_) on delete set null on update cascade;

alter table student add constraint fk_student_gender_reference foreign key (gender_id)
      references gender (id_) on delete set null on update cascade;

alter table student add constraint fk_student_high_school_category_reference foreign key (id_)
      references high_school_category (id_) on delete restrict on update restrict;

alter table student add constraint fk_student_nation_reference foreign key (nation_id)
      references nation (id_) on delete set null on update cascade;

alter table student add constraint fk_student_political_status_reference foreign key (political_status_id)
      references political_status (id_) on delete set null on update cascade;

alter table student add constraint fk_student_province_reference foreign key (province_id)
      references province (id_) on delete set null on update cascade;

alter table student add constraint fk_student_specialty_reference foreign key (specialty_id)
      references specialty (id_) on delete cascade on update cascade;

alter table student add constraint fk_student_town_reference foreign key (town_id)
      references town (id_) on delete set null on update cascade;

alter table teacher add constraint fk_teacher_administrative_post_reference foreign key (administrative_post_id)
      references administrative_post (id_) on delete set null on update cascade;

alter table teacher add constraint fk_teacher_attachment_reference foreign key (head_img_id)
      references attachment (id_) on delete cascade on update cascade;

alter table teacher add constraint fk_teacher_college_reference foreign key (college_id)
      references college (id_) on delete cascade on update cascade;

alter table teacher add constraint fk_teacher_gender_reference foreign key (gender_id)
      references gender (id_) on delete set null on update cascade;

alter table teacher add constraint fk_teacher_nation_reference foreign key (nation_id)
      references nation (id_) on delete set null on update cascade;

alter table teacher add constraint fk_teacher_political_status_reference foreign key (political_status_id)
      references political_status (id_) on delete set null on update cascade;

alter table teacher add constraint fk_teacher_professional_title_reference foreign key (professional_title_id)
      references professional_title (id_) on delete set null on update cascade;

alter table text_book add constraint fk_text_book_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table text_book add constraint fk_text_book_person_reference foreign key (chief_editor_id)
      references person (id_) on delete cascade on update cascade;

alter table text_book add constraint fk_text_book_publisher_reference foreign key (publisher_id)
      references publisher (id_) on delete cascade on update cascade;

alter table text_book_person add constraint fk_text_book_person_person_reference foreign key (person_id)
      references person (id_) on delete cascade on update cascade;

alter table text_book_person add constraint fk_text_book_person_text_book_reference foreign key (text_book_id)
      references text_book (id_) on delete cascade on update cascade;

alter table thesis add constraint fk_thesis_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table thesis add constraint fk_thesis_thesis_type_reference foreign key (type_id)
      references thesis_type (id_) on delete cascade on update cascade;

alter table thesis_person add constraint fk_thesis_person_person_reference foreign key (person_id)
      references person (id_) on delete cascade on update cascade;

alter table thesis_person add constraint fk_thesis_person_thesis_reference foreign key (thesis_id)
      references thesis (id_) on delete cascade on update cascade;

alter table Third_rule_categories add constraint fk_thirdrule_secondrule_reference foreign key (second_rule_id)
      references second_rule_categories (id_) on delete restrict on update restrict;

alter table Third_rule_categories add constraint fk_third_rule_categories_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table Third_rule_categories add constraint fk_third_rule_categories_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table top_rule_categories add constraint fk_top_rule_categories_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table top_rule_categories add constraint fk_top_rule_categories_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table town add constraint fk_town_county_reference foreign key (county_id)
      references county (id_) on delete cascade on update cascade;

alter table treatises add constraint fk_treatises_attachment_reference foreign key (attachment_id)
      references attachment (id_) on delete cascade on update cascade;

alter table treatises add constraint fk_treatises_publisher_reference foreign key (publisher_id)
      references publisher (id_) on delete cascade on update cascade;

alter table treatises add constraint fk_treatises_teacher_reference foreign key (author_id)
      references teacher (id_) on delete cascade on update cascade;

alter table user add constraint fk_userHeadImg_attachment_reference foreign key (head_img_id)
      references attachment (id_) on delete cascade on update cascade;

alter table user add constraint fk_user_professor_reference foreign key (source_of_user)
      references professor (id_) on delete restrict on update restrict;

alter table user add constraint fk_user_student_reference foreign key (source_of_user)
      references student (id_) on delete restrict on update restrict;

alter table user add constraint fk_user_teacher_reference foreign key (source_of_user)
      references teacher (id_) on delete restrict on update restrict;

alter table user_role add constraint fk_user_role_createByuser_reference foreign key (create_by)
      references user (id_) on delete cascade on update cascade;

alter table user_role add constraint fk_user_role_role_reference foreign key (role_id)
      references role (id_) on delete cascade on update cascade;

alter table user_role add constraint fk_user_role_UpdateByuser_reference foreign key (update_by)
      references user (id_) on delete cascade on update cascade;

alter table user_role add constraint fk_user_role_user_reference foreign key (user_id)
      references user (id_) on delete cascade on update cascade;
      
commit; 