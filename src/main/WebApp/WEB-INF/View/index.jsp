<%@ page import="java.util.Vector" %>
<%@ page import="tps6.tp_s6_p14_web_design_mai_2023.Model.Article" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Vector<Article>articles= (Vector<Article>) request.getAttribute("listeArticle");
    int offset= (int) request.getAttribute("offset");
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
<div class="row fixed-top shadow p-3 mb-5 rounded" style="height: 70px; background: #1176a1;"></div>
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
            <div class="card-body" style="width: 100%; margin: 0;">
                <div class="card-group">
                    <div class="card h-100" style="border: none">
                        <div class="card-body">
                            <h3 class="card-title">L'apprentissage automatique</h3>
                            <p class="card-text">
                                L'apprentissage automatique est utilisé dans de nombreux domaines,
                                tels que la recommandation de produits, la prédiction de résultats financiers,
                                la détection de fraude, et bien d'autres encore.
                            </p>
                        </div>
                    </div>
                    <div class="card h-100" style="border: none">
                        <div class="card-body">
                            <h3 class="card-title">le traitement du langage </h3>
                            <p class="card-text">
                                Le traitement du langage naturel est utilisé dans de nombreuses applications, telles que
                                la traduction automatique, la reconnaissance automatique de
                                la parole, l'analyse des sentiments, la réponse automatique aux questions,...
                            </p>
                        </div>
                    </div>
                    <div class="card h-100" style="border: none">
                        <div class="card-body">
                            <h3 class="card-title">La vision par ordinateur</h3>
                            <p class="card-text">
                                La vision par ordinateur est utilisée dans de nombreuses applications,
                                telles que la reconnaissance de plaques d'immatriculation,
                                la surveillance de la circulation, la reconnaissance de visages,
                                la réalité augmentée, la reconnaissance de caractères, et bien plus encore.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div class="row" style="position: absolute; top: 620px; width: 100%">
    <div class="row text-center text-capitalize">
        <h1>IA,notre future</h1>
    </div>
    <div class="row text-center">
        <div class="col-8 offset-2">
            <p class="card-text" style="font-size: 16px;font-family: Verdana sans-serif">
                L'IA a déjà commencé à façonner notre présent, et il
                est probable qu'elle jouera un rôle de plus en plus important dans notre avenir. Les technologies d'IA sont de plus en plus présentes dans notre vie quotidienne, que ce soit dans les applications mobiles, les assistants virtuels, les véhicules autonomes, ou encore les systèmes de surveillance et de sécurité.
            </p>
        </div>
    </div>
</div>
<div class="row" style="width: 100%;position: absolute;top: 790px; margin: 0;background: none;">
    <div class="row text-center text-capitalize">
        <h1>Article sur l'IA</h1>
    </div>
    <div class="row my-4" style="overflow-x: hidden">
        <div class="row my-1" style="margin-left: 10px">
            <%
                for (Article a : articles){ %>
            <div class="col-4">
                <div class="card shadow-lg bg-body rounded h-100">
                    <img src="data:image/jpg;base64,<%=a.getImage()%>" class="card-img-top" alt="..." style="height: 200px">
                    <div class="card-body">
                        <h5 class="card-title"><%=a.getTitre()%></h5>
                        <p class="card-text" style="max-height: 100px; overflow-y: hidden;"><%=a.getContenu()%></p>
                        <p class="card-text"><a href="${pageContext.request.contextPath}/nextPage?id=<%=a.getLien()%>"><small class="text-muted">voir plus</small></a></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <div class="row text-center">
            <div class="pindicator">
                <div class="row">
                    <%
                        for (int i = 0; i <offset ; i++) { %>
                    <a class="col" href="${pageContext.request.contextPath}/?offset=<%=i%>">
                        <div class="rounded-circle text-center" style="width: 50px;height: 50px; background: #1176a1;">
                            <p style="position: relative; top: 50%;left: 50%;color: white;transform: translate(-50%,-50%);">
                                <%=i+1%>
                            </p>
                        </div>
                    </a>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/Asset/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/Asset/js/paginate.js"></script>
</body>

</html>
