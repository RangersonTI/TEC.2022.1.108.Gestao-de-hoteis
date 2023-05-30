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
using WindowsFormsPrincipal1;

namespace WindowsFormsAppGestaoHotel
{
    public partial class ListReserva : UserControl
    {
        public ListReserva()
        {
            InitializeComponent();
        }

        private void pictureBoxCancelar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja cancelar esta reserva?", "Atenção", MessageBoxButtons.YesNo) == DialogResult.No)
                return;

            ListReserva _listReserva = this;
            _listReserva.Visible = false;
            
        }


        #region Getter & Setter For Labels

        private int _id;
        private string _numero;
        private string _classe;
        private string _hospede;
        private string _dataCheckin;
        private string _dataCheckout;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        [Category("Custom Props")]
        public string Numero
        { 
            get { return _numero; }
            set { _numero = value; labelNumeroQuarto.Text = value; }
        }

        [Category("Custom Props")]
        public string Classe
        {
            get { return _classe; }
            set { _classe = value; labelTipoQuarto.Text = value; }
        }

        [Category("Custom Props")]
        public string Hospede
        {
            get { return _hospede; }
            set { _hospede = value; labelNomeHospede.Text = value; }
        }

        [Category("Custom Props")]
        public string DataCheckin
        {
            get { return _dataCheckin; }
            set { _dataCheckin = value; labelDataCheckIn.Text = value; }
        }

        [Category("Custom Props")]
        public string DataCheckout
        {
            get { return _dataCheckout; }
            set { _dataCheckout = value; labelDataCheckOut.Text = value; }
        }

        #endregion

        private void pictureBoxCheckIn_Click(object sender, EventArgs e)
        {
            using (FormReservaCheckIn frm = new FormReservaCheckIn())
            {
                frm.ShowDialog();
            }
        }

        private void pictureBoxCheckOut_Click(object sender, EventArgs e)
        {
            using (FormReservaCheckOut frm = new FormReservaCheckOut())
            {
                frm.ShowDialog();
            }
        }

        private void pictureBoxAlterar_Click(object sender, EventArgs e)
        {
            int id = this.Id;
            using (FormCadastroReserva frm = new FormCadastroReserva(id))
            {
                frm.ShowDialog();
            }
        }
    }
}
