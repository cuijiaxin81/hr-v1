<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li>修改部门</li>
			</ol>
			
			<h2 class="page-header">修改部门</h2>
			
			<form id="form1" class="form-horizontal" action="UpdateDeptServlet" method="post">
				<div class="form-group">
					<label for="" class="col-sm-2">部门名称</label>
					<div class="col-sm-8">
						<input type="text" value="${dept.deptName }" id="deptName" name="deptName" placeholder="请输入部门名称" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-sm-2">部门地址</label>
					<div class="col-sm-8">
						<input type="text" value="${dept.deptLoc }" id="deptLoc" name="deptLoc" placeholder="请输入部门地址" class="form-control" />
					</div>
				</div>
				<div class="form-group">					
					<div class="col-sm-offset-2 col-sm-8">
						<input type="hidden" id="deptId" name="deptId" value="${dept.deptId }" />
						<input type="submit" value="修改部门" class="btn btn-success" id="updateBtn" />
						<input type="button" value="取消" class="btn btn-danger" onclick="history.back();" />
					</div>
				</div>
			</form>
			
		</div>
		
		<!--引入jquery-->
		<script type="text/javascript" src="js/jquery.js" ></script>
		<!--引入全局js-->
		<script src="js/global.js"></script>
		<!--引入bootstrap.js，实现js功能-->
		<script type="text/javascript" src="js/bootstrap/js/bootstrap.js" ></script>
		<!--引入layer层-->
		<script src="js/layer/layer.js"></script>
		<!--引入参数js-->
		<script src="js/param.js"></script>
		
		<script>						
								
				/**
				 * 表单验证函数
				 */
				function checkForm() {
					
					var deptName = $('#deptName');
					var deptLoc = $('#deptLoc');
					
					//验证部门名称
					if (deptName.val() == "" || deptName.val().length > 10) {
						alert('部门名称不能为空且最多10个字符');
						deptName.focus();
						return false;
					}
					
					//验证部门地址
					if (deptLoc.val() == "" || deptLoc.val().length > 20) {
						alert('部门地址不能为空且最多20个字符');
						deptLoc.focus();
						return false;
					}
					
					return true;
				}				
					
		</script>
	</body>
</html>