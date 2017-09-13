var t;
t=outlookbar.addtitle('系统属性')
outlookbar.additem('系统属性',t,'/book/admin/index/sysPro.jsp')


t=outlookbar.addtitle('修改密码')
outlookbar.additem('密码修改',t,'/book/admin/userinfo/userPw.jsp')


t=outlookbar.addtitle('用户管理')
outlookbar.additem('用户管理',t,'/book/userMana.action')

t=outlookbar.addtitle('图书类别')
outlookbar.additem('类别管理',t,'/book/catelogMana.action')
outlookbar.additem('添加类别',t,'/book/admin/catelog/catelogAdd.jsp')

t=outlookbar.addtitle('图书管理')
outlookbar.additem('图书管理',t,'/book/goodsManaNoTejia.action')
outlookbar.additem('添加图书',t,'/book/admin/goods/goodsNoTejiaAdd.jsp')


t=outlookbar.addtitle('订单管理')
outlookbar.additem('订单管理',t,'/book/orderMana.action')

t=outlookbar.addtitle('网站论坛')
outlookbar.additem('网站论坛',t,'/book/liuyanMana.action')


t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/book/login.jsp')