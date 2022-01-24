using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Net;

public struct UserDetails
{
    public int user_id;
    public string full_name;
    public int role_id;
    public string role;
    public string staff_code;
}
public static class CatalogAccess
{
    static CatalogAccess()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    // Retrieve Deprecated Stocks
    public static DataTable GetDeprecatedStocks()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getDeprecatedStocks";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve payments for deprecated stocks
    public static DataTable GetPaymentsForStockDeprecated(int serial_no)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getPaymentsForStockDeprecated";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@serial_no";
        param.Value = serial_no;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Customer Bookings By paymentType
    public static DataTable GetBookings()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getBookings";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Low Stocks
    public static DataTable GetStockForPurchase()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getStockForPurchase";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve booking details
    public static DataTable GetBookingDetails(string booking_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetBookingDetails";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@booking_id";
        param.Value = booking_id;
        param.DbType = DbType.String;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Payments For bookings
    public static DataTable GetPaymentsForBooking(string booking_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getPaymentsForBooking";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@booking_id";
        param.Value = booking_id;
        param.DbType = DbType.String;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve bookings for paymentId
    public static DataTable GetBookingForPayment(int payment_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getBookingForPayment";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@payment_id";
        param.Value = payment_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    //Kwik Login
    public static UserDetails ViableLogin(string user_name, string password)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "ViableLogin";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@user_name";
        param.Value = user_name;
        param.DbType = DbType.String;
        param.Size = 50;
        comm.Parameters.Add(param);

        // create a new parameter
        param = comm.CreateParameter();
        param.ParameterName = "@password";
        param.Value = password;
        param.DbType = DbType.String;
        param.Size = 250;
        comm.Parameters.Add(param);

        // create a new parameter (out)
        param = comm.CreateParameter();
        param.ParameterName = "@role_id";
        param.Direction = ParameterDirection.Output;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);


        // create a new parameter (out)
        param = comm.CreateParameter();
        param.ParameterName = "@user_id";
        param.Direction = ParameterDirection.Output;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);

        // create a new parameter (out)
        param = comm.CreateParameter();
        param.ParameterName = "@role";
        param.Direction = ParameterDirection.Output;
        param.DbType = DbType.String;
        param.Size = 20;
        comm.Parameters.Add(param);

        // create a new parameter (out)
        param = comm.CreateParameter();
        param.ParameterName = "@staff_code";
        param.Direction = ParameterDirection.Output;
        param.DbType = DbType.String;
        param.Size = 50;
        comm.Parameters.Add(param);

        // create a new parameter (out)
        param = comm.CreateParameter();
        param.ParameterName = "@full_name";
        param.Direction = ParameterDirection.Output;
        param.DbType = DbType.String;
        param.Size = 250;
        comm.Parameters.Add(param);


        // execute the stored procedure
        GenericDataAccess.ExecuteSelectCommand(comm);

        UserDetails user = new UserDetails();
        user.full_name = comm.Parameters["@full_name"].Value.ToString();
        user.role_id = Int32.Parse(comm.Parameters["@role_id"].Value.ToString());
        user.user_id = Int32.Parse(comm.Parameters["@user_id"].Value.ToString());
        user.role = comm.Parameters["@role"].Value.ToString();
        user.staff_code = comm.Parameters["@staff_code"].Value.ToString();

        return user;
    }
    // Retrieve Menus By role
    public static DataTable GetMenuByRole(int role_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getMenuByRole";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@role_id";
        param.Value = role_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve items booked for bookingId
    public static DataTable GetItemsBooked(string booking_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getItemsBooked";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@booking_id";
        param.Value = booking_id;
        param.DbType = DbType.String;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Guestss for booking
    public static DataTable GetGuestsForBooking(string booking_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getGuestsForBooking";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@booking_id";
        param.Value = booking_id;
        param.DbType = DbType.String;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Details for booking
    public static DataTable GetDetailsForBooking(string bookingId)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getDetailsForBooking";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@booking_id";
        param.Value = bookingId;
        param.DbType = DbType.String;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Staffs 
    public static DataTable GetStaffs()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetStaffs";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve items booked for bookingId
    public static DataTable GetStaffDetail(int staff_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetStaffDetail";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@staff_id";
        param.Value = staff_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Staffs with Email address
    public static DataTable GetStaffWithEmail()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getStaffWithEmail";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Customers
    public static DataTable GetCustomers()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getCustomers";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Customers
    public static DataTable GetItemsBooked()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getItemsForEvent";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Categories
    public static DataTable GetCategories()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetCategories";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Users
    public static DataTable GetUsers()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetUsers";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve other roles not control
    public static DataTable GetOtherRoles()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetOtherRoles";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Customers
    public static DataTable GetBookedItems()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetBookedItems";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve the list of Items
    public static DataTable GetItems()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getItems";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve Menus By role
    public static DataTable GetItemDetails(int item_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetItemDetails";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@item_id";
        param.Value = item_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Menus By role
    public static DataTable GetSubMenuByMenu(int menu_id)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetSMForMenu";

        // create a new parameter
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@menu_id";
        param.Value = menu_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Retrieve Stock available for a specific date
    public static DataTable GetStockForDate(DateTime delivery_dt, int item_id)
    {
       // start_dt = DateTime.Parse(start_dt.ToString("dd-mm-yyyy"));
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getStockAvailableForDate";

        // create a new parameter
        DbParameter param;
        if (delivery_dt != null)
        {
            param = comm.CreateParameter();
            param.ParameterName = "@start_dt";
            param.Value = delivery_dt;
            param.DbType = DbType.Date;
            comm.Parameters.Add(param);
        }

        // create a new parameter
        param = comm.CreateParameter();
        param.ParameterName = "@item_id";
        param.Value = item_id;
        param.DbType = DbType.Int32;
        comm.Parameters.Add(param);
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Events 
    public static DataTable GetEvents()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetEvents";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Booking Types 
    public static DataTable GetBookingTypes()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetBookingTypes";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }


    // Retrieve the list of Customer Refunds 
    public static DataTable GetRefunds()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetRefunds";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Payment Modes 
    public static DataTable GetPaymentModes()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetPaymentModes";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Payments 
    public static DataTable GetPayments()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetPayments";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Payments 
    public static DataTable GetCustomerWithEvent()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetCustomerWithEvent";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of Stocks 
    public static DataTable GetStocks()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "getStocks";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
}
