﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using BLL;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormsPrincipal1;
using Models;

namespace WindowsFormsAppGestaoHotel
{
    public partial class FormCadastroDiaria : Form
    {
        public int Id;
        public FormCadastroDiaria(int _id = 0)
        {
            Id = _id;
            InitializeComponent();
        }

        private void FormCadastroDiaria_Load(object sender, EventArgs e)
        {

        }

        private void buttonCancelar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void buttonSelecionarFuncionario_Click(object sender, EventArgs e)
        {
            using(FormConsultaFuncionario frm = new FormConsultaFuncionario())
            {
                frm.ShowDialog();
            }
        }
        private void buttonSelecionarPagamento_Click(object sender, EventArgs e)
        {
            using(FormConsultarPagamento frm = new FormConsultarPagamento())
            {
                frm.ShowDialog();
            }
        }
        private void buttonSelecionarCliente_Click(object sender, EventArgs e)
        {
            using(FormConsultaCliente frm = new FormConsultaCliente())
            {
                frm.ShowDialog();
            } 
        }

        private void buttonSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                DiariaBLL diariaBLL = new DiariaBLL();
                diariaBindingSource.EndEdit();
                if (Id == 0)
                {
                    diariaBLL.Inserir((Diaria)diariaBindingSource.Current);
                }
                else
                {

                    diariaBLL.Alterar((Diaria)diariaBindingSource.Current);
                }
                MessageBox.Show("Diaria salvo com sucesso");
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
    }
}
