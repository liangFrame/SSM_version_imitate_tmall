<%--
  Created by IntelliJ IDEA.
  User: home-pc
  Date: 2017/8/20
  Time: 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
    <title>Title</title>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="../include/admin/adminHeader.jsp"%>
    <%@include file="../include/admin/adminNavigator.jsp"%>
    <script>
        $(function(){

            $("#editForm").submit(function(){
                if(!checkEmpty("name","分类名称"))
                    return false;

                return true;
            });
        });

    </script>
</head>
<body>
<div class="workingArea">

    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li class="active">编辑分类</li>
    </ol>

    <div class="panel panel-warning editDiv">
        <div class="panel-heading">编辑分类</div>
        <div class="panel-body">
            <form method="post" id="editForm" action="admin_category_update"  enctype="multipart/form-data">
                <table class="editTable">
                    <tr>
                        <td>分类名称</td>
                        <td><input  id="name" name="name" value="${c.name}" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>分类圖片</td>
                        <td>
                            <input id="categoryPic" accept="image/*" type="file" name="filepath" />
                        </td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="id" value="${c.id}">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</
</body>
</html>
