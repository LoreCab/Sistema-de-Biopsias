<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RBiopsia.aspx.cs" Inherits="Sistema_de_Biopsias.RBiopsia" %>

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
            <h2>Registrar Biopsia </h2>
        </div>

        <div class="row">
    <div class="col-25">
      <label for="fdni">&nbsp;&nbsp; DNI:</label>
    </div>
    <div class="col-75">
      <asp:TextBox ID="TextBox3" runat="server" placeholder="Ingrese dni del paciente ..."></asp:TextBox>      
        <br />
        <br />
    </div>
      
  </div>
    </form>
</body>
</html>
