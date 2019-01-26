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

                
                <asp:Button runat="server" ID="btnAgregarVideo" CssClass="btn btn-primary" Text="Agregar Video" OnClick="btnAgregarVideo_Click" />

                <br />
                <br />
                <%--tabla jquery--%>
                <%--<asp:Literal runat="server" ID="ltTabla"></asp:Literal>--%>

                <table id="tableGr" class="table table-bordered table-hover table-responsive-sm table-responsive-md text-center">
                    <thead class="bg-success text-white">

                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Ruta</th>
                            
                            


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
