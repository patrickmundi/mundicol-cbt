Sub ExportToPDF()
    Dim ws As Worksheet
    Dim filePath As String

    Set ws = ThisWorkbook.Sheets("CBT_Questions")

    ' Define the file path
    filePath = ThisWorkbook.Path & "\CBT_Questions_Export.pdf"

    ' Export the sheet as PDF
    ws.ExportAsFixedFormat Type:=xlTypePDF, Filename:=filePath, Quality:=xlQualityStandard
    MsgBox "Exported to PDF successfully at " & filePath
End Sub

Sub FilterByKeyword()
    Dim ws As Worksheet
    Dim keyword As String
    Dim lastRow As Long

    Set ws = ThisWorkbook.Sheets("CBT_Questions")
    keyword = ws.Range("G1").Value ' Cell G1 reserved for keyword

    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row

    ' Remove any existing filters
    If ws.AutoFilterMode Then ws.AutoFilterMode = False

    ' Apply filter on "Question" column (column A)
    ws.Range("A1:D" & lastRow).AutoFilter Field:=1, Criteria1:="*" & keyword & "*"
End Sub