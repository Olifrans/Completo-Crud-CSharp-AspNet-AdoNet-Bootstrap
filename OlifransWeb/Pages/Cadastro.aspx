<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="OlifransWeb.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link href="Pages/Content/bootstrap.css" rel="stylesheet" />
    <link href="Pages/Content/bootstrap.min.css" rel="stylesheet" />
</head>
    <script src="../Pages/Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Pages/Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h3 class="well"> Cadastro de Cliente </h3>
                <br />
                Nome do Cliente: <br />
                <asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo" width="50%" CssClass="form-coontrol" />
                <br /><br />

                 Endereço do Cliente: <br />
                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço do Cliente" width="50%" CssClass="form-coontrol" />
                <br /><br />

                  Email do Cliente: <br />
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Válido" width="50%" CssClass="form-coontrol" />
                <br /><br />

                <p> <asp:Label ID="lblMensagen"  runat="server"/> </p>

                 <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-success btn-lg" OnClick="BtnCadastrarCliente" />

                <a href="/Default.aspx" class="btn btn-default btn-lg"> Voltar</a>

            </div>  
        </div>
    </form>
</body>    
</html>
