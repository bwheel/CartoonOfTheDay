using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cartoon.Admin
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void hideAll()
        {
            pnlDownload.Visible = false;
            pnlRemove.Visible = false;
            pnlUpload.Visible = false;
            pnlView.Visible = false;
        }


        protected void btnShowUpload_Click(object sender, EventArgs e)
        {
            hideAll();
            pnlUpload.Visible = true;
        }

        protected void btnShowDownload_Click(object sender, EventArgs e)
        {
            hideAll();
            pnlDownload.Visible = true;
            // TODO: populate check box with cartoon names
        }

        protected void btnShowView_Click(object sender, EventArgs e)
        {
            hideAll();
            pnlView.Visible = true;
        }

        protected void btnShowRemove_Click(object sender, EventArgs e)
        {
            hideAll();
            pnlRemove.Visible = true;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Step 1: get image location
            // Step 2: move image to cartoons folder
            // Step 3: connect to database
            // Step 4: Write new cartoon record in table
            // Step 5: Hide all the panels
            hideAll();
            // Step 6: Show success or error
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            // Step 1: determine if calendar or checkbox 
            // Step 2: connect to database
            // Step 3: find image in database
            // return to user the image
            hideAll();
            // Step 6: Show success or error
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            // Step 1: determine if calendar or checkbox 
            // Step 2: connect to database
            // Step 3: find image in database
            // return to user the image
            hideAll();
            // Step 6: Show success or error

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // Step 1: determine if calendar or checkbox 
            // Step 2: connect to database
            // Step 3: find image in database
            // Step 4: remove image from folder
            // Step 5: set image in list to disables
            hideAll();
            // Step 6: Show success or error
        }

        
    }
}