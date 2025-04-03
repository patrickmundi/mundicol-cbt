Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = True

Set objWorkbook = objExcel.Workbooks.Open(WScript.Arguments(0))
Set objVBComp = objWorkbook.VBProject.VBComponents.Add(1)

Dim code
code = "Sub FilterByKeyword()" & vbCrLf & _
"    Dim ws, keyword, lastRow" & vbCrLf & _
"    Set ws = ThisWorkbook.Sheets(""CBT_Questions"")" & vbCrLf & _
"    keyword = ws.Range(""G1"").Value" & vbCrLf & _
"    lastRow = ws.Cells(ws.Rows.Count, ""A"").End(-4162).Row" & vbCrLf & _
"    If ws.AutoFilterMode Then ws.AutoFilterMode = False" & vbCrLf & _
"    ws.Range(""A1:D"" & lastRow).AutoFilter 1, ""*"" & keyword & ""*""" & vbCrLf & _
"End Sub" & vbCrLf & _
"" & vbCrLf & _
"Sub ExportToPDF()" & vbCrLf & _
"    Dim ws, filePath" & vbCrLf & _
"    Set ws = ThisWorkbook.Sheets(""CBT_Questions"")" & vbCrLf & _
"    filePath = ThisWorkbook.Path & ""\CBT_Export.pdf""" & vbCrLf & _
"    ws.ExportAsFixedFormat 0, filePath" & vbCrLf & _
"    MsgBox ""PDF exporté avec succès par Mr Mundi !""" & vbCrLf & _
"End Sub"

objVBComp.CodeModule.AddFromString code

objWorkbook.Save
MsgBox "✅ Macros installées avec succès par Mr Mundi !", 64, "MUNDICOL AUTOMATION"
objWorkbook.Close False
objExcel.Quit

Set objExcel = Nothing