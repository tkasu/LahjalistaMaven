<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:pohja pageTitle="Lahjalista">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#">Lahjalista</a></li>
        <li class="passive"><a href="info">Hääinfo</a></li>
        <li class="passive"><a href="login">Admin Sign In</a></li>
    </ul>

    <div class="container">
        <img class="center-block" src="logo.png" class="img-responsive" height="40%" width="40%">
    </div>
    
    <br>
    <br>
    <br>
    <br>
    
    <div class="container center-block text-center etuinfo">
        <h5>Meillä on ilo kutsua teidät todistamaan, kun sanomme toisillemme ”tahdon”.</h5>
    </div>
    
    <div class="container">
        <div class="center-block text-center text-justify etuinfo">
            
            <br>
            <p>Hääparia muistavat voivat tutustua lahjatoiveisiimme, jotka on esitelty alla. Täydennetyn hääinfon Suomenlinnan erityisohjeineen sekä kaasojen ja bestmanien yhteystiedot löydätte 
                <a href="info#contact"><u>tästä</u></a>.</p> 
            <p>Vietämme häämatkastamme osan Karibianmeren äärellä ja loput New Yorkissa. Lahjatoiveemme onkin räätälöity vastaamaan kokemuksia, jotka ovat unelmamme häämatkalle. Halutessanne voitte myös muistaa asuntosäästöämme. Jos haluatte tarjota meille lahjan, klikatkaa ”Varaa”, täyttäkää pyydetyt tiedot ja vahvistakaa varaus. Varatut lahjat maksetaan tilille FI90 6601 0003 0398 72 / Sonja Ulma. Kirjoittakaa viestikenttään lahjan nimi. Kaasot Tanja Ulma ja Laura Kirvesniemi vastaavat lahjatoiveitamme koskeviin 
                <a href="info#contact"><u>kysymyksiin</u></a>.</p>
            <p></p>
        </div>
        <div class="container center-block text-center etuinfo">
            <h5>Suurin lahja on kuitenkin läsnäolonne.</h5>
        </div>
        <br />
        
        <c:if test="${ilmoitus != null}">
            <div class="alert alert-info">${ilmoitus}</div>
        </c:if>


        <c:forEach var="virhe" items="${virheet}">
            <div class="alert alert-danger">${virhe}</div>
        </c:forEach>

    </div>

        <div class="container panel panel-primary">
            
            
            <div class="page-header">
                <h4 id="tables">Lahjaehdotukset</h4>
            </div>


            <form class="navbar-form navbar-right" role="form" action="lahjalista" method="GET">
                <div class="form-group">
                    <input type="text" class="form-control" name="hakukentta" value="${hakuehto}" placeholder="Hae nimellä">
                    <button type="submit" class="btn btn-primary">Hae</button>
                </div>    
            </form>
           

        <table class="table table-condensed">
            <thead>
                <tr>
                    <th>Lahja</th>
                    <th>Hinta</th>
                    <th>Varausten määrä</th>
                    <!--<th class="pull-right">Varaus</th>-->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="lahja" items="${lahjat}">
                    <tr>
                        <td>${lahja.nimi}</td>
                        <c:choose>
                            <c:when test="${lahja.hinta != null}">
                                <td><fmt:formatNumber pattern="0" value="${lahja.hinta}"/></td>
                            </c:when>
                            <c:otherwise>
                                <td></td> 
                            </c:otherwise>
                        </c:choose>

                        <td>${lahja.varaustenMaara} / ${lahja.maxVaraukset}</td>
                        <c:choose>
                            <c:when test="${lahja.varaustenMaara + 1 > lahja.maxVaraukset}">
                                <td><button type="button" class="open-varaaModal btn btn-default disabled pull-right" data-toggle="modal" data-nimi="${lahja.nimi}" data-id="${lahja.id}" data-url="${lahja.osoite}" data-target="#varaaModal">Varaa</button></td>
                            </c:when>
                            <c:otherwise>
                                <td><button type="button" class="open-varaaModal btn btn-default pull-right" data-toggle="modal" data-nimi="${lahja.nimi}" data-id="${lahja.id}" data-url="${lahja.osoite}" data-target="#varaaModal">Varaa</button></td>
                            </c:otherwise>
                        </c:choose>
                        
                    </tr>
                </c:forEach>
            </tbody>

        </table>
    </div>


    <div class="modal fade" id="varaaModal" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Varaa lahja</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" action="varaa" method="POST">
                        <input type="hidden" name="lahja-id" id="id-kentta" value=""/>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Varattava lahja</label>
                            <div class="col-md-10">
                                <input type="text" name="lahja-nimi" id="lahja-nimi-hidden" class="form-control" id="lahja-url-hidden" value="" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Esimerkkisivu</label>
                            <div class="col-md-10">  
                                <a id="lahja-url-hidden"  href="" target="_blank">test</a>
                            </div>
                        </div>
                        <br>
                        <h4 class ="modal-title">Uusi varaaja</h4>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Varaajan nimi</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" name="nimi" placeholder="Nimi (pakollinen)">
                            </div> 
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Email</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" name="email" placeholder="Email (vapaaehtoinen)">
                            </div> 
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Puh.nro.</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" name="numero" placeholder="Numero (vapaaehtoinen)">
                            </div> 
                        </div> 
                        <div class="modal-body right">
                            <button type="submit" class="btn btn-primary">Vahvista varaus</button>
                        </div>
                    </form>
                    <br>
                    <!--
                    <form class="form-horizontal" role="form" action="varaanyky" method="POST">
                        <input type="hidden" name="lahja-id" id="id-kentta2" value=""/>
                        <h4 class ="modal-title">Toista lahjaa varaavat</h4>
                        <label class="col-md-2 control-label">Email</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" name="email" placeholder="email (pakollinen)">
                        </div>
                        <br>
                        <br>
                        <div class="modal-body right">
                            <button type="submit" class="btn btn-primary">Vahvista varaus</button>
                        </div>
                    </form>
                    -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Sulje</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</t:pohja>        

