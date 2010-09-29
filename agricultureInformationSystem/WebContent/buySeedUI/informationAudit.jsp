<link href="../images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.jbpm.api.*,org.jbpm.api.task.*,buySeedDao.finalList" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId = request.getParameter("id");
	Task task = taskService.getTask(taskId);
	finalList fl=new finalList().getLastFinalList();
%>    
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="../images/mail_leftbg.gif"><img src="../images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="../images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">欢迎界面</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="../images/mail_rightbg.gif"><img src="../images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="../images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">
              <fieldset>
    <legend align="center">采购信息审核</legend>
    <form action="submitInformationAudit.jsp" method="post">
      任务编号：<input type="text" name="taskId" value="<%=taskId %>"/><br><br>
      
      采购清单：<br>&nbsp; <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      种子类型：<input type="text" name="seedName" value="<%=fl.getSeedName()%>">&nbsp; 种子数量：<input type="text" name="seedCount" value="<%=fl.getSeedCount()%>"><br>

<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 配料名称：<input type="text" name="materialName" value="<%=fl.getMaterialName()%>"/>&nbsp; 配料数量：<input type="text" name="materialCount" value="<%=fl.getMaterialCount()%>"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 配料价格：<input type="text" name="materialPrice" value="<%=fl.getMaterialPrice()%>"> <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <input name="result" type="submit" value="调整采购信息"/> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;    <input type="submit" value="审核通过" name="result"/>
    </form>
  </fieldset>
        <br><br><br><br><br><br><br><br><br><br><br></span>     

      </tr>
      
    </table>
    </td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>

</table>
  
</body>
</html>