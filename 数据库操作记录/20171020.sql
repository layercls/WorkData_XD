use ksoa;

select * from zhiydoc where dzyname in ('朱水金','叶春生','潘国林')

update zhiydoc set lgnname = '',is_czy = '否' where dzyname in ('朱水金','叶春生','潘国林')

select * from zhiydoc where dzyname = '黄春发'
