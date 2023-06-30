<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>checkPage</title>
    </head>
    <body>
        <script>
            if(${logout}==1){
                alert("로그아웃 되었습니다.");
                location.href="index";
            }
        </script>

    </body>

    </html>