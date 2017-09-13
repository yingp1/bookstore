<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();

	   int a=0;
	   int b=0;
	       
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="javascript">
            function back1()
	        {
	           window.history.go(-1);
	        }
	        
	        function dd()
	        {
	            var odderFukuangfangshi=document.f.odderFukuangfangshi.value;
	            //alert(odderFukuangfangshi);
	            if(odderFukuangfangshi=="在线付款")
	            {
	                 document.getElementById("qufukuan").style.display="block";
	            }
	            if(odderFukuangfangshi=="货到付款")
	            {
	                 document.getElementById("qufukuan").style.display="none";
	            }
	        }
	        
	        function kahao()
	        {
	            var strUrl = "<%=path %>/qiantai/order/kahao.jsp";
				var ret = window.showModalDialog(strUrl,"","dialogWidth:700px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	        }
	    
	        
	        function jiancha(userOne6,zongjia)
	        {	
	       
	        	
	        	if(document.f.odderSonghuodizhi.value=="")
	        	{
	        	alert("送货地址不能为空！")
	        	return false;
	        	}
	        	if(document.f.odderFukuangfangshi.value=="在线付款" && userOne6>=zongjia)
	        	{
	        	alert("支付成功。")
	        	document.f.submit();
	        	}
	        	else if(document.f.odderFukuangfangshi.value=="在线付款" && userOne6<zongjia)
	        	//if(document.f.odderFukuangfangshi.value=="在线付款" && document.getElementById("userOne6").value>document.getElementById("zongjia").value)
	        	{
	        		alert("余额不足，请先充值。")
	        		return false;
	        	
	        	}
	        	else
	        	{
	        	document.f.submit();
	        	}
	        	
	        }
    </script>
  </head>
  
  <body>
<!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度-->
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
<!-- head-->
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">订单确认</div>
					</div>
					<div class="Slot">
						<form action="<%=path %>/orderSubmit.action" name="f" method="post">
		                        <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人帐号：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userName"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人姓名：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userRealname"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人联系电话：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userTel"/>"/>
					                  </td>
					              </tr>
					               <tr  align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">注册地址：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userAddress"/>"/>
					               </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">送货地址：</td>
					                  <td width="80%" align="left"><input type="text" name="odderSonghuodizhi"/>
					                  <input type="hidden" id="userOne6" name="userOne6" value="${sessionScope.user.userOne6}"/>
					                  <input type="hidden" id="zongjia" name="zongjia" value="${sessionScope.cart.totalPrice}"/></td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">付款方式：</td>
					                  <td width="80%" align="left">
		   		                          <select name="odderFukuangfangshi" style="width:155px;" onchange="dd()">
		   		                              <option selected value="货到付款" >货到付款</option>
		   		                              <option value="在线付款">在线付款</option>
		   		                          </select>
		   		                          <input type="button" onclick="kahao()"  id="qufukuan" style="display: none" value="查看支付信息"/>
		                              </td>
					              </tr>
		        				</table>
		        				<table>
		        				   <tr height="7"><td></td></tr>
				                   <tr>
				                       <td><a href="#" onclick="back1()"><img border="0" src="<%=path %>/img/back.jpg"/></a></td>
				                       <td><img border="0" src="<%=path %>/img/orderSub.jpg" onclick="jiancha(<s:property value="#session.user.userOne6"/>,<s:property value="#session.cart.totalPrice"/>)"/></td>
				                   </tr>
				               </table>
				        </form>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>