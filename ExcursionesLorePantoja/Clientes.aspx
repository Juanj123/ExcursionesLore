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
                            <table id="tablaClientes" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr style="background-color: #c3497f; color:white;">
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Destino Seleccionado</th>
                                        <th>Telefono</th>
                                        <th>Correo electronico</th>
                                        <th>Cuenta a pagar</th>
                                        <th>Estado de la cuenta</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Esteban</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Diana</td>
                                        <td>Mazatlan</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$2,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Diego</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Gris</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Armando</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Gabriela</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Juan Jose</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Rosa</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Irad</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Viviana</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Angel</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>Lorena</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>Alonso</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>Lucero</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>Gerardo</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>Tannia</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>Esteban</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>Kyra</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>Max</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pendiente</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>Sam</td>
                                        <td>Mazatlan, Los Cabos</td>
                                        <td>4436582091</td>
                                        <td>correo.electronico@gmail.com</td>
                                        <td>$7,800.00</td>
                                        <td>Pagado</td>
                                        <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                    </tr>
                                </tbody>
                                
                                <tfoot>
                                    <tr style="background-color: #c3497f; color:white;">
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Destino Seleccionado</th>
                                        <th>Telefono</th>
                                        <th>Correo electronico</th>
                                        <th>Cuenta a pagar</th>
                                        <th>Estado de la cuenta</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
