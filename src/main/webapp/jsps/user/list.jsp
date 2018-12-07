<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>
	<style type="text/css">
		th{
			text-align: center;
		}
	</style>
</head>
<body>
      <center>
           <h1>学员信息表</h1>
           	<td><a class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="add" onclick="add()"><span class="glyphicon glyphicon-plus">新增</span></a></td>
             <table  border="1"  cellspacing="5" >
                   <tr>
                       <th>id</th>
                       <th>姓名</th>
                       <th>性別</th>
                       <th>出生年月</th>
                       <th>qq</th>
                       <th>城市</th>
                       <th>成绩</th>
                       <th>就业</th>
                       <th>职位</th>
                       <th colspan="2">操作</th>
                   </tr>
                   <c:forEach items="${empList}" var="emp">
                       <tr>
                         <td>${emp.userid}</td>
                         <td>${emp.username}</td>
                         <td>${emp.sex}</td>
                         <td>${emp.birthday}</td>
                         <td>${emp.qq}</td>
                         <td>${emp.city}</td>
                         <td style="color: green;">${emp.exam}</td>
                         <td>${emp.company}</td>
                         <td>${emp.engineer}</td>
                         
                         <td><a class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="edit" onclick="update('${emp.userid}','${emp.username}','${emp.sex}','${emp.birthday}','${emp.qq}','${emp.city}','${emp.exam}','${emp.company}','${emp.engineer}')">
                         		<span class="glyphicon glyphicon-pencil">修改</span></a></td>
                         <td><a class="btn btn-primary" id="remove" onclick="remove(${emp.userid })"><span class="glyphicon glyphicon-trash">删除</span></a></td>
                       </tr>
                   </c:forEach>
             </table>
             
             <!-- 模态框 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
							</h4>
						</div>
							<form id="myForm"  method="post">
						<div class="modal-body">
							<input type="hidden" id="userid" name="userid">
							姓名：<input type="text" name="username" id="username" value="${emp.username}" ><br>
							性別：<input type="text" name="sex" id="sex" value="${emp.sex}" ><br>
							年月：<input type="text" name="birthday" id="birthday" value="${emp.birthday}"  ><br>
							联系：<input type="text" name="qq" id="qq" value="${emp.qq}"  ><br>
							城市：<input type="text" name="city" id="city" value="${emp.city}"  ><br>
						 	成绩：<input type="text" name="exam" id="exam" value="${emp.exam}"  ><br>
						  	公司：<input type="text" name="company" id="company"  value="${emp.company}" ><br>
							职位：<input type="text" name="engineer" id="engineer"  value="${emp.engineer}" ><br>
						</div>
						<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								<button type="submit" class="btn btn-primary">提交更改</button>
						</div>
							</form>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
      </center>
      
      <script type="text/javascript">
            function add() {
            	$("input").val("");
				$("#myForm").attr("action","add.action");
				$(".modal-title").text("新增用戶");
			}
            function update(userid,username,sex,birthday,qq,city,exam,company,engineer) {
            	$("#myForm").attr("action","update.action");
				$(".modal-title").text("修改用戶");
				$("#userid").val(userid);
				$("#username").val(username);
				$("#sex").val(sex);
				$("#birthday").val(birthday);
				$("#qq").val(qq);
				$("#city").val(city);
				$("#exam").val(exam);
				$("#company").val(company);
				$("#engineer").val(engineer);
			}
            function remove(userid) {
				window.location.href="remove.action?userid="+userid;
			}
      </script>
	
	
	
</body>
</html>