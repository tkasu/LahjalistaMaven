<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   
<t:pohja pageTitle="Kirjautuminen">
    <ul class="nav nav-tabs">
        <li class="passive"><a href="lahjalista">Lahjalista</a></li>
        <li class="active"><a href="#">Hääinfo</a></li>
        <li class="passive"><a href="login">Admin Sign In</a></li>
    </ul>
        
    <div class="container">
        <img class="center-block" src="logo.png" class="img-responsive" height="40%" width="40%">
    </div>
        
    <div class="container text-center">
        <h1>Hääinfo</h1>
        <p>hääsettii mappii ja juduu</p>
        <br>
        <a href="http://frantic.s3.amazonaws.com/suomenlinna/2014/05/Huoltoajokartta_1.pdf" target="_blank">
            Linkki Suomenlinnan karttaan
        </a>
    </div>

</t:pohja>
