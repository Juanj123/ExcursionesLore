<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdministrator.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ExcursionesLorePantoja.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
    <link href="content/estilosClientes.css" rel="stylesheet" />

    <h1 class="text-center" id="titulo">Agenda de Clientes</h1>
    <br />
    <br />

    <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12">
        <div class="row">          
                <div class="container col-md-12 col-lg-10 col-sm-12 col-xl-10 align-content-center" id="tabla">
                    <div class="container col-md-12 col-lg-12 col-sm-12 col-xl-12">
                    <br />                    
                    <div class="row justify-content-center">
                        
                        <div class="col-md-6 col-sm-12 offset-md-6">
                        <div class=" d-flex justify-content-end">
                        <div class="input-group">
                            <span class="input-group-label">
                                <button class="btn btn-success btn1" type="submit"> <i class="fas fa-search"></i></button>
                            </span>
                            <input class="form-control col-sm-7" type="search" placeholder="Buscar" aria-label="Search">
                            <select class="form-control col-sm-2" id="seleccionar">
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                        </div>
                        </div>
                        </div>
                        

                        <br />
                        </div>
                    </div>

                    <br />
                    <br />
    
                    <div class="table-responsive">
                    <!--Table-->
                    <table class="table table-striped">

                    <!--Table head-->
                    <thead>
                        <tr id="tablaClientes">
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
                    <!--Table head-->

                    <!--Table body-->
                    <tbody>
                        <tr>
                                                    <th scope="row">1</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">4</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">5</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">6</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">7</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">8</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">9</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">10</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">11</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">12</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">13</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">14</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">15</th>
                                                    <td>Esteban</td>
                                                    <td>Mazatlan, Los Cabos</td>
                                                    <td>4436582091</td>
                                                    <td>correo.electronico@gmail.com</td>
                                                    <td>$7,800.00</td>
                                                    <td>Pendiente</td>
                                                    <td><button type="button" class="btn btn-success"><i class="fas fa-edit"></i>  Editar</button> <button type="button" class="btn btn-danger">  <i class="fas fa-trash-alt"></i> Eliminar</button></td>
                                                </tr>
                    </tbody>
                    <!--Table body-->
                    
                    </table>
                    <!--Table-->
                    </div>
                    
                    <div>

                    </div>

                    </div>
            
            
                </div>
        <div class="row justify-content-center pag">
            
            <div class="col-sm-8 col-md-3">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#"><<</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">>></a></li>
                </ul>
            </div>
            
        </div>
            </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
