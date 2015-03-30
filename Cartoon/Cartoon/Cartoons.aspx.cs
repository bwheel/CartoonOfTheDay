using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cartoon
{
    public partial class Cartoons : System.Web.UI.Page
    {

        // Quite possible we don't need this page load. and it is quite possible we don't need a .aspx page but will require more research.
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        [ScriptMethod]
        public static string GetCartoon(string param1, string param2)
        {
            return "This is where the inmages in xml format goes. \n" + param1 + "\n" + param2;
        }
    }
}