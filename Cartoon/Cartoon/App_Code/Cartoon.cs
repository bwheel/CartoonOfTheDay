using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace Cartoon.App_Code
{
    public class Cartoon
    {
        private string _source = string.Empty; // TODO: initalize this to default image.
        public string Source
        {
            get;
            set;
        }

        private int _height = 0;
	    public int Height
	    {
		    get { return _height;}
		    set { _height = value;}
	    }
	    
        private int _width = 0;
	    public int Width
	    {
		    get { return _width;}
		    set { _width = value;}
	    }

	    private DateTime _date = DateTime.Parse("1/1/1900 00:00");
	    public DateTime Date
	    {
		    get { return _date;}
		    set { _date = value;}
	    }

        private string _title = "Empty";
	    public string Title
	    {
		    get { return _title;}
		    set { _title = value;}
	    }
	    
        private List<Comment> _comments = new List<Comment>();
	    public List<Comment> Comments
	    {
		    get { return _comments;}
		    set {  _comments = value;}
    	}
	
        public Cartoon()
        {
        }

        public XElement ToXML()
        {
            XElement result;
            List<XElement> comments = new List<XElement>();

            Comments.ForEach(x => comments.Add(x.ToXML())); // generate xml for every comment.

            result = new XElement("Cartoon",new XAttribute("Title",Title), 
                new XElement("img", new XAttribute("src", Source), new XAttribute("height",Height), new XAttribute("width",Width)), // image tag
                new XElement("date", new XAttribute("Year", Date.Year), new XAttribute("Month",  Date.Month), new XAttribute("Day",  Date.Day)) ,// date tag
                new XElement ("CommentList", new XAttribute("Count",comments.Count()),
                    comments.ToArray<XElement>()) // add comments.
                ); 

            return result;
        }


    }
}