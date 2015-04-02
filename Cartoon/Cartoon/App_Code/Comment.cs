using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace Cartoon.App_Code
{
    public class Comment
    {

        private string _userName = string.Empty;
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        private string _text = string.Empty;
        public string Text
        {
            get { return _text; }
            set { _text = value; }
        }
        
        public Comment()
        {
        }

        
        public XElement ToXML()
        {
            return new XElement("Comment");
        }
    }
}