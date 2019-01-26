<%@ Page Title="" Language="C#" MasterPageFile="~/HomeUsers.Master" AutoEventWireup="true" CodeBehind="apartaTuLugar.aspx.cs" Inherits="ExcursionesLorePantoja.apartaTuLugar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bod" runat="server">
     <link rel="stylesheet" href="content/animate.min.css">
    <link rel="stylesheet" href="content/apartaTuLugar.css" />
<div style="position: absolute;margin-left: 65%; margin-top: 1px">
    <h2 style="position: center">Guanajuato, Guanajuato</h2>
  <div class="card" style="width: 25rem;">
  <img class="card-img-top" src="imgPrueba/pueblos-magicos-de-Guanajuato_Header.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-text">Precios:</h4>
    <h5 class="card-text">Adulto: $500</h5>
    <h5 class="card-text">Niño: $200</h5>
    <asp:LinkButton CssClass="btn btn-success" runat="server"> <i class="fas fa-info"></i> Mas Informacion</asp:LinkButton>
  </div>
</div>
  </div>
  <div class="card-deck mb-3 text-center">
     <div class="col-md-2" style="margin-top: 1%; margin-left: 50px">
      <img src="img/Autobus.png" alt="">
    </div>
    <div class="col-md-4" style="margin-top: 5%; margin-left: 100px">
      <div class="card">
    <div class="card-header bg-dark text-white">
      <h4 class="my-0 font-weight-normal">Aparta Tu Lugar</h4>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">
        <div class="form-group col-md-4">
          <label for="inputState">Adultos</label>
          <select id="cmbAdultos" class="form-control">
            <option selected>1</option>
            <option >2</option>
            <option >3</option>
            <option >4</option>
            <option >5</option>
            <option >6</option>
            <option >7</option>
            <option >8</option>
            <option >9</option>
            <option >10</option>
          </select>
        </div>
        <label id="lblAdultos" style="position: absolute; margin-left: -50px; margin-top: -50px">Total a pagar</label>
        <h1 id="lblTotalAdultos" style="position: absolute; margin-left: 250px; margin-top: -63px"></h1>
                  <div class="container">			
	<div class="well well-sm text-center">
		<div class="btn-group" data-toggle="buttons">
			<label id="btnNiños" class="btn btn-success active">¿Usted llevara niños Mayores de 6 Años?
				<input id="checkNiños" type="radio" name="options">
				<span class="glyphicon glyphicon-ok"></span>
			</label>
		</div>
	</div>
</div>
      </li>
      <li class="list-group-item">
        <div id="oculto" class="form-group col-md-4" style="display:none">
          <label for="inputState">Niños</label>
          <select id="cmbNinos" class="form-control">
            <option selected>0</option>
            <option >1</option>
            <option >2</option>
            <option >3</option>
            <option >4</option>
            <option >5</option>
            <option >6</option>
            <option >7</option>
            <option >8</option>
            <option >9</option>
            <option >10</option>
          </select>
        </div>
        <label id="lblNinos" style="position: absolute; margin-left: 130px; margin-top: -50px; display: none">Total a pagar</label>
        <h1 id="lblTotalNinos" style="position: absolute; margin-left: 250px; margin-top: -65px; display: none"></h1>
      </li>
      <li class="list-group-item">
    <h3 style="margin-left: -70px">Total de Asientos</h3>
      <input class="form-control" id="txtTotal" readonly="readonly" type="text" style="position:inherit; width: 50px;height:50px;text-align:center; margin-top:-45px; margin-left:270px"/>
      </li>
    </ul>
  </div>
    </div>
</div>
    <button id="btnConfirmar" type="button" class="btn btn-dark">
        Confirmar Lugares
        </button>
  <TABLE border="1" style="margin-left: 70px; margin-top: -580px; position: absolute; z-index: auto; text-align: center;">
    <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs1" type="button" class="btn btn-light">01</button></TD></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs2" type="button" class="btn btn-light">02</button></TD></TD>
    </TR>
    <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs5" type="button" class="btn btn-light">05</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs6"type="button" class="btn btn-light">06</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs9" type="button" class="btn btn-light">09</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs10" type="button" class="btn btn-light">10</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs13" type="button" class="btn btn-light">13</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs14" type="button" class="btn btn-light">14</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs17" type="button" class="btn btn-light">17</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs18" type="button" class="btn btn-light">18</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs21" type="button" class="btn btn-light">21</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs22" type="button" class="btn btn-light">22</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs25" type="button" class="btn btn-light">25</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs26" type="button" class="btn btn-light">26</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs29" type="button" class="btn btn-light">29</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs30" type="button" class="btn btn-light">30</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs33" type="button" class="btn btn-light">33</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs34" type="button" class="btn btn-light">34</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs37" type="button" class="btn btn-light">37</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs38" type="button" class="btn btn-light">38</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs41" type="button" class="btn btn-light">41</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs42" type="button" class="btn btn-light">42</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs45" type="button" class="btn btn-light">45</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs46" type="button" class="btn btn-light">46</button></TD>
    </TR>
  </TABLE>

    <TABLE border="1" style="margin-left: 220px; margin-top: -580px; position: absolute; z-index: auto; text-align: center;">
    <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs3" type="button" class="btn btn-light">03</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs4" type="button" class="btn btn-light">04</button></TD>
    </TR>
    <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs7" type="button" class="btn btn-light">07</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs8" type="button" class="btn btn-light">08</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs11" type="button" class="btn btn-light">11</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs12" type="button" class="btn btn-light">12</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs15" type="button" class="btn btn-light">15</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs16" type="button" class="btn btn-light">16</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs19" type="button" class="btn btn-light">19</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs20" type="button" class="btn btn-light">20</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs23" type="button" class="btn btn-light">23</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs24" type="button" class="btn btn-light">24</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs27" type="button" class="btn btn-light">27</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs28" type="button" class="btn btn-light">28</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs31" type="button" class="btn btn-light">31</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs32" type="button" class="btn btn-light">32</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs35" type="button" class="btn btn-light">35</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs36" type="button" class="btn btn-light">36</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs39" type="button" class="btn btn-light">39</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs40" type="button" class="btn btn-light">40</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs43" type="button" class="btn btn-light">43</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs44" type="button" class="btn btn-light">44</button></TD>
    </TR>
     <TR>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs47" type="button" class="btn btn-light">47</button></TD>
      <TD WIDTH="35" HEIGHT="35"><button id="btnAs48" type="button" class="btn btn-light">48</button></TD>
    </TR>
  </TABLE>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="false" data-backdrop="static">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmar Lugares</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="btnCerrar">Cancelar</button>
          <asp:Button runat="server" CssClass="btn btn-outline-dark" id="BtnEnviar" Text="Confirmar Lugares" OnClick="BtnEnviar_Click"/>
      </div>
    </div>
  </div>
</div>
    <button id="btnPrueba">Prueba</button>
    <p id="demo"></p>
    <asp:Label ID="GreetingLabel" runat="server" Visible="false" Text="Hello World!" />
    <script src="scripts/jquery-3.2.1.min.js"></script>
    <script src="scripts/internos/apartaTuLugar.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
