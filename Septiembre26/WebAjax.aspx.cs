using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Septiembre26
{
    public partial class WebAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // leer el valor del texto
            string texto=TextBox1.Text;

            // convertirlo en un numero
            int valor=Convert.ToInt32(texto);

            // incrementarlo
            valor=valor+1; // valor++; // valor+=1;

            // asignar el valor al cuadro de texto
            TextBox1.Text=valor.ToString(); 

            // Convert.ToString(valor);
            // .ToString() convienrte un valor en string

            TextBox1.Text= (Convert.ToInt32(TextBox1.Text) + 1 ).ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // leer el valor del texto
            string texto = TextBox2.Text;

            // convertirlo en un numero
            int valor = Convert.ToInt32(texto);

            // incrementarlo
            valor = valor + 1; // valor++; // valor+=1;

            // asignar el valor al cuadro de texto
            TextBox2.Text = valor.ToString();

            // Convert.ToString(valor);
            // .ToString() convienrte un valor en string

            // El mismo comando en una linea:
            TextBox2.Text = (Convert.ToInt32(TextBox2.Text) + 1).ToString();

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            // clase para trabajar con fecha y hora
            DateTime tiempo=new DateTime();
            tiempo=DateTime.Now; // asignamos la fecha y hora actual

            TextBox3.Text=tiempo.ToString("dd/MM/yyyy hh:mm:ss");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // No olvidar agregar el using.
            Thread.Sleep(2000); // se detiene dos segundo
            Button3.Text="Se presiono el boton";
            TextBox1.Text="cambiado";
        }
    }
}