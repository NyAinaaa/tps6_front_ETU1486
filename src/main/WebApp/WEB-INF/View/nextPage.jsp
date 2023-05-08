<%@ page import="tps6.tp_s6_p14_web_design_mai_2023.Model.Article" %><%--
  Created by IntelliJ IDEA.
  User: Andrianiavo
  Date: 06/05/2023
  Time: 07:52
  To change this template use File | Settings | File Templates.

--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Article article= (Article) request.getAttribute("article");
    if (article==null){
        out.println("la session est perdu,recharger votre page");
    }
%>

<html lang="fr">
<head>
    <title>Intelligence artificielle</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Asset/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Asset/css/all.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Asset/css/style.css">

    <!--
    <link rel="stylesheet" type="text/css" href="../../../resources/static/Asset/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/static/Asset/css/all.css">
    -->
</head>

<body style="font-family: poppin sans-serif">
<div class="row fixed-top shadow p-3 mb-5 rounded" style="height: 70px; background: #1176a1;">
</div>
<div class="row"
     style="background-image: url('${pageContext.request.contextPath}/Asset/img/fond.jpg');
             height: 400px;width: 100%;margin: 0;  position: absolute;
             background-size: cover;
             background-repeat: no-repeat;
             left: 0;
             opacity: 12;">
</div>
<div class="row " style="width: 100%; position: absolute;top: 300px;margin: 0; background: none;">
    <div class="card col-10 offset-1 shadow-lg p-3 mb-5 bg-body rounded" >
        <div class="card-body" style="width: 100%; margin: 0; max-height: 250px; overflow-y: auto">
            <div class="row">
                <div class="col-4">
                    <div class="card h-100" style="border: none;">
                        <div class="card-body text-center">
                            <img src="data:image/jpg;base64,<%=article.getImage()%>" class="card-img-top" alt="..." style="height: 160px">
                        </div>
                    </div>
                </div>
                <div class="col-8">
                    <div class="card h-100" style="border: none">
                        <div class="card-body">
                            <h3 class="card-title"><%=article.getTitre()%> <small class="text-muted" style="font-size: 16px;color: #1176a1;"><%=article.getDatePublication()%></small></h3>
                            <p class="card-text">
                               <%=article.getContenu()%>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/Asset/js/bootstrap.js"></script>
</body>

</html>
