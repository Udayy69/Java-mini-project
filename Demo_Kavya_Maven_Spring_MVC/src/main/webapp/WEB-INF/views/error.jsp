<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    h1 {
        color: red; 
        font-size: 3em; 
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); 
        animation: glow 1s ease-in-out infinite alternate; 
    }
    
    @keyframes glow {
        from {
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        to {
            text-shadow: 4px 4px 8px rgba(255, 0, 0, 0.7);
        }
    }
</style>
</head>
<body>
    <h1>Record Not Found</h1>
</body>
</html>