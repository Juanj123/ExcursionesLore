<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="PrincipalVideo.aspx.cs" Inherits="ExcursionesLorePantoja.PrincipalVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
    <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xl-12">
                <h2>Video</h2>
                <asp:Literal runat="server" ID="ltVideo" Text=""></asp:Literal>

                <br />

                
                <asp:Button runat="server" ID="btnAgregarVideo" CssClass="btn btn-primary" Text="Agregar Video" />

                <br />
                <br />
                <%--tabla jquery--%>
                <%--<asp:Literal runat="server" ID="ltTabla"></asp:Literal>--%>

                <table id="tableGroups" class="table table-bordered table-hover table-responsive-sm table-responsive-md text-center">
                    <thead class="bg-success text-white">

                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Ruta</th>
                            <th scope="col">Estado</th>
                            <th scope="col"></th>


                        </tr>
                    </thead>
                    <tbody>
                          <tr>
                            <td>Viaje a cuba</td>
                            <td>https://www.youtube.com/embed/znk2OICHbjY?controls=0</td>
                            <td>Mostrar</td>
                            <td>
                                <asp:Button runat="server" ID="Button1" Text="Modificar" CssClass="btn btn-success" />
                                <asp:Button runat="server" ID="Button9" Text="Eliminar" CssClass="btn btn-danger" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
