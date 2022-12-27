<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarBiopsia.aspx.cs" Inherits="Sistema_de_Biopsias.RegistrarBiopsia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../Css/bootstrap.min.css" />
    <title></title>
    <style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
            <h2>Registrar un paciente</h2>
<p></p>

<div class="container">
        </div>
  <div class="row">
    <div class="col-25">
      <label for="fname">DNI:</label>
    </div>
    <div class="col-75">
      <asp:TextBox ID="TextBox3" runat="server" placeholder="Ingrese dni del paciente ..."></asp:TextBox>      
        <br />
        <br />
       
    </div>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" />
  </div>
      <br />
      <div class="row">
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BiopsysConnectionString %>" SelectCommand="SELECT * FROM [Personas]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Visible="False">
              <Columns>
                  <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                  <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                  <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                  <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                  <asp:BoundField DataField="obrasocial" HeaderText="obrasocial" SortExpression="obrasocial" />
              </Columns>
          </asp:GridView>
          <br />
          <asp:Panel ID="Panel1" runat="server" Visible="false">
              <div class="row">
    <div class="col-25">
      <label for="nombres">Nombres: </label>
    </div>
    <div class="col-75">
       
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Ingrese los nombres del paciente.."></asp:TextBox>   
    </div>
                  
  </div>
<div class="row">
    <div class="col-25">
      <label for="lname">Apellidos: </label>
    </div>
    <div class="col-75">
      
      <asp:TextBox ID="TextBox2" runat="server" placeholder="Ingrese los apellidos del pacientes.."></asp:TextBox>
    </div>
    
  </div>

  <div class="row">
    <div class="col-25">
      <label for="subject">Direccion</label>
    </div>
     <div class="col-75">
      <textarea id="subject" name="subject" placeholder="Ingrese direccion donde vive el paciente.." style="height:100px"></textarea>
    </div>
  </div>
        <div class="row">
    <div class="col-25">
      <label for="country">Obra social</label>
    </div>
    <div class="col-75">
      <select id="country" name="country">
        <option value="australia">Obra1</option>
        <option value="canada">Obra2</option>
        <option value="usa">Obra3</option>
      </select>
    </div>
  </div>
  <br/>
<div class="row">
    <input type="submit" value="CARGAR"/>
  </div>
            


          </asp:Panel>
  </div>
            
           
  
    </form>
</div>
        </div>
             
 
    </form>

<footer id="Footer" class="py-2" style="background-color: #1D7FAC; margin-top: 1em" runat="server">
        <div >
            <p class="m-0 text-center text-black" id="clfooter">&copy; HOSPITAL PABLO SORIA - 2022
        </div>
    </footer>

</body>
       
   
</html>
