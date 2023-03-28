using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BankApplication.Models
{
    public class Statement
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public List<Statemomentum> StatementList { get; set; }
    }
    public class Statemomentum
    {
        public DateTime TranDate { get; set; }
        public float Amount { get; set; }
        public string TranType { get; set; }
    }
}