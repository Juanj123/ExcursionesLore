<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="Descripcion.aspx.cs" Inherits="ExcursionesLorePantoja.Descripcion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
    <div class="container">
        <div class="row">
            <%--captura de descripcion--%>
                <h1>Descripcion de Imagenes</h1>

                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control col-12" TextMode="MultiLine" Rows="3" placeholder="Descripcion"></asp:TextBox>
                <br />
                <asp:Button runat="server" ID="btnAgregar" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregar_Click" />

                <br />
            <br />
             <table id="tableDescripcion" class="table table-bordered table-hover table-responsive-sm table-responsive-md text-center">
                    <thead class=" text-white" style="background-color: #c3497f;">

                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script src="scripts/Principal.js"></script>
</asp:Content>
