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
        
    <div class="container text-center col-md-push-6"  width="60%">
        <h1>Hääinfo</h1>
        <br><br>
    </div>
    <div class="container text-justify" id="hääinfo"> <!--width="80%"-->
        
        
        <h3>Kutsuun vastaaminen</h3>
        <p>Pyydämme vastausta 12.9.2015 mennessä. Ilmoitattehan samalla myös, toivotteko riista- vai kasvisvaihtoehdon illallisella  sekä mahdolliset ruoka-allergiat. Kutsuun vastataan suoraan hääparille.</p>
        
        <h3>Juhlapaikalle saapuminen ja vihkiminen</h3>
        <p>ieraamme saapuvat Suomenlinnaan järjestämällämme tilausveneellä, joka lähtee Helsingin Kauppatorilta klo 15. Olettehan hyvissä ajoin paikalla. Teidät vastaanottavat ja matkan sujuvuudesta huolehtivat bestmanit Janne Pomell ja Anton Söderberg. Bestmanien tarkka paikka on merkitty karttaan alle (vihreä X). Heidät tunnistatte häälogollamme varustetusta kyltistä. Huomioittehan, että Kauppatorilla 4.10. alkavien silakkamarkkinoiden vuoksi autopaikan löytäminen laiturien läheisyydestä voi olla mahdotonta.</p>
        <p>Vene kuljettaa teidät Suomenlinnan Tykistölahden laituriin, josta on lyhyt, mutta mukulakivinen matka Tenalji von Ferseniin. Korkeissa koroissa tanssivia suosittelemme ottamaan mukaan myös matalat kengät. </p>
        <p>Vihkiminen on klo 16. Paikalla on ammattivalokuvaaja ikuistamassa meille tärkeän hetken, jotta vieraat voivat rauhoittua nauttimaan tilaisuudesta. </p>
        <p>Tenalji von Fersen on valitettavasti rappusellinen tila vailla hissiä. </p>
        
        
        
        <h3>Hääjuhla</h3>
        <p>Vihkimisen jälkeen hääjuhla jatkuu samassa tilassa illallisella ja musiikilla puolille öin. Toiveet puheen pitämisestä voi esittää kaasoille. Juhlimme aikuisten kesken.</p>
        
        <h3>Suomenlinnasta poistuminen</h3>
        <p>Viimeinen HSL:n lautta lähtee aamukahteen mennessä (Helsingin sisäinen lippu/seutulippu). Tarkan lautta-aikataulun löydätte osoitteesta 
            <a href="http://aikataulut.reittiopas.fi/linjat/fi/ferry.html" target="_blank"><u>hsl.fi</u></a>, kun sivuille myöhemmin päivitetään lautan syysaikataulu. 
            <a href="http://frantic.s3.amazonaws.com/suomenlinna/2014/05/Huoltoajokartta_1.pdf" target="_blank"><u>Tästä näette Suomenlinnan kartan</u></a>
            , johon on merkitty Tenalji von Fersen ja HSL:n lautan lähtöpaikka, eli ”lauttaranta”. Tykistölahden laiturin kohdalla lukee ”vesibussi”. Bestmanit avustavat mahdollisissa kysymyksissä. </p>
    
        <a href="kartta.jpg" target="_blank">
            <img class="center-block" src="kartta.jpg" class="img-responsive" height="90%" width="90%">
        </a>
        
        <h3 id="maksuohjeet">Häälahjan maksuohjeet</h3>
        <c:if test="${ilmoitus != null}">
            <div class="alert alert-info">${ilmoitus}</div>
        </c:if>
        <p>FI90 6601 0003 0398 72 / Sonja Ulma</p>
        <p>Kirjoittakaa viestikenttään varaamanne lahjan nimi. </p>
        
        <h3 id="contact">Yhteystiedot</h3>
        <p>Sonja Ulma 044 340 7020</p>
        <p>Tomi Kasurinen 040 838 7777</p>
        
        <h4>Kaasot</h4> 
        <p>(lahjatoiveisiin ja puheen pitämiseen liittyvät yhteydenotot)</p>
        <p>Tanja Ulma 044 353 2364</p>
        <p>Laura Kirvesniemi 050 468 9533</p>
        
        <h4>Bestmanit</h4>
        <p>(venekuljetukseen liittyvät yhteydenotot)</p>
        <p>Janne Pomell 041 461 7280</p>
        <p>Anton Söderberg 040 048 7871</p>
        
        <br>
        
        <h4>Lämpimästi tervetuloa! </h4>
        
        <br>
        
        <br>
        
        <br>
        
        <br>
        
        <br>
    </div>
        
    

</t:pohja>-->
