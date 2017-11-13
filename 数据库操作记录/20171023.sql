use ksoa;

select dzyname as '姓名',beactive as '账号是否存在',is_ywy as '是否业务员',is_czy as '是否操作员',rszht as '在职状态' from zhiydoc where dzyname = '吕伟'