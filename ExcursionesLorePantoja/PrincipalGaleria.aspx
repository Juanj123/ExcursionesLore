﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="PrincipalGaleria.aspx.cs" Inherits="ExcursionesLorePantoja.PrincipalGaleria1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
    <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12">
        <div class="row">

            <div class="col-md-12 col-lg-12 col-sm-12 col-xl-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="img/travel-1749508_640.jpg" alt="Third slide" />
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/sunrise-1014712_640.jpg" alt="Second slide" />
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/maldives-1993704_640.jpg" alt="Second slide" />
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

                <br />
                <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12" style="overflow: hidden; background-color: white; border-radius: 15px; box-shadow: 1px 1px 2px 1px #818181;">
                    <p class="text-justify e">
                        viéndole don Quijote de aquella manera, con muestras de tanta tristeza, 
                    le dijo: Sábete, Sancho, que no es un hombre más que otro si no hace más que otro.
                    Todas estas borrascas que nos suceden son señales de que presto ha de serenar el tiempo y han 
                    de sucedernos bien las cosas; porque no es posible que el mal ni el bien sean durables, y de
                    aquí se sigue que, habiendo durado mucho el mal, el bien está ya cerca. Así que, 
                    no debes congojarte por las desgracias que a mí me suceden, pues a ti no te cabe
                       
                    </p>
                </div>

                <br />
                <br />
                <%--tabla de imagenes para el carousel--%>
                <h2>Imagenes del Carousel</h2>

                <asp:Button runat="server" ID="btnAgregarImg" CssClass="btn btn-primary"  Text="agregar Imagen" OnClick="btnAgregarImg_Click" />

                 <table id="tablePrincipalGleria" class="table table-bordered table-hover table-responsive-sm table-responsive-md text-center">
                    <thead class=" text-white" style="background-color: #c3497f;">

                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Ruta</th>
                            <th scope="col">Acciones</th>

                         


                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>

            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>