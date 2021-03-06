<%--
  Created by IntelliJ IDEA.
  User: FLcolin
  Date: 2017/7/11
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Bootstrap Admin Template : Two Page</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="asserts/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="asserts/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="asserts/css/custom.css" rel="stylesheet" />
    
    <link href="asserts/css/customize_style/index.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
    <script type="text/javascript" src="asserts/js/jquery-1.12.3.min.js"></script>
</head>
<body>
<div class="container-fluid">
			<div class="row-fluie">
				<div class="col-sm-3 col-md-2 sidebar">		
					<ul class="nav nav-sidebar">
						<!-- 一级菜单 -->
						
						
						
						<li class="active"><a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-user"></i>&nbsp; 员工管理 <span class="sr-only">(current)</span></a>
						</li> 
						<!-- 二级菜单 -->
						<!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->
						<ul id="userMeun" class="nav nav-list collapse menu-second">
							<li><a href="emp/roleadd.jsp" target="mainFrame"><i class="fa fa-users"></i> 入职管理</a></li>
							<li><a href="emp/listpart.action" target="mainFrame"><i class="fa fa-users"></i> 在职管理</a></li>
							<li><a href="pro/pro_listpro.action" target="mainFrame"><i class="fa fa-users"></i> 试用员工</a></li>
						</ul>
						 
						<li><a href="#productMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-globe"></i>&nbsp; 岗位管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="productMeun" class="nav nav-list collapse menu-second">
							<li><a href="posts/posts_listpost.action" target="mainFrame"><i class="fa fa-list-alt"></i> 岗位列表</a></li>
							<li><a href="posts/posts_listTransfer.action" target="mainFrame"><i class="fa fa-list-alt"></i> 岗位调动</a></li>
						</ul>
						
						<li><a href="#departMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-file-text"></i>&nbsp; 部门管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="departMeun" class="nav nav-list collapse menu-second">
							<li><a href="dept/dept_listDpt.action" target="mainFrame"><i class="fa fa-list"></i> 部门列表</a></li>
							<li><a href="dept/dept_listTransfer.action" target="mainFrame"><i class="fa fa-list"></i> 部门调动</a></li>
						</ul>
						
						<li><a href="#trainMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa  fa-exchange"></i>&nbsp; 培训管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="trainMeun" class="nav nav-list collapse menu-second">
							<li><a href="train/train_listtrain" target="mainFrame"><i class="fa fa-book"></i> 培训列表</a></li>
						</ul>
						
						<li><a href="#fireMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-fire"></i>&nbsp; 离职管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="fireMeun" class="nav nav-list collapse menu-second">
							<li><a href="dismission/dismission_apart.action" target="mainFrame"><i class="fa fa-home"></i>员工离职</a></li>
							<li><a href="dismission/dismission_list.action" target="mainFrame"><i class="fa fa-home"></i>离职列表</a></li>
						</ul>
						
						<li><a href="#exitMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-coffee"></i>&nbsp; 退出系统 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="exitMeun" class="nav nav-list collapse menu-second">
							<li><a href="NewFile7.html"><i class="fa fa-power-off"></i> 确认退出</a></li>
						</ul>
							
					</ul>
					
				</div>
			</div>
		</div>
		
		
		<script type="text/javascript">
		
		/*
		 * 对选中的标签激活active状态，对先前处于active状态但之后未被选中的标签取消active
		 * （实现左侧菜单中的标签点击后变色的效果）
		 */
		$(document).ready(function () {
			$('ul.nav > li').click(function (e) {
				//e.preventDefault();	加上这句则导航的<a>标签会失效
				$('ul.nav > li').removeClass('active');
				$(this).addClass('active');
			});
		});
		
		</script>
		
<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="asserts/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="asserts/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="asserts/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="asserts/js/custom.js"></script>


</body>
</html>
