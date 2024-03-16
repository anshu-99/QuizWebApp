<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-top: 100px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        h1 {
            color: #333;
        }
        .score {
            font-size: 24px;
            margin-top: 30px;
            color: #1e88e5;
        }
        .btn {
            background-color: #1e88e5;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
            margin-bottom: 30px;
        }
        .btn:hover {
            background-color: #1565c0;
        }
    </style>
</head>
<body>
    <%@ page import="java.util.Arrays" %>
    <%

        String[] submittedAnswers = new String[10];
        for (int i = 0; i < 10; i++) {
            submittedAnswers[i] = request.getParameter("q" + (i + 1));
        }

        String[] correctAnswers = {
        	    "Structured Query Language",     // Question 1
        	    "SELECT",                        // Question 2
        	    "Number of employees in the Employees table", // Question 3
        	    "DELETE",                        // Question 4
        	    "WHERE",                         // Question 5
        	    "15",                            // Question 6
        	    "Converts a string to uppercase", // Question 7
        	    "World",                         // Question 8
        	    "ASC",                           // Question 9
        	    "Total number of orders"         // Question 10
        	};




        // Calculate the score
        int score = 0;
        for (int i = 0; i < 10; i++) {
            if (submittedAnswers[i] != null && submittedAnswers[i].equals(correctAnswers[i])) {
                score++;
            }
        }
    %>

    <div class="container">
        <h1>Quiz Result</h1>
        <div class="score">
            Your Score: <%= score %>
        </div><br>
        <a href="NewFile.html" class="btn">Take Another Quiz</a>
    </div>
</body>
</html>
