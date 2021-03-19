<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="OlifransWeb.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalhes dos Clientes</title>

    <link type="text/css" href="Pages/Content/bootstrap.css" rel="stylesheet" />

     <script src="Scripts/jquery-3.0.0.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script>

</head>
      <body>
        <form id="form1" runat="server">


            <div class="container">
                <div class="span10 offset-1">
                    <div class="row">
                        <h3 class="well"> Detalhes dos Clientes </h3>
                        <br /><br />

                        Informe o Código: <br />
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="5%" />
                      <br /><br />

                   <asp:Button ID="txtPesquisa" runat="server" Text="Pesquisar" CssClass="btn btn-info btn-lg" OnClick="btnPesquisarCliente" />

                         <a href="/Default.aspx" class="btn btn-default btn-lg"> Voltar a Home</a>               
                        <br /><br /><br />

                        <p><asp:Label ID="lblMensagen"  runat="server"/></p>


                    <asp:Panel ID="pnlDados" runat="server">

                            Nome do Cliente: <br />
                        <asp:TextBox ID="txtNomeCiente" runat="server" placeholder="Digite Nome do Cliente"  CssClass="form-control" Width="50%" />
                             <br /><br />

                           Endereço do Cliente: <br />
                         <asp:TextBox ID="txtEndereco" runat="server" placeholder="Digite Endereço do Cliente"  CssClass="form-control" Width="50%" />
                          <br /><br />

                            E-mail do Cliente: <br />
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Digite E-mail do Cliente"  CssClass="form-control" Width="50%" />
                            <br /><br />

                        <asp:Button ID="txtExcluir" runat="server" Text="Excluir" Cssclass="btn btn-danger btn-lg" OnClick="btnExcluirCliente" />
                        <asp:Button ID="txtAtualizar" runat="server" Text="Atualizar" CssClass="btn btn-warning btn-lg" OnClick="btnAtualizarCliente" />                   
                       <%-- <a href="/Default.aspx" class="btn btn-default btn-lg"> Voltar a Home</a>--%>

                    </asp:Panel>

                    </div>
                </div>
            </div>
        </form>
    </body>
   
</html>
