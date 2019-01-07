<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ExcursionesLorePantoja.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
      <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xl-12">
                    <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12" style="overflow:hidden; background-color:white; border-radius: 15px; box-shadow: 1px 1px 2px 1px #818181;" id="conte2">
                        <h1>Agenda de Clientes</h1>
                        <br />
                        <div class="form-inline my-2 my-lg-0 col-md-12 col-lg-12 col-sm-12 col-xl-12">
                            <input class="form-control mr-sm-2 col-9" type="search" placeholder="Buscar" aria-label="Search">
                            <button class="btn btn-success my-2 my-sm-0 col-2" type="submit"> <i class="fas fa-search"></i> Buscar</button>
                        </div>
                        <br />
                        <br />

                        <div class="table-responsive-sm">
                            <table class="table table-hover">
                                <thead>
                                    <tr style="background-color: #c3497f; color:white;">
                                        <th scope="col">#</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Destino seleccionado</th>
                                        <th scope="col">Teléfono</th>
                                        <th scope="col">Correo Electrónico</th>
                                        <th scope="col">Cuenta a pagar</th>
                                        <th scope="col">Estado de la cuenta</th>
                                        <th></th>
                                   </tr>
                                </thead>
            
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Diana</td>
                                        <td>Mazatlan</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$3,500</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr style="background-color:#D6D7D7; color:black;">
                                        <th scope="row">2</th>
                                        <td>Esteban</td>
                                        <td>Guanajuato</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$2,800</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Marco</td>
                                        <td>Ixtapa</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$5,300</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">4</th>
                                        <td>Sergio</td>
                                        <td>Ixtapa</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$3,500</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i>  Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">5</th>
                                        <td>Antonio</td>
                                        <td>Los Cabos, Guanajuato</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$13,700</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">6</th>
                                        <td>Diego</td>
                                        <td>Ixtapa</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$2,800</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">7</th>
                                        <td>Armando</td>
                                        <td>Guananjuato</td>
                                        <td>5523768901</td>
                                        <td>ashdj@gmail.com</td>
                                        <td>$5,300</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"> <i class="fas fa-edit"></i> Editar</button> <button type="button" class="btn btn-danger"> <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
