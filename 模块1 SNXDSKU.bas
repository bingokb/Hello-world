Attribute VB_Name = "ģ��1"
Sub all0()
Call ��Ʒ��
Application.Wait (Now + TimeValue("00:00:03"))
Call ��Ʒ������
Call ����
Call �㼶1
Call �㼶1����
Call �㼶2
Call �㼶2����
Call �㼶3
Call �㼶3����
Call Ʒ��
Call С����Ʒ�����
End Sub
Sub ��Ʒ��()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
    
With Sheets("��Ʒ������Ϣ")
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
'wkb_data.Close False '�رչ�����,���������
'Set wkb_data = Nothing '�ͷŶ������
'Application.ScreenUpdating = True
    
End Sub
Sub ��Ʒ������()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��Ʒ������Ϣ")
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
Sub ����()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��Ʒ������Ϣ")
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
Sub Ʒ��()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��Ʒ������Ϣ")
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
Sub �㼶1()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")
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
Sub �㼶1����()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")
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
Sub �㼶2()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")
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
Sub �㼶2����()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")

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
Sub �㼶3()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")

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
Sub �㼶3����()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")

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
Sub С����Ʒ�����()
Dim Sht As Worksheet
Dim wkb_data As Workbook
Dim fullpath As String
Dim i As Long
    fullpath = ThisWorkbook.Path & "\��Ʒ��Ϣ.xlsx"
    Application.ScreenUpdating = False
    
Set Sht = ThisWorkbook.Sheets("SKU")
Set wkb_data = Workbooks.Open(fullpath)
With Sheets("��ƷĿ¼-1")

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
wkb_data.Close False '�رչ�����,���������
Set wkb_data = Nothing '�ͷŶ������
Application.ScreenUpdating = True
End Sub
