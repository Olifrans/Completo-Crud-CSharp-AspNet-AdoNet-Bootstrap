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
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDados.Visible = false;
        }

        protected void btnPesquisarCliente(object sender, EventArgs e)
        {
            try
            {
                //ObterPessoaID bc = new ObterPessoaID();

                int Id = Convert.ToInt32(txtCodigo.Text);

                PessoaDAL d = new PessoaDAL();
                Pessoa p = d.ObterPessoaID(Id);

                if(p != null)
                {
                    pnlDados.Visible    = true;
                    txtNomeCiente.Text  = p.Nome;
                    txtEndereco.Text    = p.Endereco;
                    txtEmail.Text       = p.Email;
                }
                else
                {
                    lblMensagen.Text = "Cliente não encontrado!";
                    txtCodigo.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                lblMensagen.Text = ex.Message;
            }
        }

        //Ação excluir
        protected void btnExcluirCliente(object sender, EventArgs e)
        {
            try
            {
               
                int Id = Convert.ToInt32(txtCodigo.Text);

                Pessoa p = new Pessoa();
                PessoaDAL d = new PessoaDAL();

                d.Excluir(Id);
                lblMensagen.Text = "Cliente excluido com sucesso!";

                //Limpa ampo de dados após exclusão
                txtNomeCiente.Text  = string.Empty;
                txtEndereco.Text    = string.Empty;
                txtEmail.Text       = string.Empty;


            }
            catch (Exception ex)
            {
                lblMensagen.Text = ex.Message;
            }
        }



        protected void btnAtualizarCliente(object sender, EventArgs e)
        {

            try
            {
                Pessoa p = new Pessoa();

                p.Id         = Convert.ToInt32(txtCodigo.Text);
                p.Nome       = Convert.ToString(txtNomeCiente.Text);
                p.Endereco   = Convert.ToString(txtEndereco.Text);
                p.Email      = Convert.ToString(txtEmail.Text);




                PessoaDAL d = new PessoaDAL();
                d.Atualizar(p);

                lblMensagen.Text = "Cliente atualizado com sucesso!";

                //Limpa ampo de dados após exclusão
                txtCodigo.Text      = string.Empty;
                txtNomeCiente.Text  = string.Empty;
                txtEndereco.Text    = string.Empty;
                txtEmail.Text       = string.Empty;

            }
            catch (Exception ex)
            {
                lblMensagen.Text = ex.Message;
            }

        }
    }
}