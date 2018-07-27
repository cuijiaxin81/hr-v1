<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<!--设置视口，只在移动端浏览器下生效，设置视口宽度=当前手机设备宽度，默认缩放1，用户不允许手动缩放-->
		<meta name="viewport" content="width=width-device,initial-scale=1.0,user-scalable=no"/>
		<meta charset="UTF-8">
		<title></title>
		<!--引入bootstrap的核心css-->
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
	</head>
	<body>
		
		<div class="container">
			
			<ol class="breadcrumb">
				<li><a href="#">人力资源管理系统</a></li>
				<li><a href="#">部门管理</a></li>				
				<li>查询部门数据</li>
			</ol>
			
			<h2 class="page-header">部门数据列表</h2>
			
			<table id="dataTable" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>部门编号</th>
						<th>部门名称</th>
						<th>部门地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dept">
					<tr>
						<td>${dept.deptId }</td>
						<td>${dept.deptName }</td>
						<td>${dept.deptLoc }</td>
						<td>
							<a href="GetDeptServlet?deptId=${dept.deptId }" class="btn btn-primary btn-sm update-btn">修改</a>
							<a href="DeleteDeptServlet?deptId=${dept.deptId }" class="btn btn-danger btn-sm del-btn">删除</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>				
			</table>
			
			<div class="row">
				<div class="col-sm-offset-8 col-sm-4">
					<a href="AddDept.html" class="btn btn-success btn-block">增加新部门</a>
				</div>
			</div>
			
		</div>
		
		<!--引入jquery-->
		<script type="text/javascript" src="js/jquery.js" ></script>
		<!--引入全局js-->
		<script src="js/global.js"></script>
		<!--引入bootstrap.js，实现js功能-->
		<script type="text/javascript" src="js/bootstrap/js/bootstrap.js" ></script>
		<!--引入layer层-->
		
	</body>
</html>