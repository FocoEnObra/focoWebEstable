<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Public Class RegistroCalidad
    Inherits DevExpress.XtraReports.UI.XtraReport

    'XtraReport overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Designer
    'It can be modified using the Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(RegistroCalidad))
        Dim QrCodeGenerator1 As DevExpress.XtraPrinting.BarCode.QRCodeGenerator = New DevExpress.XtraPrinting.BarCode.QRCodeGenerator()
        Me.Detail = New DevExpress.XtraReports.UI.DetailBand()
        Me.XrPivotGrid1 = New DevExpress.XtraReports.UI.XRPivotGrid()
        Me.field6 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field5 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field4 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field3 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field2 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field1 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.field = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.TopMargin = New DevExpress.XtraReports.UI.TopMarginBand()
        Me.BottomMargin = New DevExpress.XtraReports.UI.BottomMarginBand()
        Me.GroupHeader2 = New DevExpress.XtraReports.UI.GroupHeaderBand()
        Me.XrLine4 = New DevExpress.XtraReports.UI.XRLine()
        Me.XrTable1 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow1 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell1 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell2 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow2 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell3 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell4 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow3 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell5 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell6 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow4 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell7 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow5 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell9 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerTable = New DevExpress.XtraReports.UI.XRTable()
        Me.customerNameRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.billToLabel = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerName = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerContactNameRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell1 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerContactName = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerAddressRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell2 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerAddress = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCityRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell3 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCity = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCountryRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell4 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCountry = New DevExpress.XtraReports.UI.XRTableCell()
        Me.vendorLogo = New DevExpress.XtraReports.UI.XRPictureBox()
        Me.XrBarCode1 = New DevExpress.XtraReports.UI.XRBarCode()
        Me.GroupFooter1 = New DevExpress.XtraReports.UI.GroupFooterBand()
        Me.XrPageInfo1 = New DevExpress.XtraReports.UI.XRPageInfo()
        Me.baseControlStyle = New DevExpress.XtraReports.UI.XRControlStyle()
        Me.Protocolo1 = New Presentacion.Protocolo()
        Me.GroupHeader1 = New DevExpress.XtraReports.UI.GroupHeaderBand()
        Me.XrLabel1 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel2 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel3 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel4 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel5 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel6 = New DevExpress.XtraReports.UI.XRLabel()
        Me.ReportHeader = New DevExpress.XtraReports.UI.ReportHeaderBand()
        Me.XpView1 = New DevExpress.Xpo.XPView(Me.components)
        Me.XpView2 = New DevExpress.Xpo.XPView(Me.components)
        Me.fieldNOMBREGRPCHK1 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldCRITERIOCONTROL1 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldESPECIFICACIONCHK1 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldOBSERVACIONCHK1 = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldESTADOAPROBACIONCONFALOS = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldESTADOAPROBACIONAPROBADO = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.fieldESTADOAPROBACIONNOAPLICA = New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField()
        Me.XrLabel7 = New DevExpress.XtraReports.UI.XRLabel()
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.customerTable, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Protocolo1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XpView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XpView2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'Detail
        '
        Me.Detail.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrPivotGrid1})
        Me.Detail.HeightF = 139.5833!
        Me.Detail.KeepTogether = True
        Me.Detail.Name = "Detail"
        Me.Detail.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.Detail.StyleName = "baseControlStyle"
        Me.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrPivotGrid1
        '
        Me.XrPivotGrid1.AnchorHorizontal = DevExpress.XtraReports.UI.HorizontalAnchorStyles.Left
        Me.XrPivotGrid1.AnchorVertical = CType((DevExpress.XtraReports.UI.VerticalAnchorStyles.Top Or DevExpress.XtraReports.UI.VerticalAnchorStyles.Bottom), DevExpress.XtraReports.UI.VerticalAnchorStyles)
        Me.XrPivotGrid1.Appearance.Cell.Font = New System.Drawing.Font("Verdana", 8.25!)
        Me.XrPivotGrid1.Appearance.CustomTotalCell.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.FieldHeader.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.FieldValue.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.FieldValueGrandTotal.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.FieldValueTotal.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.GrandTotalCell.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.Lines.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.Appearance.TotalCell.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.XrPivotGrid1.DataMember = "SP_QA_ACC_REG_LISTA_CHEQUEO"
        Me.XrPivotGrid1.DataSource = Me.Protocolo1
        Me.XrPivotGrid1.Fields.AddRange(New DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField() {Me.fieldNOMBREGRPCHK1, Me.fieldCRITERIOCONTROL1, Me.fieldESPECIFICACIONCHK1, Me.fieldOBSERVACIONCHK1, Me.fieldESTADOAPROBACIONAPROBADO, Me.fieldESTADOAPROBACIONCONFALOS, Me.fieldESTADOAPROBACIONNOAPLICA})
        Me.XrPivotGrid1.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrPivotGrid1.Name = "XrPivotGrid1"
        Me.XrPivotGrid1.OptionsData.AutoExpandGroups = DevExpress.Utils.DefaultBoolean.[True]
        Me.XrPivotGrid1.OptionsPrint.FilterSeparatorBarPadding = 3
        Me.XrPivotGrid1.OptionsPrint.MergeColumnFieldValues = False
        Me.XrPivotGrid1.OptionsView.GroupFieldsInCustomizationWindow = False
        Me.XrPivotGrid1.OptionsView.ShowColumnGrandTotalHeader = False
        Me.XrPivotGrid1.OptionsView.ShowColumnHeaders = False
        Me.XrPivotGrid1.OptionsView.ShowColumnTotals = False
        Me.XrPivotGrid1.OptionsView.ShowDataHeaders = False
        Me.XrPivotGrid1.OptionsView.ShowFilterHeaders = False
        Me.XrPivotGrid1.OptionsView.ShowFilterSeparatorBar = False
        Me.XrPivotGrid1.OptionsView.ShowRowGrandTotalHeader = False
        Me.XrPivotGrid1.OptionsView.ShowRowGrandTotals = False
        Me.XrPivotGrid1.OptionsView.ShowRowHeaders = False
        Me.XrPivotGrid1.OptionsView.ShowRowTotals = False
        Me.XrPivotGrid1.SizeF = New System.Drawing.SizeF(595.0833!, 129.5834!)
        Me.XrPivotGrid1.TotalCellStyleName = "baseControlStyle"
        '
        'field6
        '
        Me.field6.AreaIndex = 6
        Me.field6.Name = "field6"
        '
        'field5
        '
        Me.field5.AreaIndex = 5
        Me.field5.Name = "field5"
        '
        'field4
        '
        Me.field4.AreaIndex = 4
        Me.field4.Name = "field4"
        '
        'field3
        '
        Me.field3.AreaIndex = 3
        Me.field3.Name = "field3"
        '
        'field2
        '
        Me.field2.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.field2.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.field2.Appearance.Cell.WordWrap = True
        Me.field2.AreaIndex = 2
        Me.field2.Name = "field2"
        '
        'field1
        '
        Me.field1.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.field1.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.field1.Appearance.Cell.WordWrap = True
        Me.field1.AreaIndex = 1
        Me.field1.Name = "field1"
        '
        'field
        '
        Me.field.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.field.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.field.Appearance.Cell.WordWrap = True
        Me.field.AreaIndex = 0
        Me.field.Name = "field"
        '
        'TopMargin
        '
        Me.TopMargin.HeightF = 0!
        Me.TopMargin.Name = "TopMargin"
        Me.TopMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.TopMargin.StylePriority.UseBackColor = False
        Me.TopMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'BottomMargin
        '
        Me.BottomMargin.HeightF = 75.0!
        Me.BottomMargin.Name = "BottomMargin"
        Me.BottomMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.BottomMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'GroupHeader2
        '
        Me.GroupHeader2.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLine4, Me.XrTable1, Me.customerTable, Me.vendorLogo})
        Me.GroupHeader2.GroupFields.AddRange(New DevExpress.XtraReports.UI.GroupField() {New DevExpress.XtraReports.UI.GroupField("InvoiceNumber", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)})
        Me.GroupHeader2.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail
        Me.GroupHeader2.HeightF = 241.25!
        Me.GroupHeader2.Level = 1
        Me.GroupHeader2.Name = "GroupHeader2"
        Me.GroupHeader2.StyleName = "baseControlStyle"
        Me.GroupHeader2.StylePriority.UseBackColor = False
        '
        'XrLine4
        '
        Me.XrLine4.ForeColor = System.Drawing.Color.Gray
        Me.XrLine4.LocationFloat = New DevExpress.Utils.PointFloat(0!, 75.0!)
        Me.XrLine4.Name = "XrLine4"
        Me.XrLine4.SizeF = New System.Drawing.SizeF(628.9996!, 10.00001!)
        Me.XrLine4.StylePriority.UseForeColor = False
        '
        'XrTable1
        '
        Me.XrTable1.BorderColor = System.Drawing.Color.Silver
        Me.XrTable1.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrTable1.Font = New System.Drawing.Font("Segoe UI", 8.0!)
        Me.XrTable1.LocationFloat = New DevExpress.Utils.PointFloat(315.042!, 109.4167!)
        Me.XrTable1.Name = "XrTable1"
        Me.XrTable1.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow1, Me.XrTableRow2, Me.XrTableRow3, Me.XrTableRow4, Me.XrTableRow5})
        Me.XrTable1.SizeF = New System.Drawing.SizeF(315.042!, 125.0!)
        Me.XrTable1.StylePriority.UseBorderColor = False
        Me.XrTable1.StylePriority.UseBorders = False
        Me.XrTable1.StylePriority.UseFont = False
        '
        'XrTableRow1
        '
        Me.XrTableRow1.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell1, Me.XrTableCell2})
        Me.XrTableRow1.Name = "XrTableRow1"
        Me.XrTableRow1.Weight = 1.0R
        '
        'XrTableCell1
        '
        Me.XrTableCell1.BackColor = System.Drawing.Color.WhiteSmoke
        Me.XrTableCell1.CanShrink = True
        Me.XrTableCell1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell1.Name = "XrTableCell1"
        Me.XrTableCell1.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell1.StylePriority.UseBackColor = False
        Me.XrTableCell1.StylePriority.UseFont = False
        Me.XrTableCell1.StylePriority.UsePadding = False
        Me.XrTableCell1.StylePriority.UseTextAlignment = False
        Me.XrTableCell1.Text = "Ultimo V°B°"
        Me.XrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell1.Weight = 0.54593085254076357R
        '
        'XrTableCell2
        '
        Me.XrTableCell2.CanShrink = True
        Me.XrTableCell2.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[FECHA_ULT_VB]")})
        Me.XrTableCell2.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell2.Name = "XrTableCell2"
        Me.XrTableCell2.StylePriority.UseFont = False
        Me.XrTableCell2.StylePriority.UseForeColor = False
        Me.XrTableCell2.StylePriority.UsePadding = False
        Me.XrTableCell2.StylePriority.UseTextAlignment = False
        Me.XrTableCell2.Text = "CustomerName"
        Me.XrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell2.TextFormatString = "{0:dddd, d' de 'MMMM' de 'yyyy H:mm}"
        Me.XrTableCell2.Weight = 1.3211919310987643R
        '
        'XrTableRow2
        '
        Me.XrTableRow2.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell3, Me.XrTableCell4})
        Me.XrTableRow2.Name = "XrTableRow2"
        Me.XrTableRow2.Weight = 1.0R
        '
        'XrTableCell3
        '
        Me.XrTableCell3.BackColor = System.Drawing.Color.WhiteSmoke
        Me.XrTableCell3.CanShrink = True
        Me.XrTableCell3.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell3.Name = "XrTableCell3"
        Me.XrTableCell3.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell3.StylePriority.UseBackColor = False
        Me.XrTableCell3.StylePriority.UseFont = False
        Me.XrTableCell3.StylePriority.UsePadding = False
        Me.XrTableCell3.StylePriority.UseTextAlignment = False
        Me.XrTableCell3.Text = "Nivel V°B°"
        Me.XrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell3.Weight = 0.54593085254076357R
        '
        'XrTableCell4
        '
        Me.XrTableCell4.CanShrink = True
        Me.XrTableCell4.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NIVEL_VB]")})
        Me.XrTableCell4.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell4.Name = "XrTableCell4"
        Me.XrTableCell4.StylePriority.UseFont = False
        Me.XrTableCell4.StylePriority.UseForeColor = False
        Me.XrTableCell4.StylePriority.UsePadding = False
        Me.XrTableCell4.StylePriority.UseTextAlignment = False
        Me.XrTableCell4.Text = "CustomerContactName"
        Me.XrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell4.Weight = 1.3211919310987643R
        '
        'XrTableRow3
        '
        Me.XrTableRow3.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell5, Me.XrTableCell6})
        Me.XrTableRow3.Name = "XrTableRow3"
        Me.XrTableRow3.Weight = 1.0R
        '
        'XrTableCell5
        '
        Me.XrTableCell5.BackColor = System.Drawing.Color.WhiteSmoke
        Me.XrTableCell5.CanShrink = True
        Me.XrTableCell5.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell5.Name = "XrTableCell5"
        Me.XrTableCell5.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell5.StylePriority.UseBackColor = False
        Me.XrTableCell5.StylePriority.UseFont = False
        Me.XrTableCell5.StylePriority.UsePadding = False
        Me.XrTableCell5.StylePriority.UseTextAlignment = False
        Me.XrTableCell5.Text = "Dias Dif."
        Me.XrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell5.Weight = 0.54593085254076357R
        '
        'XrTableCell6
        '
        Me.XrTableCell6.CanShrink = True
        Me.XrTableCell6.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[DIAS_DIF]")})
        Me.XrTableCell6.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell6.Name = "XrTableCell6"
        Me.XrTableCell6.StylePriority.UseForeColor = False
        Me.XrTableCell6.StylePriority.UseTextAlignment = False
        Me.XrTableCell6.Text = "CustomerAddress"
        Me.XrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell6.Weight = 1.3211919310987643R
        '
        'XrTableRow4
        '
        Me.XrTableRow4.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell7})
        Me.XrTableRow4.Name = "XrTableRow4"
        Me.XrTableRow4.Weight = 1.0R
        '
        'XrTableCell7
        '
        Me.XrTableCell7.BorderDashStyle = DevExpress.XtraPrinting.BorderDashStyle.Dot
        Me.XrTableCell7.Borders = DevExpress.XtraPrinting.BorderSide.None
        Me.XrTableCell7.CanShrink = True
        Me.XrTableCell7.Name = "XrTableCell7"
        Me.XrTableCell7.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell7.StylePriority.UseBorderDashStyle = False
        Me.XrTableCell7.StylePriority.UseBorders = False
        Me.XrTableCell7.StylePriority.UsePadding = False
        Me.XrTableCell7.StylePriority.UseTextAlignment = False
        Me.XrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight
        Me.XrTableCell7.Weight = 1.8671227836395279R
        '
        'XrTableRow5
        '
        Me.XrTableRow5.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell9})
        Me.XrTableRow5.Name = "XrTableRow5"
        Me.XrTableRow5.Weight = 1.0R
        '
        'XrTableCell9
        '
        Me.XrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.None
        Me.XrTableCell9.CanShrink = True
        Me.XrTableCell9.Name = "XrTableCell9"
        Me.XrTableCell9.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell9.StylePriority.UseBorders = False
        Me.XrTableCell9.StylePriority.UsePadding = False
        Me.XrTableCell9.StylePriority.UseTextAlignment = False
        Me.XrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight
        Me.XrTableCell9.Weight = 1.8671227836395279R
        '
        'customerTable
        '
        Me.customerTable.BorderColor = System.Drawing.Color.DarkGray
        Me.customerTable.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.customerTable.Font = New System.Drawing.Font("Segoe UI", 8.0!)
        Me.customerTable.LocationFloat = New DevExpress.Utils.PointFloat(0!, 109.4167!)
        Me.customerTable.Name = "customerTable"
        Me.customerTable.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.customerNameRow, Me.customerContactNameRow, Me.customerAddressRow, Me.customerCityRow, Me.customerCountryRow})
        Me.customerTable.SizeF = New System.Drawing.SizeF(315.042!, 125.0!)
        Me.customerTable.StylePriority.UseBorderColor = False
        Me.customerTable.StylePriority.UseBorders = False
        Me.customerTable.StylePriority.UseFont = False
        '
        'customerNameRow
        '
        Me.customerNameRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.billToLabel, Me.customerName})
        Me.customerNameRow.Name = "customerNameRow"
        Me.customerNameRow.Weight = 1.0R
        '
        'billToLabel
        '
        Me.billToLabel.BackColor = System.Drawing.Color.Gainsboro
        Me.billToLabel.CanShrink = True
        Me.billToLabel.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.billToLabel.Name = "billToLabel"
        Me.billToLabel.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.billToLabel.StylePriority.UseBackColor = False
        Me.billToLabel.StylePriority.UseFont = False
        Me.billToLabel.StylePriority.UsePadding = False
        Me.billToLabel.StylePriority.UseTextAlignment = False
        Me.billToLabel.Text = "Actividad"
        Me.billToLabel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.billToLabel.Weight = 0.45950162527394045R
        '
        'customerName
        '
        Me.customerName.CanGrow = False
        Me.customerName.CanShrink = True
        Me.customerName.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_ACT]")})
        Me.customerName.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerName.ForeColor = System.Drawing.Color.DimGray
        Me.customerName.Name = "customerName"
        Me.customerName.StylePriority.UseFont = False
        Me.customerName.StylePriority.UseForeColor = False
        Me.customerName.StylePriority.UsePadding = False
        Me.customerName.StylePriority.UseTextAlignment = False
        Me.customerName.Text = "CustomerName"
        Me.customerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerName.Weight = 1.4076211583655875R
        Me.customerName.WordWrap = False
        '
        'customerContactNameRow
        '
        Me.customerContactNameRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell1, Me.customerContactName})
        Me.customerContactNameRow.Name = "customerContactNameRow"
        Me.customerContactNameRow.Weight = 1.0R
        '
        'customerTableCell1
        '
        Me.customerTableCell1.BackColor = System.Drawing.Color.Gainsboro
        Me.customerTableCell1.CanShrink = True
        Me.customerTableCell1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerTableCell1.Name = "customerTableCell1"
        Me.customerTableCell1.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell1.StylePriority.UseBackColor = False
        Me.customerTableCell1.StylePriority.UseFont = False
        Me.customerTableCell1.StylePriority.UsePadding = False
        Me.customerTableCell1.StylePriority.UseTextAlignment = False
        Me.customerTableCell1.Text = "Etapa"
        Me.customerTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell1.Weight = 0.45950162527394045R
        '
        'customerContactName
        '
        Me.customerContactName.CanShrink = True
        Me.customerContactName.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_ETA]")})
        Me.customerContactName.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerContactName.ForeColor = System.Drawing.Color.DimGray
        Me.customerContactName.Name = "customerContactName"
        Me.customerContactName.StylePriority.UseFont = False
        Me.customerContactName.StylePriority.UseForeColor = False
        Me.customerContactName.StylePriority.UsePadding = False
        Me.customerContactName.StylePriority.UseTextAlignment = False
        Me.customerContactName.Text = "CustomerContactName"
        Me.customerContactName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerContactName.Weight = 1.4076211583655875R
        '
        'customerAddressRow
        '
        Me.customerAddressRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell2, Me.customerAddress})
        Me.customerAddressRow.Name = "customerAddressRow"
        Me.customerAddressRow.Weight = 1.0R
        '
        'customerTableCell2
        '
        Me.customerTableCell2.BackColor = System.Drawing.Color.Gainsboro
        Me.customerTableCell2.CanShrink = True
        Me.customerTableCell2.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerTableCell2.Name = "customerTableCell2"
        Me.customerTableCell2.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell2.StylePriority.UseBackColor = False
        Me.customerTableCell2.StylePriority.UseFont = False
        Me.customerTableCell2.StylePriority.UsePadding = False
        Me.customerTableCell2.StylePriority.UseTextAlignment = False
        Me.customerTableCell2.Text = "Recinto"
        Me.customerTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell2.Weight = 0.45950162527394045R
        '
        'customerAddress
        '
        Me.customerAddress.CanShrink = True
        Me.customerAddress.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_UCO]")})
        Me.customerAddress.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerAddress.ForeColor = System.Drawing.Color.DimGray
        Me.customerAddress.Name = "customerAddress"
        Me.customerAddress.StylePriority.UseFont = False
        Me.customerAddress.StylePriority.UseForeColor = False
        Me.customerAddress.StylePriority.UseTextAlignment = False
        Me.customerAddress.Text = "CustomerAddress"
        Me.customerAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerAddress.Weight = 1.4076211583655875R
        '
        'customerCityRow
        '
        Me.customerCityRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell3, Me.customerCity})
        Me.customerCityRow.Name = "customerCityRow"
        Me.customerCityRow.Weight = 1.0R
        '
        'customerTableCell3
        '
        Me.customerTableCell3.BackColor = System.Drawing.Color.Gainsboro
        Me.customerTableCell3.CanShrink = True
        Me.customerTableCell3.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerTableCell3.Name = "customerTableCell3"
        Me.customerTableCell3.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell3.StylePriority.UseBackColor = False
        Me.customerTableCell3.StylePriority.UseFont = False
        Me.customerTableCell3.StylePriority.UsePadding = False
        Me.customerTableCell3.StylePriority.UseTextAlignment = False
        Me.customerTableCell3.Text = "Raiz"
        Me.customerTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell3.Weight = 0.45950162527394045R
        '
        'customerCity
        '
        Me.customerCity.CanShrink = True
        Me.customerCity.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[RAIZ]")})
        Me.customerCity.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerCity.ForeColor = System.Drawing.Color.DimGray
        Me.customerCity.Name = "customerCity"
        Me.customerCity.StylePriority.UseFont = False
        Me.customerCity.StylePriority.UseForeColor = False
        Me.customerCity.StylePriority.UseTextAlignment = False
        Me.customerCity.Text = "CustomerCity"
        Me.customerCity.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerCity.Weight = 1.4076211583655875R
        '
        'customerCountryRow
        '
        Me.customerCountryRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell4, Me.customerCountry})
        Me.customerCountryRow.Name = "customerCountryRow"
        Me.customerCountryRow.Weight = 1.0R
        '
        'customerTableCell4
        '
        Me.customerTableCell4.BackColor = System.Drawing.Color.Gainsboro
        Me.customerTableCell4.CanShrink = True
        Me.customerTableCell4.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerTableCell4.Name = "customerTableCell4"
        Me.customerTableCell4.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell4.StylePriority.UseBackColor = False
        Me.customerTableCell4.StylePriority.UseFont = False
        Me.customerTableCell4.StylePriority.UsePadding = False
        Me.customerTableCell4.StylePriority.UseTextAlignment = False
        Me.customerTableCell4.Text = "Creación"
        Me.customerTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell4.Weight = 0.45950162527394045R
        '
        'customerCountry
        '
        Me.customerCountry.CanShrink = True
        Me.customerCountry.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[FECHA_CREA]")})
        Me.customerCountry.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerCountry.ForeColor = System.Drawing.Color.DimGray
        Me.customerCountry.Name = "customerCountry"
        Me.customerCountry.StylePriority.UseFont = False
        Me.customerCountry.StylePriority.UseForeColor = False
        Me.customerCountry.StylePriority.UseTextAlignment = False
        Me.customerCountry.Text = "CustomerCountry"
        Me.customerCountry.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerCountry.TextFormatString = "{0:dddd, d' de 'MMMM' de 'yyyy H:mm}"
        Me.customerCountry.Weight = 1.4076211583655875R
        '
        'vendorLogo
        '
        Me.vendorLogo.Image = CType(resources.GetObject("vendorLogo.Image"), System.Drawing.Image)
        Me.vendorLogo.ImageAlignment = DevExpress.XtraPrinting.ImageAlignment.TopLeft
        Me.vendorLogo.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.vendorLogo.Name = "vendorLogo"
        Me.vendorLogo.SizeF = New System.Drawing.SizeF(158.7098!, 75.0!)
        Me.vendorLogo.Sizing = DevExpress.XtraPrinting.ImageSizeMode.Squeeze
        Me.vendorLogo.StylePriority.UseBorderColor = False
        Me.vendorLogo.StylePriority.UseBorders = False
        Me.vendorLogo.StylePriority.UsePadding = False
        '
        'XrBarCode1
        '
        Me.XrBarCode1.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ID_REG_CHK]")})
        Me.XrBarCode1.LocationFloat = New DevExpress.Utils.PointFloat(524.9166!, 0!)
        Me.XrBarCode1.Name = "XrBarCode1"
        Me.XrBarCode1.Padding = New DevExpress.XtraPrinting.PaddingInfo(10, 10, 0, 0, 100.0!)
        Me.XrBarCode1.SizeF = New System.Drawing.SizeF(114.0834!, 70.20833!)
        Me.XrBarCode1.Symbology = QrCodeGenerator1
        '
        'GroupFooter1
        '
        Me.GroupFooter1.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrPageInfo1})
        Me.GroupFooter1.GroupUnion = DevExpress.XtraReports.UI.GroupFooterUnion.WithLastDetail
        Me.GroupFooter1.HeightF = 43.00003!
        Me.GroupFooter1.KeepTogether = True
        Me.GroupFooter1.Level = 1
        Me.GroupFooter1.Name = "GroupFooter1"
        Me.GroupFooter1.PageBreak = DevExpress.XtraReports.UI.PageBreak.AfterBandExceptLastEntry
        Me.GroupFooter1.StyleName = "baseControlStyle"
        '
        'XrPageInfo1
        '
        Me.XrPageInfo1.LocationFloat = New DevExpress.Utils.PointFloat(549.0001!, 0!)
        Me.XrPageInfo1.Name = "XrPageInfo1"
        Me.XrPageInfo1.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrPageInfo1.SizeF = New System.Drawing.SizeF(100.0!, 23.0!)
        '
        'baseControlStyle
        '
        Me.baseControlStyle.Font = New System.Drawing.Font("Segoe UI", 9.75!)
        Me.baseControlStyle.Name = "baseControlStyle"
        Me.baseControlStyle.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        '
        'Protocolo1
        '
        Me.Protocolo1.DataSetName = "Protocolo"
        Me.Protocolo1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'GroupHeader1
        '
        Me.GroupHeader1.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLabel7, Me.XrLabel1, Me.XrLabel2, Me.XrLabel3, Me.XrLabel4, Me.XrLabel5, Me.XrLabel6})
        Me.GroupHeader1.HeightF = 25.0!
        Me.GroupHeader1.Name = "GroupHeader1"
        Me.GroupHeader1.RepeatEveryPage = True
        Me.GroupHeader1.StyleName = "baseControlStyle"
        '
        'XrLabel1
        '
        Me.XrLabel1.BackColor = System.Drawing.Color.Tan
        Me.XrLabel1.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel1.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel1.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel1.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrLabel1.Name = "XrLabel1"
        Me.XrLabel1.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel1.SizeF = New System.Drawing.SizeF(106.4998!, 25.0!)
        Me.XrLabel1.StylePriority.UseBackColor = False
        Me.XrLabel1.StylePriority.UseBorderColor = False
        Me.XrLabel1.StylePriority.UseBorders = False
        Me.XrLabel1.StylePriority.UseFont = False
        Me.XrLabel1.StylePriority.UsePadding = False
        Me.XrLabel1.StylePriority.UseTextAlignment = False
        Me.XrLabel1.Text = "Etapas"
        Me.XrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel2
        '
        Me.XrLabel2.BackColor = System.Drawing.Color.Tan
        Me.XrLabel2.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel2.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel2.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel2.LocationFloat = New DevExpress.Utils.PointFloat(106.4998!, 0!)
        Me.XrLabel2.Name = "XrLabel2"
        Me.XrLabel2.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel2.SizeF = New System.Drawing.SizeF(106.4998!, 25.0!)
        Me.XrLabel2.StylePriority.UseBackColor = False
        Me.XrLabel2.StylePriority.UseBorderColor = False
        Me.XrLabel2.StylePriority.UseBorders = False
        Me.XrLabel2.StylePriority.UseFont = False
        Me.XrLabel2.StylePriority.UsePadding = False
        Me.XrLabel2.StylePriority.UseTextAlignment = False
        Me.XrLabel2.Text = "Criterio"
        Me.XrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel3
        '
        Me.XrLabel3.BackColor = System.Drawing.Color.Tan
        Me.XrLabel3.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel3.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel3.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel3.LocationFloat = New DevExpress.Utils.PointFloat(212.9996!, 0!)
        Me.XrLabel3.Name = "XrLabel3"
        Me.XrLabel3.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel3.SizeF = New System.Drawing.SizeF(122.3746!, 25.0!)
        Me.XrLabel3.StylePriority.UseBackColor = False
        Me.XrLabel3.StylePriority.UseBorderColor = False
        Me.XrLabel3.StylePriority.UseBorders = False
        Me.XrLabel3.StylePriority.UseFont = False
        Me.XrLabel3.StylePriority.UsePadding = False
        Me.XrLabel3.StylePriority.UseTextAlignment = False
        Me.XrLabel3.Text = "Especificación"
        Me.XrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel4
        '
        Me.XrLabel4.BackColor = System.Drawing.Color.Tan
        Me.XrLabel4.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel4.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel4.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel4.LocationFloat = New DevExpress.Utils.PointFloat(444.999!, 0!)
        Me.XrLabel4.Name = "XrLabel4"
        Me.XrLabel4.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel4.SizeF = New System.Drawing.SizeF(46.08319!, 25.0!)
        Me.XrLabel4.StylePriority.UseBackColor = False
        Me.XrLabel4.StylePriority.UseBorderColor = False
        Me.XrLabel4.StylePriority.UseBorders = False
        Me.XrLabel4.StylePriority.UseFont = False
        Me.XrLabel4.StylePriority.UsePadding = False
        Me.XrLabel4.StylePriority.UseTextAlignment = False
        Me.XrLabel4.Text = "ok"
        Me.XrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel5
        '
        Me.XrLabel5.BackColor = System.Drawing.Color.Tan
        Me.XrLabel5.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel5.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel5.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel5.LocationFloat = New DevExpress.Utils.PointFloat(491.0822!, 0!)
        Me.XrLabel5.Name = "XrLabel5"
        Me.XrLabel5.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel5.SizeF = New System.Drawing.SizeF(49.08325!, 25.0!)
        Me.XrLabel5.StylePriority.UseBackColor = False
        Me.XrLabel5.StylePriority.UseBorderColor = False
        Me.XrLabel5.StylePriority.UseBorders = False
        Me.XrLabel5.StylePriority.UseFont = False
        Me.XrLabel5.StylePriority.UsePadding = False
        Me.XrLabel5.StylePriority.UseTextAlignment = False
        Me.XrLabel5.Text = "x"
        Me.XrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel6
        '
        Me.XrLabel6.BackColor = System.Drawing.Color.Tan
        Me.XrLabel6.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel6.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel6.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel6.LocationFloat = New DevExpress.Utils.PointFloat(540.1655!, 0!)
        Me.XrLabel6.Name = "XrLabel6"
        Me.XrLabel6.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel6.SizeF = New System.Drawing.SizeF(54.91772!, 25.0!)
        Me.XrLabel6.StylePriority.UseBackColor = False
        Me.XrLabel6.StylePriority.UseBorderColor = False
        Me.XrLabel6.StylePriority.UseBorders = False
        Me.XrLabel6.StylePriority.UseFont = False
        Me.XrLabel6.StylePriority.UsePadding = False
        Me.XrLabel6.StylePriority.UseTextAlignment = False
        Me.XrLabel6.Text = "N/A"
        Me.XrLabel6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'ReportHeader
        '
        Me.ReportHeader.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrBarCode1})
        Me.ReportHeader.HeightF = 71.875!
        Me.ReportHeader.Name = "ReportHeader"
        '
        'fieldNOMBREGRPCHK1
        '
        Me.fieldNOMBREGRPCHK1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldNOMBREGRPCHK1.AreaIndex = 0
        Me.fieldNOMBREGRPCHK1.Caption = "ETAPAS"
        Me.fieldNOMBREGRPCHK1.FieldName = "NOMBRE_GRP_CHK"
        Me.fieldNOMBREGRPCHK1.Name = "fieldNOMBREGRPCHK1"
        Me.fieldNOMBREGRPCHK1.SummaryType = DevExpress.Data.PivotGrid.PivotSummaryType.Custom
        Me.fieldNOMBREGRPCHK1.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None
        '
        'fieldCRITERIOCONTROL1
        '
        Me.fieldCRITERIOCONTROL1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldCRITERIOCONTROL1.AreaIndex = 1
        Me.fieldCRITERIOCONTROL1.Caption = "CRITERIO DE CONTROL"
        Me.fieldCRITERIOCONTROL1.FieldName = "CRITERIO_CONTROL"
        Me.fieldCRITERIOCONTROL1.Name = "fieldCRITERIOCONTROL1"
        Me.fieldCRITERIOCONTROL1.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None
        '
        'fieldESPECIFICACIONCHK1
        '
        Me.fieldESPECIFICACIONCHK1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldESPECIFICACIONCHK1.AreaIndex = 2
        Me.fieldESPECIFICACIONCHK1.Caption = "ESPECIFICACIÓN"
        Me.fieldESPECIFICACIONCHK1.FieldName = "ESPECIFICACION_CHK"
        Me.fieldESPECIFICACIONCHK1.Name = "fieldESPECIFICACIONCHK1"
        Me.fieldESPECIFICACIONCHK1.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None
        Me.fieldESPECIFICACIONCHK1.Width = 120
        '
        'fieldOBSERVACIONCHK1
        '
        Me.fieldOBSERVACIONCHK1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldOBSERVACIONCHK1.AreaIndex = 3
        Me.fieldOBSERVACIONCHK1.Caption = "OBS."
        Me.fieldOBSERVACIONCHK1.FieldName = "OBSERVACION_CHK"
        Me.fieldOBSERVACIONCHK1.Name = "fieldOBSERVACIONCHK1"
        Me.fieldOBSERVACIONCHK1.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None
        '
        'fieldESTADOAPROBACIONCONFALOS
        '
        Me.fieldESTADOAPROBACIONCONFALOS.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.fieldESTADOAPROBACIONCONFALOS.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.fieldESTADOAPROBACIONCONFALOS.Appearance.Cell.WordWrap = True
        Me.fieldESTADOAPROBACIONCONFALOS.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldESTADOAPROBACIONCONFALOS.AreaIndex = 5
        Me.fieldESTADOAPROBACIONCONFALOS.Caption = "X"
        Me.fieldESTADOAPROBACIONCONFALOS.FieldName = "ESTADO_APROBACION_CONFALOS"
        Me.fieldESTADOAPROBACIONCONFALOS.Name = "fieldESTADOAPROBACIONCONFALOS"
        Me.fieldESTADOAPROBACIONCONFALOS.Width = 50
        '
        'fieldESTADOAPROBACIONAPROBADO
        '
        Me.fieldESTADOAPROBACIONAPROBADO.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.fieldESTADOAPROBACIONAPROBADO.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.fieldESTADOAPROBACIONAPROBADO.Appearance.Cell.WordWrap = True
        Me.fieldESTADOAPROBACIONAPROBADO.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldESTADOAPROBACIONAPROBADO.AreaIndex = 4
        Me.fieldESTADOAPROBACIONAPROBADO.Caption = "OK"
        Me.fieldESTADOAPROBACIONAPROBADO.FieldName = "ESTADO_APROBACION_APROBADO"
        Me.fieldESTADOAPROBACIONAPROBADO.Name = "fieldESTADOAPROBACIONAPROBADO"
        Me.fieldESTADOAPROBACIONAPROBADO.Width = 50
        '
        'fieldESTADOAPROBACIONNOAPLICA
        '
        Me.fieldESTADOAPROBACIONNOAPLICA.Appearance.Cell.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center
        Me.fieldESTADOAPROBACIONNOAPLICA.Appearance.Cell.TextVerticalAlignment = DevExpress.Utils.VertAlignment.Center
        Me.fieldESTADOAPROBACIONNOAPLICA.Appearance.Cell.WordWrap = True
        Me.fieldESTADOAPROBACIONNOAPLICA.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea
        Me.fieldESTADOAPROBACIONNOAPLICA.AreaIndex = 6
        Me.fieldESTADOAPROBACIONNOAPLICA.Caption = "N/A"
        Me.fieldESTADOAPROBACIONNOAPLICA.FieldName = "ESTADO_APROBACION_NOAPLICA"
        Me.fieldESTADOAPROBACIONNOAPLICA.Name = "fieldESTADOAPROBACIONNOAPLICA"
        Me.fieldESTADOAPROBACIONNOAPLICA.Width = 50
        '
        'XrLabel7
        '
        Me.XrLabel7.BackColor = System.Drawing.Color.Tan
        Me.XrLabel7.BorderColor = System.Drawing.Color.DarkGray
        Me.XrLabel7.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
            Or DevExpress.XtraPrinting.BorderSide.Right) _
            Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrLabel7.Font = New System.Drawing.Font("Segoe UI", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel7.LocationFloat = New DevExpress.Utils.PointFloat(335.3742!, 0!)
        Me.XrLabel7.Name = "XrLabel7"
        Me.XrLabel7.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel7.SizeF = New System.Drawing.SizeF(109.6248!, 25.0!)
        Me.XrLabel7.StylePriority.UseBackColor = False
        Me.XrLabel7.StylePriority.UseBorderColor = False
        Me.XrLabel7.StylePriority.UseBorders = False
        Me.XrLabel7.StylePriority.UseFont = False
        Me.XrLabel7.StylePriority.UsePadding = False
        Me.XrLabel7.StylePriority.UseTextAlignment = False
        Me.XrLabel7.Text = "Obs."
        Me.XrLabel7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'RegistroCalidad
        '
        Me.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail, Me.TopMargin, Me.BottomMargin, Me.GroupHeader2, Me.GroupFooter1, Me.GroupHeader1, Me.ReportHeader})
        Me.ComponentStorage.AddRange(New System.ComponentModel.IComponent() {Me.Protocolo1, Me.XpView1, Me.XpView2})
        Me.DataMember = "SP_WS_BUSCA_REGISTRO"
        Me.DataSource = Me.Protocolo1
        Me.Margins = New System.Drawing.Printing.Margins(101, 100, 0, 75)
        Me.StyleSheet.AddRange(New DevExpress.XtraReports.UI.XRControlStyle() {Me.baseControlStyle})
        Me.Version = "17.2"
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.customerTable, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Protocolo1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XpView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XpView2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub

    Friend WithEvents Detail As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents TopMargin As DevExpress.XtraReports.UI.TopMarginBand
    Friend WithEvents BottomMargin As DevExpress.XtraReports.UI.BottomMarginBand
    Friend WithEvents GroupHeader2 As DevExpress.XtraReports.UI.GroupHeaderBand
    Friend WithEvents XrLine4 As DevExpress.XtraReports.UI.XRLine
    Friend WithEvents XrTable1 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow1 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell1 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell2 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow2 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell3 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell4 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow3 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell5 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell6 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow4 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell7 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow5 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell9 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerTable As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents customerNameRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents billToLabel As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerName As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerContactNameRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell1 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerContactName As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerAddressRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell2 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerAddress As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCityRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell3 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCity As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCountryRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell4 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCountry As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents vendorLogo As DevExpress.XtraReports.UI.XRPictureBox
    Friend WithEvents GroupFooter1 As DevExpress.XtraReports.UI.GroupFooterBand
    Friend WithEvents baseControlStyle As DevExpress.XtraReports.UI.XRControlStyle
    Friend WithEvents Protocolo1 As Protocolo
    Friend WithEvents GroupHeader1 As DevExpress.XtraReports.UI.GroupHeaderBand
    Friend WithEvents XrLabel1 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel2 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel3 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel4 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel5 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel6 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrBarCode1 As DevExpress.XtraReports.UI.XRBarCode
    Friend WithEvents ReportHeader As DevExpress.XtraReports.UI.ReportHeaderBand
    Friend WithEvents XrPageInfo1 As DevExpress.XtraReports.UI.XRPageInfo
    Friend WithEvents XpView1 As DevExpress.Xpo.XPView
    Friend WithEvents XpView2 As DevExpress.Xpo.XPView
    Friend WithEvents XrPivotGrid1 As DevExpress.XtraReports.UI.XRPivotGrid
    Friend WithEvents field6 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field5 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field4 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field3 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field2 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field1 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents field As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldNOMBREGRPCHK1 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldCRITERIOCONTROL1 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldESPECIFICACIONCHK1 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldOBSERVACIONCHK1 As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldESTADOAPROBACIONCONFALOS As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldESTADOAPROBACIONAPROBADO As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents fieldESTADOAPROBACIONNOAPLICA As DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField
    Friend WithEvents XrLabel7 As DevExpress.XtraReports.UI.XRLabel
End Class
