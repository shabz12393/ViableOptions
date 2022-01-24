using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

/// <summary>
/// Summary description for xrCustomer
/// </summary>
public class xrCustomer : DevExpress.XtraReports.UI.XtraReport
{
    private DevExpress.DataAccess.Sql.SqlDataSource sqlDataSource1;
    private XRControlStyle Title;
    private XRControlStyle GroupCaption1;
    private XRControlStyle GroupData1;
    private XRControlStyle DetailCaption1;
    private XRControlStyle DetailData1;
    private XRControlStyle DetailCaption2;
    private XRControlStyle DetailData2;
    private XRControlStyle DetailData3_Odd;
    private XRControlStyle TotalCaption1;
    private XRControlStyle TotalData1;
    private XRControlStyle TotalBackground1;
    private XRControlStyle GrandTotalCaption1;
    private XRControlStyle GrandTotalData1;
    private XRControlStyle GrandTotalBackground1;
    private XRControlStyle GrandTotalCaption2;
    private XRControlStyle GrandTotalData2;
    private XRControlStyle GrandTotalBackground2;
    private XRControlStyle PageInfo;
    private TopMarginBand TopMargin;
    private BottomMarginBand BottomMargin;
    private XRPageInfo pageInfo1;
    private XRPageInfo pageInfo2;
    private ReportHeaderBand ReportHeader;
    private XRLabel label1;
    private GroupHeaderBand GroupHeader1;
    private XRTable table1;
    private XRTableRow tableRow1;
    private XRTableCell tableCell1;
    private XRTableCell tableCell2;
    private GroupHeaderBand GroupHeader2;
    private XRTable table2;
    private XRTableRow tableRow2;
    private XRTableCell tableCell3;
    private XRTableCell tableCell4;
    private DetailBand Detail;
    private XRTable table3;
    private XRTableRow tableRow3;
    private XRTableCell tableCell5;
    private XRTableCell tableCell6;
    private XRTableCell tableCell7;
    private XRTableCell tableCell8;
    private XRTableCell tableCell9;
    private XRTableCell tableCell10;
    private XRTableCell tableCell11;
    private XRTableRow tableRow4;
    private XRTableCell tableCell12;
    private XRTableCell tableCell13;
    private XRTableCell tableCell14;
    private XRTableCell tableCell15;
    private XRTableCell tableCell16;
    private XRTableCell tableCell17;
    private XRTableCell tableCell18;
    private GroupFooterBand GroupFooter1;
    private XRPanel panel1;
    private XRLabel label2;
    private XRLabel label3;
    private XRLabel label5;
    private XRLabel label7;
    private XRLabel label8;
    private GroupFooterBand GroupFooter2;
    private XRPanel panel2;
    private XRLabel label9;
    private XRLabel label10;
    private XRLabel label12;
    private XRLabel label14;
    private XRLabel label15;
    private ReportFooterBand ReportFooter;
    private XRPanel panel3;
    private XRLabel label16;
    private XRLabel label17;
    private XRLabel label19;
    private XRLabel label21;
    private DetailReportBand DetailReport;
    private GroupHeaderBand GroupHeader3;
    private XRTable table4;
    private XRTableRow tableRow5;
    private XRTableCell tableCell19;
    private XRTableCell tableCell20;
    private XRTableCell tableCell21;
    private XRTableCell tableCell24;
    private DetailBand Detail1;
    private XRTable table5;
    private XRTableRow tableRow6;
    private XRTableCell tableCell25;
    private XRTableCell tableCell26;
    private XRTableCell tableCell27;
    private XRTableCell tableCell30;
    private DetailReportBand DetailReport1;
    private GroupHeaderBand GroupHeader4;
    private XRTable table6;
    private XRTableRow tableRow7;
    private XRTableCell tableCell31;
    private XRTableCell tableCell32;
    private XRTableCell tableCell33;
    private XRTableCell tableCell34;
    private DetailBand Detail2;
    private XRTable table7;
    private XRTableRow tableRow8;
    private XRTableCell tableCell35;
    private XRTableCell tableCell36;
    private XRTableCell tableCell37;
    private XRTableCell tableCell38;
    private ReportFooterBand ReportFooter1;
    private XRPanel panel4;
    private XRLabel label22;
    private XRLabel label27;
    private DetailReportBand DetailReport2;
    private GroupHeaderBand GroupHeader5;
    private XRTable table8;
    private XRTableRow tableRow9;
    private XRTableCell tableCell41;
    private XRTableCell tableCell42;
    private XRTableCell tableCell43;
    private XRTableCell tableCell44;
    private XRTableCell tableCell45;
    private XRTableCell tableCell46;
    private XRTableCell tableCell47;
    private XRTableCell tableCell48;
    private DetailBand Detail3;
    private XRTable table9;
    private XRTableRow tableRow10;
    private XRTableCell tableCell51;
    private XRTableCell tableCell52;
    private XRTableCell tableCell53;
    private XRTableCell tableCell54;
    private XRTableCell tableCell55;
    private XRTableCell tableCell56;
    private XRTableCell tableCell57;
    private XRTableCell tableCell58;
    private ReportFooterBand ReportFooter2;
    private XRPanel panel5;
    private XRLabel label28;
    private XRLabel label29;
    private XRLabel label31;
    private XRLabel label33;
    private XRLabel label35;
    private DevExpress.DataAccess.Sql.SqlDataSource sqlDataSource2;
    private DevExpress.XtraReports.Parameters.Parameter Customer;
    private DevExpress.XtraReports.Parameters.Parameter Start;
    private DevExpress.XtraReports.Parameters.Parameter End;

    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    public xrCustomer()
    {
        InitializeComponent();
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary> 
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    #region Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
            string resourceFileName = "xrCustomer.resx";
            System.Resources.ResourceManager resources = global::Resources.xrCustomer.ResourceManager;
            this.components = new System.ComponentModel.Container();
            DevExpress.DataAccess.Sql.StoredProcQuery storedProcQuery1 = new DevExpress.DataAccess.Sql.StoredProcQuery();
            DevExpress.DataAccess.Sql.StoredProcQuery storedProcQuery2 = new DevExpress.DataAccess.Sql.StoredProcQuery();
            DevExpress.DataAccess.Sql.QueryParameter queryParameter1 = new DevExpress.DataAccess.Sql.QueryParameter();
            DevExpress.DataAccess.Sql.QueryParameter queryParameter2 = new DevExpress.DataAccess.Sql.QueryParameter();
            DevExpress.DataAccess.Sql.QueryParameter queryParameter3 = new DevExpress.DataAccess.Sql.QueryParameter();
            DevExpress.DataAccess.Sql.StoredProcQuery storedProcQuery3 = new DevExpress.DataAccess.Sql.StoredProcQuery();
            DevExpress.DataAccess.Sql.StoredProcQuery storedProcQuery4 = new DevExpress.DataAccess.Sql.StoredProcQuery();
            DevExpress.DataAccess.Sql.StoredProcQuery storedProcQuery5 = new DevExpress.DataAccess.Sql.StoredProcQuery();
            DevExpress.DataAccess.Sql.MasterDetailInfo masterDetailInfo1 = new DevExpress.DataAccess.Sql.MasterDetailInfo();
            DevExpress.DataAccess.Sql.RelationColumnInfo relationColumnInfo1 = new DevExpress.DataAccess.Sql.RelationColumnInfo();
            DevExpress.DataAccess.Sql.MasterDetailInfo masterDetailInfo2 = new DevExpress.DataAccess.Sql.MasterDetailInfo();
            DevExpress.DataAccess.Sql.RelationColumnInfo relationColumnInfo2 = new DevExpress.DataAccess.Sql.RelationColumnInfo();
            DevExpress.DataAccess.Sql.MasterDetailInfo masterDetailInfo3 = new DevExpress.DataAccess.Sql.MasterDetailInfo();
            DevExpress.DataAccess.Sql.RelationColumnInfo relationColumnInfo3 = new DevExpress.DataAccess.Sql.RelationColumnInfo();
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary7 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary8 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary9 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary10 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary11 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary12 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary13 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary14 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.Parameters.DynamicListLookUpSettings dynamicListLookUpSettings1 = new DevExpress.XtraReports.Parameters.DynamicListLookUpSettings();
            this.sqlDataSource2 = new DevExpress.DataAccess.Sql.SqlDataSource(this.components);
            this.sqlDataSource1 = new DevExpress.DataAccess.Sql.SqlDataSource(this.components);
            this.Title = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupCaption1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupData1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailCaption1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailData1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailCaption2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailData2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailData3_Odd = new DevExpress.XtraReports.UI.XRControlStyle();
            this.TotalCaption1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.TotalData1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.TotalBackground1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalCaption1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalData1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalBackground1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalCaption2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalData2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GrandTotalBackground2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.PageInfo = new DevExpress.XtraReports.UI.XRControlStyle();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.BottomMargin = new DevExpress.XtraReports.UI.BottomMarginBand();
            this.pageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.pageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.label1 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.table1 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.table2 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.table3 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.panel1 = new DevExpress.XtraReports.UI.XRPanel();
            this.label2 = new DevExpress.XtraReports.UI.XRLabel();
            this.label3 = new DevExpress.XtraReports.UI.XRLabel();
            this.label5 = new DevExpress.XtraReports.UI.XRLabel();
            this.label7 = new DevExpress.XtraReports.UI.XRLabel();
            this.label8 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.panel2 = new DevExpress.XtraReports.UI.XRPanel();
            this.label9 = new DevExpress.XtraReports.UI.XRLabel();
            this.label10 = new DevExpress.XtraReports.UI.XRLabel();
            this.label12 = new DevExpress.XtraReports.UI.XRLabel();
            this.label14 = new DevExpress.XtraReports.UI.XRLabel();
            this.label15 = new DevExpress.XtraReports.UI.XRLabel();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.panel3 = new DevExpress.XtraReports.UI.XRPanel();
            this.label16 = new DevExpress.XtraReports.UI.XRLabel();
            this.label17 = new DevExpress.XtraReports.UI.XRLabel();
            this.label19 = new DevExpress.XtraReports.UI.XRLabel();
            this.label21 = new DevExpress.XtraReports.UI.XRLabel();
            this.DetailReport = new DevExpress.XtraReports.UI.DetailReportBand();
            this.GroupHeader3 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.table4 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail1 = new DevExpress.XtraReports.UI.DetailBand();
            this.table5 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.DetailReport1 = new DevExpress.XtraReports.UI.DetailReportBand();
            this.GroupHeader4 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.table6 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell31 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail2 = new DevExpress.XtraReports.UI.DetailBand();
            this.table7 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell35 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter1 = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.panel4 = new DevExpress.XtraReports.UI.XRPanel();
            this.label22 = new DevExpress.XtraReports.UI.XRLabel();
            this.label27 = new DevExpress.XtraReports.UI.XRLabel();
            this.DetailReport2 = new DevExpress.XtraReports.UI.DetailReportBand();
            this.GroupHeader5 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.table8 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell41 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell42 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell43 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell44 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell45 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell46 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell47 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell48 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail3 = new DevExpress.XtraReports.UI.DetailBand();
            this.table9 = new DevExpress.XtraReports.UI.XRTable();
            this.tableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tableCell51 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell52 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell53 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell54 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell55 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell56 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell57 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableCell58 = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter2 = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.panel5 = new DevExpress.XtraReports.UI.XRPanel();
            this.label28 = new DevExpress.XtraReports.UI.XRLabel();
            this.label29 = new DevExpress.XtraReports.UI.XRLabel();
            this.label31 = new DevExpress.XtraReports.UI.XRLabel();
            this.label33 = new DevExpress.XtraReports.UI.XRLabel();
            this.label35 = new DevExpress.XtraReports.UI.XRLabel();
            this.Customer = new DevExpress.XtraReports.Parameters.Parameter();
            this.Start = new DevExpress.XtraReports.Parameters.Parameter();
            this.End = new DevExpress.XtraReports.Parameters.Parameter();
            ((System.ComponentModel.ISupportInitialize)(this.table1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.table9)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // sqlDataSource2
            // 
            this.sqlDataSource2.ConnectionName = "viableOptionsConnectionString";
            this.sqlDataSource2.Name = "sqlDataSource2";
            storedProcQuery1.Name = "getCustomers";
            storedProcQuery1.StoredProcName = "getCustomers";
            this.sqlDataSource2.Queries.AddRange(new DevExpress.DataAccess.Sql.SqlQuery[] {
            storedProcQuery1});
            this.sqlDataSource2.ResultSchemaSerializable = resources.GetString("sqlDataSource2.ResultSchemaSerializable");
            // 
            // sqlDataSource1
            // 
            this.sqlDataSource1.ConnectionName = "viableOptionsConnectionString";
            this.sqlDataSource1.Name = "sqlDataSource1";
            storedProcQuery2.Name = "getCustomerBookingsReport";
            queryParameter1.Name = "@customer_code";
            queryParameter1.Type = typeof(DevExpress.DataAccess.Expression);
            queryParameter1.Value = new DevExpress.DataAccess.Expression("?Customer", typeof(string));
            queryParameter2.Name = "@start_dt";
            queryParameter2.Type = typeof(DevExpress.DataAccess.Expression);
            queryParameter2.Value = new DevExpress.DataAccess.Expression("?Start", typeof(System.DateTime));
            queryParameter3.Name = "@end_dt";
            queryParameter3.Type = typeof(DevExpress.DataAccess.Expression);
            queryParameter3.Value = new DevExpress.DataAccess.Expression("?End", typeof(System.DateTime));
            storedProcQuery2.Parameters.Add(queryParameter1);
            storedProcQuery2.Parameters.Add(queryParameter2);
            storedProcQuery2.Parameters.Add(queryParameter3);
            storedProcQuery2.StoredProcName = "getCustomerBookingsReport";
            storedProcQuery3.Name = "getDetailForBookingReport";
            storedProcQuery3.StoredProcName = "getDetailsForBookingReport";
            storedProcQuery4.Name = "getItemsForBookingReport";
            storedProcQuery4.StoredProcName = "getItemsForBookingReport";
            storedProcQuery5.Name = "getPaymentForBookingReport";
            storedProcQuery5.StoredProcName = "getPaymentForBookingReport";
            this.sqlDataSource1.Queries.AddRange(new DevExpress.DataAccess.Sql.SqlQuery[] {
            storedProcQuery2,
            storedProcQuery3,
            storedProcQuery4,
            storedProcQuery5});
            masterDetailInfo1.DetailQueryName = "getDetailForBookingReport";
            relationColumnInfo1.NestedKeyColumn = "booking_id";
            relationColumnInfo1.ParentKeyColumn = "booking_id";
            masterDetailInfo1.KeyColumns.Add(relationColumnInfo1);
            masterDetailInfo1.MasterQueryName = "getCustomerBookingsReport";
            masterDetailInfo2.DetailQueryName = "getItemsForBookingReport";
            relationColumnInfo2.NestedKeyColumn = "booking_id";
            relationColumnInfo2.ParentKeyColumn = "booking_id";
            masterDetailInfo2.KeyColumns.Add(relationColumnInfo2);
            masterDetailInfo2.MasterQueryName = "getCustomerBookingsReport";
            masterDetailInfo3.DetailQueryName = "getPaymentForBookingReport";
            relationColumnInfo3.NestedKeyColumn = "booking_id";
            relationColumnInfo3.ParentKeyColumn = "booking_id";
            masterDetailInfo3.KeyColumns.Add(relationColumnInfo3);
            masterDetailInfo3.MasterQueryName = "getCustomerBookingsReport";
            this.sqlDataSource1.Relations.AddRange(new DevExpress.DataAccess.Sql.MasterDetailInfo[] {
            masterDetailInfo1,
            masterDetailInfo2,
            masterDetailInfo3});
            this.sqlDataSource1.ResultSchemaSerializable = resources.GetString("sqlDataSource1.ResultSchemaSerializable");
            // 
            // Title
            // 
            this.Title.BackColor = System.Drawing.Color.Transparent;
            this.Title.BorderColor = System.Drawing.Color.Black;
            this.Title.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.Title.BorderWidth = 1F;
            this.Title.Font = new System.Drawing.Font("Arial", 14.25F);
            this.Title.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.Title.Name = "Title";
            // 
            // GroupCaption1
            // 
            this.GroupCaption1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.GroupCaption1.BorderColor = System.Drawing.Color.White;
            this.GroupCaption1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.GroupCaption1.BorderWidth = 2F;
            this.GroupCaption1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GroupCaption1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(228)))), ((int)(((byte)(228)))));
            this.GroupCaption1.Name = "GroupCaption1";
            this.GroupCaption1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 2, 0, 0, 100F);
            this.GroupCaption1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GroupData1
            // 
            this.GroupData1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.GroupData1.BorderColor = System.Drawing.Color.White;
            this.GroupData1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.GroupData1.BorderWidth = 2F;
            this.GroupData1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GroupData1.ForeColor = System.Drawing.Color.White;
            this.GroupData1.Name = "GroupData1";
            this.GroupData1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 2, 0, 0, 100F);
            this.GroupData1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // DetailCaption1
            // 
            this.DetailCaption1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.DetailCaption1.BorderColor = System.Drawing.Color.White;
            this.DetailCaption1.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.DetailCaption1.BorderWidth = 2F;
            this.DetailCaption1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.DetailCaption1.ForeColor = System.Drawing.Color.White;
            this.DetailCaption1.Name = "DetailCaption1";
            this.DetailCaption1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 6, 0, 0, 100F);
            this.DetailCaption1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // DetailData1
            // 
            this.DetailData1.BorderColor = System.Drawing.Color.Transparent;
            this.DetailData1.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.DetailData1.BorderWidth = 2F;
            this.DetailData1.Font = new System.Drawing.Font("Arial", 8.25F);
            this.DetailData1.ForeColor = System.Drawing.Color.Black;
            this.DetailData1.Name = "DetailData1";
            this.DetailData1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 6, 0, 0, 100F);
            this.DetailData1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // DetailCaption2
            // 
            this.DetailCaption2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(111)))), ((int)(((byte)(111)))), ((int)(((byte)(111)))));
            this.DetailCaption2.BorderColor = System.Drawing.Color.White;
            this.DetailCaption2.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.DetailCaption2.BorderWidth = 2F;
            this.DetailCaption2.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.DetailCaption2.ForeColor = System.Drawing.Color.White;
            this.DetailCaption2.Name = "DetailCaption2";
            this.DetailCaption2.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 6, 0, 0, 100F);
            this.DetailCaption2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // DetailData2
            // 
            this.DetailData2.BorderColor = System.Drawing.Color.Transparent;
            this.DetailData2.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.DetailData2.BorderWidth = 2F;
            this.DetailData2.Font = new System.Drawing.Font("Arial", 8.25F);
            this.DetailData2.ForeColor = System.Drawing.Color.Black;
            this.DetailData2.Name = "DetailData2";
            this.DetailData2.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 6, 0, 0, 100F);
            this.DetailData2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // DetailData3_Odd
            // 
            this.DetailData3_Odd.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(231)))), ((int)(((byte)(231)))));
            this.DetailData3_Odd.BorderColor = System.Drawing.Color.Transparent;
            this.DetailData3_Odd.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.DetailData3_Odd.BorderWidth = 1F;
            this.DetailData3_Odd.Font = new System.Drawing.Font("Arial", 8.25F);
            this.DetailData3_Odd.ForeColor = System.Drawing.Color.Black;
            this.DetailData3_Odd.Name = "DetailData3_Odd";
            this.DetailData3_Odd.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 6, 0, 0, 100F);
            this.DetailData3_Odd.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // TotalCaption1
            // 
            this.TotalCaption1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.TotalCaption1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.TotalCaption1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(206)))), ((int)(((byte)(206)))), ((int)(((byte)(206)))));
            this.TotalCaption1.Name = "TotalCaption1";
            this.TotalCaption1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 2, 0, 0, 100F);
            this.TotalCaption1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // TotalData1
            // 
            this.TotalData1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.TotalData1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.TotalData1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.TotalData1.Name = "TotalData1";
            this.TotalData1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 6, 0, 0, 100F);
            this.TotalData1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // TotalBackground1
            // 
            this.TotalBackground1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(231)))), ((int)(((byte)(231)))));
            this.TotalBackground1.BorderColor = System.Drawing.Color.White;
            this.TotalBackground1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.TotalBackground1.BorderWidth = 2F;
            this.TotalBackground1.Name = "TotalBackground1";
            // 
            // GrandTotalCaption1
            // 
            this.GrandTotalCaption1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.GrandTotalCaption1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GrandTotalCaption1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(147)))), ((int)(((byte)(147)))), ((int)(((byte)(147)))));
            this.GrandTotalCaption1.Name = "GrandTotalCaption1";
            this.GrandTotalCaption1.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 2, 0, 0, 100F);
            this.GrandTotalCaption1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GrandTotalData1
            // 
            this.GrandTotalData1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.GrandTotalData1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GrandTotalData1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.GrandTotalData1.Name = "GrandTotalData1";
            this.GrandTotalData1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 6, 0, 0, 100F);
            this.GrandTotalData1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GrandTotalBackground1
            // 
            this.GrandTotalBackground1.BackColor = System.Drawing.Color.White;
            this.GrandTotalBackground1.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.GrandTotalBackground1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.GrandTotalBackground1.BorderWidth = 2F;
            this.GrandTotalBackground1.Name = "GrandTotalBackground1";
            // 
            // GrandTotalCaption2
            // 
            this.GrandTotalCaption2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.GrandTotalCaption2.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GrandTotalCaption2.ForeColor = System.Drawing.Color.Silver;
            this.GrandTotalCaption2.Name = "GrandTotalCaption2";
            this.GrandTotalCaption2.Padding = new DevExpress.XtraPrinting.PaddingInfo(6, 2, 0, 0, 100F);
            this.GrandTotalCaption2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GrandTotalData2
            // 
            this.GrandTotalData2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.GrandTotalData2.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.GrandTotalData2.ForeColor = System.Drawing.Color.White;
            this.GrandTotalData2.Name = "GrandTotalData2";
            this.GrandTotalData2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 6, 0, 0, 100F);
            this.GrandTotalData2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GrandTotalBackground2
            // 
            this.GrandTotalBackground2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.GrandTotalBackground2.BorderColor = System.Drawing.Color.White;
            this.GrandTotalBackground2.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.GrandTotalBackground2.BorderWidth = 2F;
            this.GrandTotalBackground2.Name = "GrandTotalBackground2";
            // 
            // PageInfo
            // 
            this.PageInfo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.PageInfo.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.PageInfo.Name = "PageInfo";
            this.PageInfo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            // 
            // TopMargin
            // 
            this.TopMargin.Name = "TopMargin";
            // 
            // BottomMargin
            // 
            this.BottomMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.pageInfo1,
            this.pageInfo2});
            this.BottomMargin.Name = "BottomMargin";
            // 
            // pageInfo1
            // 
            this.pageInfo1.LocationFloat = new DevExpress.Utils.PointFloat(5F, 5F);
            this.pageInfo1.Name = "pageInfo1";
            this.pageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.pageInfo1.SizeF = new System.Drawing.SizeF(315F, 23F);
            this.pageInfo1.StyleName = "PageInfo";
            // 
            // pageInfo2
            // 
            this.pageInfo2.LocationFloat = new DevExpress.Utils.PointFloat(330F, 5F);
            this.pageInfo2.Name = "pageInfo2";
            this.pageInfo2.SizeF = new System.Drawing.SizeF(315F, 23F);
            this.pageInfo2.StyleName = "PageInfo";
            this.pageInfo2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.pageInfo2.TextFormatString = "Page {0} of {1}";
            // 
            // ReportHeader
            // 
            this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label1});
            this.ReportHeader.HeightF = 60F;
            this.ReportHeader.Name = "ReportHeader";
            // 
            // label1
            // 
            this.label1.LocationFloat = new DevExpress.Utils.PointFloat(5F, 5F);
            this.label1.Name = "label1";
            this.label1.SizeF = new System.Drawing.SizeF(640F, 24.19433F);
            this.label1.StyleName = "Title";
            this.label1.StylePriority.UseTextAlignment = false;
            this.label1.Text = "Customer bookings";
            this.label1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table1});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("booking_type", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader1.HeightF = 27F;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // table1
            // 
            this.table1.LocationFloat = new DevExpress.Utils.PointFloat(0F, 1.999995F);
            this.table1.Name = "table1";
            this.table1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow1});
            this.table1.SizeF = new System.Drawing.SizeF(799.0001F, 25F);
            // 
            // tableRow1
            // 
            this.tableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell1,
            this.tableCell2});
            this.tableRow1.Name = "tableRow1";
            this.tableRow1.Weight = 1D;
            // 
            // tableCell1
            // 
            this.tableCell1.Name = "tableCell1";
            this.tableCell1.StyleName = "GroupCaption1";
            this.tableCell1.Text = "BOOKING TYPE";
            this.tableCell1.Weight = 0.441949725840113D;
            // 
            // tableCell2
            // 
            this.tableCell2.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[booking_type]")});
            this.tableCell2.Name = "tableCell2";
            this.tableCell2.StyleName = "GroupData1";
            this.tableCell2.Weight = 0.558050227209767D;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table2});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("customer", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader2.HeightF = 27F;
            this.GroupHeader2.Level = 1;
            this.GroupHeader2.Name = "GroupHeader2";
            // 
            // table2
            // 
            this.table2.LocationFloat = new DevExpress.Utils.PointFloat(0F, 1.999995F);
            this.table2.Name = "table2";
            this.table2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow2});
            this.table2.SizeF = new System.Drawing.SizeF(799.0001F, 25F);
            // 
            // tableRow2
            // 
            this.tableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell3,
            this.tableCell4});
            this.tableRow2.Name = "tableRow2";
            this.tableRow2.Weight = 1D;
            // 
            // tableCell3
            // 
            this.tableCell3.Name = "tableCell3";
            this.tableCell3.StyleName = "GroupCaption1";
            this.tableCell3.Text = "CUSTOMER";
            this.tableCell3.Weight = 0.44194975392911D;
            // 
            // tableCell4
            // 
            this.tableCell4.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[customer]")});
            this.tableCell4.Name = "tableCell4";
            this.tableCell4.StyleName = "GroupData1";
            this.tableCell4.Weight = 0.55805019912077D;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table3});
            this.Detail.HeightF = 56F;
            this.Detail.KeepTogether = true;
            this.Detail.Name = "Detail";
            // 
            // table3
            // 
            this.table3.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table3.Name = "table3";
            this.table3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow3,
            this.tableRow4});
            this.table3.SizeF = new System.Drawing.SizeF(799.0001F, 56F);
            // 
            // tableRow3
            // 
            this.tableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell5,
            this.tableCell6,
            this.tableCell7,
            this.tableCell8,
            this.tableCell9,
            this.tableCell10,
            this.tableCell11});
            this.tableRow3.Name = "tableRow3";
            this.tableRow3.Weight = 0.5D;
            // 
            // tableCell5
            // 
            this.tableCell5.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell5.Name = "tableCell5";
            this.tableCell5.StyleName = "DetailCaption1";
            this.tableCell5.StylePriority.UseBorders = false;
            this.tableCell5.Text = "reception";
            this.tableCell5.Weight = 0.144051325871394D;
            // 
            // tableCell6
            // 
            this.tableCell6.Name = "tableCell6";
            this.tableCell6.StyleName = "DetailCaption1";
            this.tableCell6.Text = "status";
            this.tableCell6.Weight = 0.141029632386138D;
            // 
            // tableCell7
            // 
            this.tableCell7.Name = "tableCell7";
            this.tableCell7.StyleName = "DetailCaption1";
            this.tableCell7.Text = "payment type";
            this.tableCell7.Weight = 0.141630567108364D;
            // 
            // tableCell8
            // 
            this.tableCell8.Name = "tableCell8";
            this.tableCell8.StyleName = "DetailCaption1";
            this.tableCell8.StylePriority.UseTextAlignment = false;
            this.tableCell8.Text = "paid";
            this.tableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell8.Weight = 0.143180778799282D;
            // 
            // tableCell9
            // 
            this.tableCell9.Name = "tableCell9";
            this.tableCell9.StyleName = "DetailCaption1";
            this.tableCell9.StylePriority.UseTextAlignment = false;
            this.tableCell9.Text = "balance";
            this.tableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell9.Weight = 0.127132884657183D;
            // 
            // tableCell10
            // 
            this.tableCell10.Name = "tableCell10";
            this.tableCell10.StyleName = "DetailCaption1";
            this.tableCell10.StylePriority.UseTextAlignment = false;
            this.tableCell10.Text = "discount";
            this.tableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell10.Weight = 0.0876660319746639D;
            // 
            // tableCell11
            // 
            this.tableCell11.Name = "tableCell11";
            this.tableCell11.StyleName = "DetailCaption1";
            this.tableCell11.Text = "payment status";
            this.tableCell11.Weight = 0.215308814415565D;
            // 
            // tableRow4
            // 
            this.tableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell12,
            this.tableCell13,
            this.tableCell14,
            this.tableCell15,
            this.tableCell16,
            this.tableCell17,
            this.tableCell18});
            this.tableRow4.Name = "tableRow4";
            this.tableRow4.Weight = 0.5D;
            // 
            // tableCell12
            // 
            this.tableCell12.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell12.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[reception]")});
            this.tableCell12.Name = "tableCell12";
            this.tableCell12.StyleName = "DetailData1";
            this.tableCell12.StylePriority.UseBorders = false;
            this.tableCell12.Weight = 0.144051325871394D;
            // 
            // tableCell13
            // 
            this.tableCell13.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[status]")});
            this.tableCell13.Name = "tableCell13";
            this.tableCell13.StyleName = "DetailData1";
            this.tableCell13.Weight = 0.141029632386138D;
            // 
            // tableCell14
            // 
            this.tableCell14.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[payment_type]")});
            this.tableCell14.Name = "tableCell14";
            this.tableCell14.StyleName = "DetailData1";
            this.tableCell14.Weight = 0.141630567108364D;
            // 
            // tableCell15
            // 
            this.tableCell15.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[paid]")});
            this.tableCell15.Name = "tableCell15";
            this.tableCell15.StyleName = "DetailData1";
            this.tableCell15.StylePriority.UseTextAlignment = false;
            this.tableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell15.TextFormatString = "{0:n0}";
            this.tableCell15.Weight = 0.143180778799282D;
            // 
            // tableCell16
            // 
            this.tableCell16.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[balance]")});
            this.tableCell16.Name = "tableCell16";
            this.tableCell16.StyleName = "DetailData1";
            this.tableCell16.StylePriority.UseTextAlignment = false;
            this.tableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell16.TextFormatString = "{0:n0}";
            this.tableCell16.Weight = 0.127133113825453D;
            // 
            // tableCell17
            // 
            this.tableCell17.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[discount]")});
            this.tableCell17.Name = "tableCell17";
            this.tableCell17.StyleName = "DetailData1";
            this.tableCell17.StylePriority.UseTextAlignment = false;
            this.tableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell17.TextFormatString = "{0:n0}";
            this.tableCell17.Weight = 0.0876658028063945D;
            // 
            // tableCell18
            // 
            this.tableCell18.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[payment_status]")});
            this.tableCell18.Name = "tableCell18";
            this.tableCell18.StyleName = "DetailData1";
            this.tableCell18.Weight = 0.215308814415565D;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.panel1});
            this.GroupFooter1.HeightF = 64.26888F;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // panel1
            // 
            this.panel1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label2,
            this.label3,
            this.label5,
            this.label7,
            this.label8});
            this.panel1.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.panel1.Name = "panel1";
            this.panel1.SizeF = new System.Drawing.SizeF(799.0001F, 64.26888F);
            this.panel1.StyleName = "TotalBackground1";
            // 
            // label2
            // 
            this.label2.LocationFloat = new DevExpress.Utils.PointFloat(287.2672F, 11.50001F);
            this.label2.Name = "label2";
            this.label2.SizeF = new System.Drawing.SizeF(53.67542F, 14.88444F);
            this.label2.StyleName = "TotalCaption1";
            this.label2.Text = "TOTAL";
            // 
            // label3
            // 
            this.label3.CanGrow = false;
            this.label3.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([paid])")});
            this.label3.LocationFloat = new DevExpress.Utils.PointFloat(340.9426F, 11.50001F);
            this.label3.Name = "label3";
            this.label3.SizeF = new System.Drawing.SizeF(114.4011F, 14.88444F);
            this.label3.StyleName = "TotalData1";
            this.label3.StylePriority.UseTextAlignment = false;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label3.Summary = xrSummary1;
            this.label3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label3.TextFormatString = "{0:n0}";
            this.label3.WordWrap = false;
            // 
            // label5
            // 
            this.label5.CanGrow = false;
            this.label5.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([balance])")});
            this.label5.LocationFloat = new DevExpress.Utils.PointFloat(455.3437F, 11.50001F);
            this.label5.Name = "label5";
            this.label5.SizeF = new System.Drawing.SizeF(101.5795F, 14.88444F);
            this.label5.StyleName = "TotalData1";
            this.label5.StylePriority.UseTextAlignment = false;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label5.Summary = xrSummary2;
            this.label5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label5.TextFormatString = "{0:n0}";
            this.label5.WordWrap = false;
            // 
            // label7
            // 
            this.label7.CanGrow = false;
            this.label7.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([discount])")});
            this.label7.LocationFloat = new DevExpress.Utils.PointFloat(556.9232F, 11.50001F);
            this.label7.Name = "label7";
            this.label7.SizeF = new System.Drawing.SizeF(70.04523F, 14.88444F);
            this.label7.StyleName = "TotalData1";
            this.label7.StylePriority.UseTextAlignment = false;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label7.Summary = xrSummary3;
            this.label7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label7.TextFormatString = "{0:n0}";
            this.label7.WordWrap = false;
            // 
            // label8
            // 
            this.label8.LocationFloat = new DevExpress.Utils.PointFloat(0F, 39.38445F);
            this.label8.Name = "label8";
            this.label8.SizeF = new System.Drawing.SizeF(793.0001F, 14.88444F);
            this.label8.StyleName = "TotalCaption1";
            this.label8.StylePriority.UseTextAlignment = false;
            this.label8.Text = "booking_type [booking_type]";
            this.label8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.panel2});
            this.GroupFooter2.HeightF = 64.26888F;
            this.GroupFooter2.Level = 1;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // panel2
            // 
            this.panel2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label9,
            this.label10,
            this.label12,
            this.label14,
            this.label15});
            this.panel2.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.panel2.Name = "panel2";
            this.panel2.SizeF = new System.Drawing.SizeF(799.0001F, 64.26888F);
            this.panel2.StyleName = "TotalBackground1";
            // 
            // label9
            // 
            this.label9.LocationFloat = new DevExpress.Utils.PointFloat(287.2672F, 11.50001F);
            this.label9.Name = "label9";
            this.label9.SizeF = new System.Drawing.SizeF(53.67517F, 14.88444F);
            this.label9.StyleName = "TotalCaption1";
            this.label9.Text = "TOTAL";
            // 
            // label10
            // 
            this.label10.CanGrow = false;
            this.label10.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([paid])")});
            this.label10.LocationFloat = new DevExpress.Utils.PointFloat(340.9424F, 11.50001F);
            this.label10.Name = "label10";
            this.label10.SizeF = new System.Drawing.SizeF(114.4013F, 14.88444F);
            this.label10.StyleName = "TotalData1";
            this.label10.StylePriority.UseTextAlignment = false;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label10.Summary = xrSummary4;
            this.label10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label10.TextFormatString = "{0:n0}";
            this.label10.WordWrap = false;
            // 
            // label12
            // 
            this.label12.CanGrow = false;
            this.label12.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([balance])")});
            this.label12.LocationFloat = new DevExpress.Utils.PointFloat(455.344F, 11.50001F);
            this.label12.Name = "label12";
            this.label12.SizeF = new System.Drawing.SizeF(101.5793F, 14.88444F);
            this.label12.StyleName = "TotalData1";
            this.label12.StylePriority.UseTextAlignment = false;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label12.Summary = xrSummary5;
            this.label12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label12.TextFormatString = "{0:n0}";
            this.label12.WordWrap = false;
            // 
            // label14
            // 
            this.label14.CanGrow = false;
            this.label14.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([discount])")});
            this.label14.LocationFloat = new DevExpress.Utils.PointFloat(556.9232F, 11.50001F);
            this.label14.Name = "label14";
            this.label14.SizeF = new System.Drawing.SizeF(70.04523F, 14.88444F);
            this.label14.StyleName = "TotalData1";
            this.label14.StylePriority.UseTextAlignment = false;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.label14.Summary = xrSummary6;
            this.label14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label14.TextFormatString = "{0:n0}";
            this.label14.WordWrap = false;
            // 
            // label15
            // 
            this.label15.LocationFloat = new DevExpress.Utils.PointFloat(5.999959F, 37.88442F);
            this.label15.Name = "label15";
            this.label15.SizeF = new System.Drawing.SizeF(793.0001F, 14.88444F);
            this.label15.StyleName = "TotalCaption1";
            this.label15.StylePriority.UseTextAlignment = false;
            this.label15.Text = "customer [customer]";
            this.label15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.panel3});
            this.ReportFooter.HeightF = 49.38444F;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // panel3
            // 
            this.panel3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label16,
            this.label17,
            this.label19,
            this.label21});
            this.panel3.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.panel3.Name = "panel3";
            this.panel3.SizeF = new System.Drawing.SizeF(799.0001F, 49.38444F);
            this.panel3.StyleName = "GrandTotalBackground1";
            // 
            // label16
            // 
            this.label16.LocationFloat = new DevExpress.Utils.PointFloat(227.7795F, 11.50001F);
            this.label16.Name = "label16";
            this.label16.SizeF = new System.Drawing.SizeF(113.1626F, 14.88444F);
            this.label16.StyleName = "GrandTotalCaption1";
            this.label16.Text = "GRAND TOTAL:";
            // 
            // label17
            // 
            this.label17.CanGrow = false;
            this.label17.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([paid])")});
            this.label17.LocationFloat = new DevExpress.Utils.PointFloat(340.9421F, 11.50001F);
            this.label17.Name = "label17";
            this.label17.SizeF = new System.Drawing.SizeF(114.4018F, 14.88444F);
            this.label17.StyleName = "GrandTotalData1";
            this.label17.StylePriority.UseTextAlignment = false;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label17.Summary = xrSummary7;
            this.label17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label17.TextFormatString = "{0:n0}";
            this.label17.WordWrap = false;
            // 
            // label19
            // 
            this.label19.CanGrow = false;
            this.label19.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([balance])")});
            this.label19.LocationFloat = new DevExpress.Utils.PointFloat(466.0122F, 11.50001F);
            this.label19.Name = "label19";
            this.label19.SizeF = new System.Drawing.SizeF(90.91104F, 14.88444F);
            this.label19.StyleName = "GrandTotalData1";
            this.label19.StylePriority.UseTextAlignment = false;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label19.Summary = xrSummary8;
            this.label19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label19.TextFormatString = "{0:n0}";
            this.label19.WordWrap = false;
            // 
            // label21
            // 
            this.label21.CanGrow = false;
            this.label21.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([discount])")});
            this.label21.LocationFloat = new DevExpress.Utils.PointFloat(556.9232F, 11.50001F);
            this.label21.Name = "label21";
            this.label21.SizeF = new System.Drawing.SizeF(70.04523F, 14.88444F);
            this.label21.StyleName = "GrandTotalData1";
            this.label21.StylePriority.UseTextAlignment = false;
            xrSummary9.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label21.Summary = xrSummary9;
            this.label21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label21.TextFormatString = "{0:n0}";
            this.label21.WordWrap = false;
            // 
            // DetailReport
            // 
            this.DetailReport.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.GroupHeader3,
            this.Detail1});
            this.DetailReport.DataMember = "getCustomerBookingsReport.getCustomerBookingsReportgetDetailForBookingReport";
            this.DetailReport.DataSource = this.sqlDataSource1;
            this.DetailReport.Level = 0;
            this.DetailReport.Name = "DetailReport";
            // 
            // GroupHeader3
            // 
            this.GroupHeader3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table4});
            this.GroupHeader3.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader3.HeightF = 28F;
            this.GroupHeader3.Name = "GroupHeader3";
            // 
            // table4
            // 
            this.table4.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table4.Name = "table4";
            this.table4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow5});
            this.table4.SizeF = new System.Drawing.SizeF(798.9998F, 28F);
            // 
            // tableRow5
            // 
            this.tableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell19,
            this.tableCell20,
            this.tableCell21,
            this.tableCell24});
            this.tableRow5.Name = "tableRow5";
            this.tableRow5.Weight = 1D;
            // 
            // tableCell19
            // 
            this.tableCell19.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell19.Name = "tableCell19";
            this.tableCell19.StyleName = "DetailCaption2";
            this.tableCell19.StylePriority.UseBorders = false;
            this.tableCell19.Text = "venue";
            this.tableCell19.Weight = 0.197338491586538D;
            // 
            // tableCell20
            // 
            this.tableCell20.Name = "tableCell20";
            this.tableCell20.StyleName = "DetailCaption2";
            this.tableCell20.Text = "delivery date";
            this.tableCell20.Weight = 0.223375737116887D;
            // 
            // tableCell21
            // 
            this.tableCell21.Name = "tableCell21";
            this.tableCell21.StyleName = "DetailCaption2";
            this.tableCell21.Text = "pick up date";
            this.tableCell21.Weight = 0.208187326284555D;
            // 
            // tableCell24
            // 
            this.tableCell24.Name = "tableCell24";
            this.tableCell24.StyleName = "DetailCaption2";
            this.tableCell24.Text = "notes";
            this.tableCell24.Weight = 0.151868520883413D;
            // 
            // Detail1
            // 
            this.Detail1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table5});
            this.Detail1.HeightF = 25F;
            this.Detail1.Name = "Detail1";
            // 
            // table5
            // 
            this.table5.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table5.Name = "table5";
            this.table5.OddStyleName = "DetailData3_Odd";
            this.table5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow6});
            this.table5.SizeF = new System.Drawing.SizeF(799.0001F, 25F);
            // 
            // tableRow6
            // 
            this.tableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell25,
            this.tableCell26,
            this.tableCell27,
            this.tableCell30});
            this.tableRow6.Name = "tableRow6";
            this.tableRow6.Weight = 11.5D;
            // 
            // tableCell25
            // 
            this.tableCell25.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell25.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[location]")});
            this.tableCell25.Name = "tableCell25";
            this.tableCell25.StyleName = "DetailData2";
            this.tableCell25.StylePriority.UseBorders = false;
            this.tableCell25.Weight = 0.197338491586538D;
            // 
            // tableCell26
            // 
            this.tableCell26.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[start date]")});
            this.tableCell26.Name = "tableCell26";
            this.tableCell26.StyleName = "DetailData2";
            this.tableCell26.TextFormatString = "{0:dddd, MMMM d, yyyy}";
            this.tableCell26.Weight = 0.223375737116887D;
            // 
            // tableCell27
            // 
            this.tableCell27.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[end date]")});
            this.tableCell27.Name = "tableCell27";
            this.tableCell27.StyleName = "DetailData2";
            this.tableCell27.TextFormatString = "{0:dddd, MMMM d, yyyy}";
            this.tableCell27.Weight = 0.208187326284555D;
            // 
            // tableCell30
            // 
            this.tableCell30.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[notes]")});
            this.tableCell30.Name = "tableCell30";
            this.tableCell30.StyleName = "DetailData2";
            this.tableCell30.Weight = 0.151868520883413D;
            // 
            // DetailReport1
            // 
            this.DetailReport1.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.GroupHeader4,
            this.Detail2,
            this.ReportFooter1});
            this.DetailReport1.DataMember = "getCustomerBookingsReport.getCustomerBookingsReportgetItemsForBookingReport";
            this.DetailReport1.DataSource = this.sqlDataSource1;
            this.DetailReport1.Level = 1;
            this.DetailReport1.Name = "DetailReport1";
            // 
            // GroupHeader4
            // 
            this.GroupHeader4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table6});
            this.GroupHeader4.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader4.HeightF = 28F;
            this.GroupHeader4.Name = "GroupHeader4";
            // 
            // table6
            // 
            this.table6.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table6.Name = "table6";
            this.table6.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow7});
            this.table6.SizeF = new System.Drawing.SizeF(799.0001F, 28F);
            // 
            // tableRow7
            // 
            this.tableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell31,
            this.tableCell32,
            this.tableCell33,
            this.tableCell34});
            this.tableRow7.Name = "tableRow7";
            this.tableRow7.Weight = 1D;
            // 
            // tableCell31
            // 
            this.tableCell31.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell31.Name = "tableCell31";
            this.tableCell31.StyleName = "DetailCaption2";
            this.tableCell31.StylePriority.UseBorders = false;
            this.tableCell31.Text = "ITEM DESCRIPTION";
            this.tableCell31.Weight = 0.194829254150391D;
            // 
            // tableCell32
            // 
            this.tableCell32.Name = "tableCell32";
            this.tableCell32.StyleName = "DetailCaption2";
            this.tableCell32.StylePriority.UseTextAlignment = false;
            this.tableCell32.Text = "UNIT COST";
            this.tableCell32.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell32.Weight = 0.214635995718149D;
            // 
            // tableCell33
            // 
            this.tableCell33.Name = "tableCell33";
            this.tableCell33.StyleName = "DetailCaption2";
            this.tableCell33.StylePriority.UseTextAlignment = false;
            this.tableCell33.Text = "QTY";
            this.tableCell33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell33.Weight = 0.303505671574519D;
            // 
            // tableCell34
            // 
            this.tableCell34.Name = "tableCell34";
            this.tableCell34.StyleName = "DetailCaption2";
            this.tableCell34.StylePriority.UseTextAlignment = false;
            this.tableCell34.Text = "TOTAL AMOUNT";
            this.tableCell34.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell34.Weight = 0.287029113769531D;
            // 
            // Detail2
            // 
            this.Detail2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table7});
            this.Detail2.HeightF = 25F;
            this.Detail2.Name = "Detail2";
            // 
            // table7
            // 
            this.table7.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table7.Name = "table7";
            this.table7.OddStyleName = "DetailData3_Odd";
            this.table7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow8});
            this.table7.SizeF = new System.Drawing.SizeF(799.0001F, 25F);
            // 
            // tableRow8
            // 
            this.tableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell35,
            this.tableCell36,
            this.tableCell37,
            this.tableCell38});
            this.tableRow8.Name = "tableRow8";
            this.tableRow8.Weight = 11.5D;
            // 
            // tableCell35
            // 
            this.tableCell35.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tableCell35.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[item]")});
            this.tableCell35.Name = "tableCell35";
            this.tableCell35.StyleName = "DetailData2";
            this.tableCell35.StylePriority.UseBorders = false;
            this.tableCell35.Weight = 0.194829242412861D;
            // 
            // tableCell36
            // 
            this.tableCell36.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[price]")});
            this.tableCell36.Name = "tableCell36";
            this.tableCell36.StyleName = "DetailData2";
            this.tableCell36.StylePriority.UseTextAlignment = false;
            this.tableCell36.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell36.TextFormatString = "{0:n0}";
            this.tableCell36.Weight = 0.214635995718149D;
            // 
            // tableCell37
            // 
            this.tableCell37.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[quantity]")});
            this.tableCell37.Name = "tableCell37";
            this.tableCell37.StyleName = "DetailData2";
            this.tableCell37.StylePriority.UseTextAlignment = false;
            this.tableCell37.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell37.Weight = 0.303505671574519D;
            // 
            // tableCell38
            // 
            this.tableCell38.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[amount]")});
            this.tableCell38.Name = "tableCell38";
            this.tableCell38.StyleName = "DetailData2";
            this.tableCell38.StylePriority.UseTextAlignment = false;
            this.tableCell38.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell38.TextFormatString = "{0:n0}";
            this.tableCell38.Weight = 0.287029090294471D;
            // 
            // ReportFooter1
            // 
            this.ReportFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.panel4});
            this.ReportFooter1.HeightF = 49.38444F;
            this.ReportFooter1.Name = "ReportFooter1";
            // 
            // panel4
            // 
            this.panel4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label22,
            this.label27});
            this.panel4.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.panel4.Name = "panel4";
            this.panel4.SizeF = new System.Drawing.SizeF(799.0001F, 49.38444F);
            this.panel4.StyleName = "GrandTotalBackground2";
            // 
            // label22
            // 
            this.label22.LocationFloat = new DevExpress.Utils.PointFloat(37.35771F, 10.00002F);
            this.label22.Name = "label22";
            this.label22.SizeF = new System.Drawing.SizeF(118.3108F, 14.88444F);
            this.label22.StyleName = "GrandTotalCaption2";
            this.label22.Text = "TOTAL";
            // 
            // label27
            // 
            this.label27.CanGrow = false;
            this.label27.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([amount])")});
            this.label27.LocationFloat = new DevExpress.Utils.PointFloat(569.6639F, 10F);
            this.label27.Name = "label27";
            this.label27.SizeF = new System.Drawing.SizeF(229.3362F, 14.88444F);
            this.label27.StyleName = "GrandTotalData2";
            this.label27.StylePriority.UseTextAlignment = false;
            xrSummary10.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label27.Summary = xrSummary10;
            this.label27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label27.TextFormatString = "{0:n0}";
            this.label27.WordWrap = false;
            // 
            // DetailReport2
            // 
            this.DetailReport2.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.GroupHeader5,
            this.Detail3,
            this.ReportFooter2});
            this.DetailReport2.DataMember = "getCustomerBookingsReport.getCustomerBookingsReportgetPaymentForBookingReport";
            this.DetailReport2.DataSource = this.sqlDataSource1;
            this.DetailReport2.Level = 2;
            this.DetailReport2.Name = "DetailReport2";
            // 
            // GroupHeader5
            // 
            this.GroupHeader5.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table8});
            this.GroupHeader5.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader5.HeightF = 28F;
            this.GroupHeader5.Name = "GroupHeader5";
            // 
            // table8
            // 
            this.table8.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table8.Name = "table8";
            this.table8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow9});
            this.table8.SizeF = new System.Drawing.SizeF(798.9998F, 28F);
            // 
            // tableRow9
            // 
            this.tableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell41,
            this.tableCell42,
            this.tableCell43,
            this.tableCell44,
            this.tableCell45,
            this.tableCell46,
            this.tableCell47,
            this.tableCell48});
            this.tableRow9.Name = "tableRow9";
            this.tableRow9.Weight = 1D;
            // 
            // tableCell41
            // 
            this.tableCell41.Name = "tableCell41";
            this.tableCell41.StyleName = "DetailCaption2";
            this.tableCell41.Text = "cashier";
            this.tableCell41.Weight = 0.111223231210981D;
            // 
            // tableCell42
            // 
            this.tableCell42.Name = "tableCell42";
            this.tableCell42.StyleName = "DetailCaption2";
            this.tableCell42.StylePriority.UseTextAlignment = false;
            this.tableCell42.Text = "deposit";
            this.tableCell42.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell42.Weight = 0.108889862056177D;
            // 
            // tableCell43
            // 
            this.tableCell43.Name = "tableCell43";
            this.tableCell43.StyleName = "DetailCaption2";
            this.tableCell43.StylePriority.UseTextAlignment = false;
            this.tableCell43.Text = "refunded";
            this.tableCell43.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell43.Weight = 0.0835766414876612D;
            // 
            // tableCell44
            // 
            this.tableCell44.Name = "tableCell44";
            this.tableCell44.StyleName = "DetailCaption2";
            this.tableCell44.StylePriority.UseTextAlignment = false;
            this.tableCell44.Text = "Paid";
            this.tableCell44.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell44.Weight = 0.103992656546987D;
            // 
            // tableCell45
            // 
            this.tableCell45.Name = "tableCell45";
            this.tableCell45.StyleName = "DetailCaption2";
            this.tableCell45.StylePriority.UseTextAlignment = false;
            this.tableCell45.Text = "discount";
            this.tableCell45.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell45.Weight = 0.0848929166909811D;
            // 
            // tableCell46
            // 
            this.tableCell46.Name = "tableCell46";
            this.tableCell46.StyleName = "DetailCaption2";
            this.tableCell46.Text = "mop";
            this.tableCell46.Weight = 0.0841779828818204D;
            // 
            // tableCell47
            // 
            this.tableCell47.Name = "tableCell47";
            this.tableCell47.StyleName = "DetailCaption2";
            this.tableCell47.Text = "Date";
            this.tableCell47.Weight = 0.0917474325258645D;
            // 
            // tableCell48
            // 
            this.tableCell48.Name = "tableCell48";
            this.tableCell48.StyleName = "DetailCaption2";
            this.tableCell48.Text = "Notes";
            this.tableCell48.Weight = 0.103606615138063D;
            // 
            // Detail3
            // 
            this.Detail3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.table9});
            this.Detail3.HeightF = 25F;
            this.Detail3.Name = "Detail3";
            // 
            // table9
            // 
            this.table9.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.table9.Name = "table9";
            this.table9.OddStyleName = "DetailData3_Odd";
            this.table9.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.tableRow10});
            this.table9.SizeF = new System.Drawing.SizeF(798.9998F, 25F);
            // 
            // tableRow10
            // 
            this.tableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tableCell51,
            this.tableCell52,
            this.tableCell53,
            this.tableCell54,
            this.tableCell55,
            this.tableCell56,
            this.tableCell57,
            this.tableCell58});
            this.tableRow10.Name = "tableRow10";
            this.tableRow10.Weight = 11.5D;
            // 
            // tableCell51
            // 
            this.tableCell51.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[cashier]")});
            this.tableCell51.Name = "tableCell51";
            this.tableCell51.StyleName = "DetailData2";
            this.tableCell51.Weight = 0.111223229778247D;
            // 
            // tableCell52
            // 
            this.tableCell52.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[deposit]")});
            this.tableCell52.Name = "tableCell52";
            this.tableCell52.StyleName = "DetailData2";
            this.tableCell52.StylePriority.UseTextAlignment = false;
            this.tableCell52.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell52.TextFormatString = "{0:n0}";
            this.tableCell52.Weight = 0.108889986132354D;
            // 
            // tableCell53
            // 
            this.tableCell53.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[amount_refunded]")});
            this.tableCell53.Name = "tableCell53";
            this.tableCell53.StyleName = "DetailData2";
            this.tableCell53.StylePriority.UseTextAlignment = false;
            this.tableCell53.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell53.TextFormatString = "{0:n0}";
            this.tableCell53.Weight = 0.0835763289249761D;
            // 
            // tableCell54
            // 
            this.tableCell54.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Paid]")});
            this.tableCell54.Name = "tableCell54";
            this.tableCell54.StyleName = "DetailData2";
            this.tableCell54.StylePriority.UseTextAlignment = false;
            this.tableCell54.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell54.TextFormatString = "{0:n0}";
            this.tableCell54.Weight = 0.103992646808165D;
            // 
            // tableCell55
            // 
            this.tableCell55.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[discount]")});
            this.tableCell55.Name = "tableCell55";
            this.tableCell55.StyleName = "DetailData2";
            this.tableCell55.StylePriority.UseTextAlignment = false;
            this.tableCell55.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tableCell55.TextFormatString = "{0:n0}";
            this.tableCell55.Weight = 0.0848931163490468D;
            // 
            // tableCell56
            // 
            this.tableCell56.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[payment mode]")});
            this.tableCell56.Name = "tableCell56";
            this.tableCell56.StyleName = "DetailData2";
            this.tableCell56.Weight = 0.0841777540205195D;
            // 
            // tableCell57
            // 
            this.tableCell57.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Date]")});
            this.tableCell57.Name = "tableCell57";
            this.tableCell57.StyleName = "DetailData2";
            this.tableCell57.TextFormatString = "{0:dd-MMM-yy}";
            this.tableCell57.Weight = 0.0917478990244518D;
            // 
            // tableCell58
            // 
            this.tableCell58.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Notes]")});
            this.tableCell58.Name = "tableCell58";
            this.tableCell58.StyleName = "DetailData2";
            this.tableCell58.Weight = 0.103606336419422D;
            // 
            // ReportFooter2
            // 
            this.ReportFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.panel5});
            this.ReportFooter2.HeightF = 49.38444F;
            this.ReportFooter2.Name = "ReportFooter2";
            // 
            // panel5
            // 
            this.panel5.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.label28,
            this.label29,
            this.label31,
            this.label33,
            this.label35});
            this.panel5.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.panel5.Name = "panel5";
            this.panel5.SizeF = new System.Drawing.SizeF(799.0001F, 49.38444F);
            this.panel5.StyleName = "GrandTotalBackground2";
            // 
            // label28
            // 
            this.label28.LocationFloat = new DevExpress.Utils.PointFloat(37.35771F, 11.50001F);
            this.label28.Name = "label28";
            this.label28.SizeF = new System.Drawing.SizeF(77.7393F, 14.88444F);
            this.label28.StyleName = "GrandTotalCaption2";
            this.label28.Text = "TOTAL";
            // 
            // label29
            // 
            this.label29.CanGrow = false;
            this.label29.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([deposit])")});
            this.label29.LocationFloat = new DevExpress.Utils.PointFloat(115.0973F, 11.50001F);
            this.label29.Name = "label29";
            this.label29.SizeF = new System.Drawing.SizeF(112.6823F, 14.88444F);
            this.label29.StyleName = "GrandTotalData2";
            this.label29.StylePriority.UseTextAlignment = false;
            xrSummary11.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label29.Summary = xrSummary11;
            this.label29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label29.TextFormatString = "{0:n0}";
            this.label29.WordWrap = false;
            // 
            // label31
            // 
            this.label31.CanGrow = false;
            this.label31.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([amount_refunded])")});
            this.label31.LocationFloat = new DevExpress.Utils.PointFloat(227.7795F, 11.50001F);
            this.label31.Name = "label31";
            this.label31.SizeF = new System.Drawing.SizeF(86.48767F, 14.88444F);
            this.label31.StyleName = "GrandTotalData2";
            this.label31.StylePriority.UseTextAlignment = false;
            xrSummary12.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label31.Summary = xrSummary12;
            this.label31.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label31.TextFormatString = "{0:n0}";
            this.label31.WordWrap = false;
            // 
            // label33
            // 
            this.label33.CanGrow = false;
            this.label33.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([Paid])")});
            this.label33.LocationFloat = new DevExpress.Utils.PointFloat(314.2672F, 11.50001F);
            this.label33.Name = "label33";
            this.label33.SizeF = new System.Drawing.SizeF(107.6142F, 14.88444F);
            this.label33.StyleName = "GrandTotalData2";
            this.label33.StylePriority.UseTextAlignment = false;
            xrSummary13.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label33.Summary = xrSummary13;
            this.label33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label33.TextFormatString = "{0:n0}";
            this.label33.WordWrap = false;
            // 
            // label35
            // 
            this.label35.CanGrow = false;
            this.label35.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "sumSum([discount])")});
            this.label35.LocationFloat = new DevExpress.Utils.PointFloat(423.8619F, 11.50001F);
            this.label35.Name = "label35";
            this.label35.SizeF = new System.Drawing.SizeF(85.86969F, 14.88444F);
            this.label35.StyleName = "GrandTotalData2";
            this.label35.StylePriority.UseTextAlignment = false;
            xrSummary14.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.label35.Summary = xrSummary14;
            this.label35.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.label35.TextFormatString = "{0:n0}";
            this.label35.WordWrap = false;
            // 
            // Customer
            // 
            this.Customer.Description = "select customer";
            dynamicListLookUpSettings1.DataMember = "getCustomers";
            dynamicListLookUpSettings1.DataSource = this.sqlDataSource2;
            dynamicListLookUpSettings1.DisplayMember = "full_name";
            dynamicListLookUpSettings1.SortMember = null;
            dynamicListLookUpSettings1.ValueMember = "customer_code";
            this.Customer.LookUpSettings = dynamicListLookUpSettings1;
            this.Customer.Name = "Customer";
            // 
            // Start
            // 
            this.Start.AllowNull = true;
            this.Start.Description = "Start";
            this.Start.Name = "Start";
            this.Start.Type = typeof(System.DateTime);
            // 
            // End
            // 
            this.End.AllowNull = true;
            this.End.Description = "End";
            this.End.Name = "End";
            this.End.Type = typeof(System.DateTime);
            // 
            // xrCustomer
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.TopMargin,
            this.BottomMargin,
            this.ReportHeader,
            this.GroupHeader1,
            this.GroupHeader2,
            this.Detail,
            this.GroupFooter1,
            this.GroupFooter2,
            this.ReportFooter,
            this.DetailReport,
            this.DetailReport1,
            this.DetailReport2});
            this.ComponentStorage.AddRange(new System.ComponentModel.IComponent[] {
            this.sqlDataSource1,
            this.sqlDataSource2});
            this.DataMember = "getCustomerBookingsReport";
            this.DataSource = this.sqlDataSource1;
            this.Font = new System.Drawing.Font("Arial", 9.75F);
            this.Margins = new System.Drawing.Printing.Margins(23, 28, 100, 100);
            this.Parameters.AddRange(new DevExpress.XtraReports.Parameters.Parameter[] {
            this.Customer,
            this.Start,
            this.End});
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.Title,
            this.GroupCaption1,
            this.GroupData1,
            this.DetailCaption1,
            this.DetailData1,
            this.DetailCaption2,
            this.DetailData2,
            this.DetailData3_Odd,
            this.TotalCaption1,
            this.TotalData1,
            this.TotalBackground1,
            this.GrandTotalCaption1,
            this.GrandTotalData1,
            this.GrandTotalBackground1,
            this.GrandTotalCaption2,
            this.GrandTotalData2,
            this.GrandTotalBackground2,
            this.PageInfo});
            this.Version = "19.1";
            ((System.ComponentModel.ISupportInitialize)(this.table1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.table9)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

    }

    #endregion
}
