<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Fiction" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Fiction</title>
</head>
<body>
    <h2>เพิ่มนิยายเข้าสู่ระบบเรียบร้อย</h2>
    
    <c:if test="${not empty Fiction}">
        
        <p><strong>ชื่อนิยาย:</strong> ${fiction.fictionName}</p>
        <p><strong>ภาษา:</strong> ${fiction.fictionLanguage}</p>
        
        
       
<% 
    String[] fictionType = request.getParameterValues("fictionType");
    if (fictionType != null) {
    out.print("<strong>แนวนิยาย: </strong>");
        for (int i = 0; i < fictionType.length; i++) {
            out.print(fictionType[i]);
            if (i < fictionType.length - 1) {
                out.print(", ");
            }
        }
    } else {
        out.print("No fictionType specified.");
    }
%>


        <p><strong>เนื้อเรื่อง:</strong> ${fiction.story}</p>
        <p><strong>ราคา:</strong> ${fiction.fictionPrice}</p>
    </c:if>

    <a type="submit" href="updateFiction.jsp" >แก้ไข</a> 
    
    
</body>
</html>
