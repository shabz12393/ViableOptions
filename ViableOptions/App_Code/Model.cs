using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>

    namespace Model
{

    public class Users
    {
        public Users()
        {

        }

        public Users(int userId, string user, string role)
        {
            this.userId = userId;
            this.user = user;
            this.role = role;
        }

        public int userId { get; set; }
        public string user { get; set; }
        public string role { get; set; }
    }

    public class RecordBooking
    {
        public RecordBooking()
        {

        }

        public string booking_id { get; set; }
        public string booking_code { get; set; }
        public string customer { get; set; }
        public string customer_code { get; set; }
        public string staff_code { get; set; }
        public int staff_id { get; set; }
        public int event_id { get; set; }
        public string venue { get; set; }
        public string delivery_date { get; set; }
        public string return_date { get; set; }
        public string start_time { get; set; }
        public string end_time { get; set; }
        public string description { get; set; }
        public string emails { get; set; }
    }
    public class BookItems
    {
        public BookItems()
        {

        }

        public string booking_id { get; set; }
        public int staff_id { get; set; }
        public int item_id { get; set; }
        public int unit_price { get; set; }
        public decimal quantity { get; set; }
    }
    public class EventItems
    {
        public EventItems()
        {

        }

        public int serial_no { get; set; }
        public string item { get; set; }
        public int unit_price { get; set; }
        public int quantity { get; set; }
        public int total_amount { get; set; }
        public string item_status { get; set; }
    }

    public class Payments
    {
        public Payments()
        {

        }

        public int payment_id { get; set; }
        public string booking_id { get; set; }
        public string cashier { get; set; }
        public int deposit { get; set; }
        public int amount_refunded { get; set; }
        public int discount { get; set; }
        public string payment_mode { get; set; }
        public string payment_date { get; set; }
        public string receipt_no { get; set; }
        public string notes { get; set; }
    }
    public class Response
    {
        public string message { get; set; }

        public Response(string message)
        {
            this.message = message;
        }
    }
}