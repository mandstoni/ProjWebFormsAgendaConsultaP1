using Dal;
using Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjWebFormsAgendaConsultaP1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            LoadGrid();
            if (!IsPostBack) LoadDatas();
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            Agenda agenda = new Agenda()
            {
                Hora = TxtHorario.Text,
                Data = TxtData.Text,
                Medico = new Medico() { Id = int.Parse(cboMedico.SelectedValue.ToString()) },
                Paciente = new Paciente() { Id = int.Parse(cboPaciente.SelectedValue.ToString()) },
            };

            AgendaDB agendaDB = new AgendaDB();
            bool status = agendaDB.Insert(agenda);

            if (status)
            {
                LblMsg.Text = "Registro inserido!";
                LoadGrid();
                ClearForms();
            }
            else { 
                LblMsg.Text = "Erro ao inserir registro";
                LblMsg.ForeColor = Color.Red;
            }
        }

      
        private void LoadGrid()
        {
            GVAgenda.DataSource = new AgendaDB().GetAll();
            GVAgenda.DataBind();
        }


        private void LoadCboPaciente()
        {
            cboPaciente.DataSource = new PacienteDB().GetAll();
            cboPaciente.DataTextField = "Nome";
            cboPaciente.DataValueField = "Id";
            cboPaciente.DataBind();
        }

        private void LoadCboMedico()
        {
            cboMedico.DataSource = new MedicoDB().GetAll();
            cboMedico.DataTextField = "Nome";
            cboMedico.DataValueField = "Id";
            cboMedico.DataBind();
        }
    
        private void LoadDatas()
        {
            LoadCboMedico();
            LoadCboPaciente();
        }

        private void ClearForms()
        {
            TxtData.Text = String.Empty;
            TxtHorario.Text = String.Empty;
        }
    }
}