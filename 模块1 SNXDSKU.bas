Attribute VB_Name = "模块1"
Sub all0()
Call 商品组
Application.Wait (Now + TimeValue("00:00:03"))
Call 商品组名称
Call 条码
Call 层级1
Call 层级1名称
Call 层级2
Call 层级2名称
Call 层级3
Call 层级3名称
Call 品牌
Call 小店商品组分类
End Sub
Sub 商品组()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
    
With Sheets("商品基本信息")
    Set d = CreateObject("scripting.dictionary")
        r = Range("b2", Range("e10000").End(3))
            For i = 1 To UBound(r)
                d("" & r(i, 1)) = r(i, 4)
                a = d("" & r(i, 1))
            Next

End With


r = Sheet1.Range("b4", Sheet1.Range("b10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("q4").Resize(UBound(r)) = r
'wkb_data.Close False '关闭工作簿,不保存更改
'Set wkb_data = Nothing '释放对象变量
'Application.ScreenUpdating = True
    
End Sub
Sub 商品组名称()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品基本信息")
    Set d = CreateObject("scripting.dictionary")
        r = Range("b2", Range("f10000").End(3))
            For i = 1 To UBound(r)
                d(r(i, 1)) = r(i, 5)
            Next

End With

r = Sheet1.Range("b4", Sheet1.Range("b10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d(r(i, 1))
    Next
Sheet1.Range("r4").Resize(UBound(r)) = r
    
    
End Sub
Sub 条码()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品基本信息")
    Set d = CreateObject("scripting.dictionary")
    r = .Range("b2", .Range("l10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 1)) = r(i, 11)
    Next
End With
r = Sheet1.Range("b4", Sheet1.Range("b10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("u4").Resize(UBound(r)) = r
    
    
End Sub
Sub 品牌()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品基本信息")
    Set d = CreateObject("scripting.dictionary")
    r = Range("b2", Range("p10000").End(3))
    For i = 1 To UBound(r)
        d(r(i, 1)) = r(i, 15)
    Next
End With
r = Sheet1.Range("b4", Sheet1.Range("b10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d(r(i, 1))
    Next
Sheet1.Range("a4").Resize(UBound(r)) = r
End Sub
Sub 层级1()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")
    Set d = CreateObject("scripting.dictionary")
    r = .Range("a2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 7)) = r(i, 1)
        a = d("" & r(i, 7))
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("k4").Resize(UBound(r)) = r
End Sub
Sub 层级1名称()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")
    Set d = CreateObject("scripting.dictionary")
    r = .Range("b2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 6)) = r(i, 1)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("l4").Resize(UBound(r)) = r
End Sub
Sub 层级2()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")
    Set d = CreateObject("scripting.dictionary")
    r = .Range("c2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 5)) = r(i, 1)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("m4").Resize(UBound(r)) = r
End Sub
Sub 层级2名称()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")

    Set d = CreateObject("scripting.dictionary")
    r = .Range("d2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 4)) = r(i, 1)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("n4").Resize(UBound(r)) = r
End Sub
Sub 层级3()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")

    Set d = CreateObject("scripting.dictionary")
    r = .Range("e2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 3)) = r(i, 1)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("o4").Resize(UBound(r)) = r
End Sub
Sub 层级3名称()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")

    Set d = CreateObject("scripting.dictionary")
    r = .Range("f2", .Range("g10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 2)) = r(i, 1)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("p4").Resize(UBound(r)) = r
End Sub
Sub 小店商品组分类()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\商品信息.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("商品目录-1")

    Set d = CreateObject("scripting.dictionary")
    r = .Range("g2", .Range("i10000").End(3))
    For i = 1 To UBound(r)
        d("" & r(i, 1)) = r(i, 3)
    Next
End With
r = Sheet1.Range("q4", Sheet1.Range("q10000").End(3))
    For i = 1 To UBound(r)
        r(i, 1) = d("" & r(i, 1))
    Next
Sheet1.Range("s4").Resize(UBound(r)) = r
     'End With
wkb_data.Close False '关闭工作簿,不保存更改
Set wkb_data = Nothing '释放对象变量
Application.ScreenUpdating = True
End Sub
