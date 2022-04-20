using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaVistaSeguridadHSC;
using CapaVistaRRHH;



namespace CapaVista
{
    public partial class frmMDI : Form
    {
        public frmMDI()
        {
            InitializeComponent();
        }

        private void frmMDI_Load(object sender, EventArgs e)
        {
            frmLoginHSC form = new frmLoginHSC();
            if (form.ShowDialog() == DialogResult.OK)
            {
                txtUsuario.Text = form.usuario();
            }
            else
            {
                this.Close();
            }
        }

        private void cerrarSesiónToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLoginHSC form = new frmLoginHSC();
            if (form.ShowDialog() == DialogResult.OK)
            {
                txtUsuario.Text = form.usuario();
            }
            else
            { this.Close(); }
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void empleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEmpleados form = new frmEmpleados();
        }

        private void usuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMantenimientoUsuario form = new frmMantenimientoUsuario();
        }

        private void tipoDeporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmTipoDeporte form3 = new frmTipoDeporte();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }

        private void campeonatoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmCampeonato form3 = new frmCampeonato();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }

        private void entrenadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmEntrenador form3 = new frmEntrenador();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }

        private void sedeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmSede form3 = new frmSede();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }

        private void equipoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmEquipo form3 = new frmEquipo();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }

        private void jugadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                frmJugador form3 = new frmJugador();
                form3.MdiParent = this;
                form3.Show();
            }
            catch (Exception ex) { MessageBox.Show("Error: " + ex); }
        }
    }
}
