using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;


namespace OlifransWeb.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrarCliente(object sender, EventArgs e)
        {
            try
            {
                Pessoa p = new Pessoa();

                p.Nome     = txtNome.Text;
                p.Endereco = txtEndereco.Text;
                p.Email    = txtEmail.Text;

                PessoaDAL d = new PessoaDAL();
                d.Gravar(p); //Gravando dados da pessoa

                lblMensagen.Text = "Cliente" + p.Nome + "cadastrado com sucesso!!!";

                //Limpar conteúdo dos campos após gravar dados no BD.
                txtNome.Text = "";
                txtEndereco.Text = "";
                txtEmail.Text = "";

            }
            catch (Exception ex)
            {
                lblMensagen.Text = ex.Message;
            }
        }
    }
}