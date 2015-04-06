using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cartoon.Controls
{
    public partial class NavigationMenu : System.Web.UI.UserControl
    {

        private HyperLink _linkHome;
        private HyperLink _linkContact;
        private HyperLink _linkAbout;
        private HyperLink _linkCartoons;

        protected void Page_Load(object sender, EventArgs e)
        {
            _linkHome = new HyperLink();
            _linkContact = new HyperLink();
            _linkAbout = new HyperLink();
            _linkCartoons = new HyperLink();

            _linkHome.Text = "Home";
            _linkHome.NavigateUrl = "default.aspx";            

            _linkContact.Text = "Contact";
            _linkContact.NavigateUrl = "Contact.aspx";

            _linkCartoons.Text = "Cartoons";
            _linkCartoons.NavigateUrl = "Cartoons.aspx";

            _linkAbout.Text ="About";
            _linkAbout.NavigateUrl ="about.asx";

            navMenu.Controls.Add(_linkHome);
            navMenu.Controls.Add(_linkCartoons);
            navMenu.Controls.Add(_linkAbout);
            navMenu.Controls.Add(_linkContact);
        }
    }
}