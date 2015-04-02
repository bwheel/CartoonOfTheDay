using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml.Linq;

namespace Cartoon
{
    /// <summary>
    /// Summary description for webServiceCartoon
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    [System.Web.Script.Services.ScriptService]
    public class webServiceCartoon : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string GetCartoons(string year, string month, string day, int count)
        {
            XElement result = null;

            // Step 1: Query the database for cartoon.
            // Step 2: Create cartoon objects foreach cartoon.
            // Step 3: Build xml to return from each cartoon object .ToXML() function.

            return result.ToString();
        }

        [WebMethod]
        public string GetComment(int cartoonID)
        {
            XElement result = null;

            // Step 1: Query the database for comments from that ID
            // Step 2: Create comment objects for every comment
            // Step 3: Create xml to return from each comment object .ToXML() functino.

            return result.ToString();
        }

    }
}
