﻿using Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsPrincipal1
{
    public partial class FormPrincipal : Form
    {
        public FormPrincipal()
        {
            InitializeComponent();
        }

       private void FormPrincipal_Load(object sender, EventArgs e)
        {
            try
            {
                using (FormLogin frm = new FormLogin())
                {
                    frm.ShowDialog();
                    if (!frm.Logou)
                    {
                        Application.Exit();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void cadastroFuncionárioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (FormCadastroDeFuncionario frm = new FormCadastroDeFuncionario())
            {
                frm.ShowDialog();
            }
        }

        private void cadastroGrupoDeFuncionárioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (FormCadastroGrupoFuncionario frm = new FormCadastroGrupoFuncionario())
            {
                frm.ShowDialog();
            }
        }

        private void consultaFuncionárioToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            using (FormBuscarFuncionario frm = new FormBuscarFuncionario())
            {
                frm.ShowDialog();
            }
        }

        private void consultagrupoDeFuncionárioToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            using (FormBuscarGrupoFuncionario frm = new FormBuscarGrupoFuncionario())
            {
                frm.ShowDialog();
            }
        }

        private void cadastroToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void clienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (FormCadastroCliente frm = new FormCadastroCliente())
            {
                frm.ShowDialog();
            }
        }

        private void clienteToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            using (FormBuscarCliente frm = new FormBuscarCliente())
            {
                frm.ShowDialog();
            }
        }

        private void quartoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using(FormConsultaQuarto frm = new FormConsultaQuarto())
            {
                frm.ShowDialog();
            }
        }

        private void clienteToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            using (FormBuscarCliente frm = new FormBuscarCliente())
            {
                frm.ShowDialog();
            }
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente sair do seu usuário", "Cuidado", MessageBoxButtons.YesNo) == DialogResult.No)
            {
                return;
            }
            new Funcionario().LimparDados();
            using (FormLogin frm = new FormLogin())
            {
                frm.ShowDialog();
            }
        }

        private void sobreToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (FormSobre frm = new FormSobre())
            {
                frm.ShowDialog();
            }
        }

        private void sobreToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            using (FormSobre frm = new FormSobre())
            {
                frm.ShowDialog();
            }
        }

    }
}
