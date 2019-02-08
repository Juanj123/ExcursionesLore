<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="AgregarPrincipalGaleria.aspx.cs" Inherits="ExcursionesLorePantoja.AgregarPrincipalGaleria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xl-12">
                <asp:Label runat="server" Text="Numero de descripcion"></asp:Label>
                <asp:DropDownList runat="server" ID="dpdlIdDescripcion">
                </asp:DropDownList>

                <asp:Label runat="server" Text="Direccion de imagen"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server"   />
                
                <br />
                <br />
                 <asp:Button runat="server" ID="btnGuardar" Text="Guardar Imagen" CssClass="btn btn-success" OnClick="btnGuardar_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
