<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th:first-child,
        td:first-child {
            background-color: #006bb3; /* Blue color */
            color: white; /* White text color */
        }
    </style>
</head>
<body>

<h1>View Post</h1>
<table>
    <tr>
        <td>ID:</td>
        <td>${u.cnt}</td>
    </tr>
    <tr>
        <td>Title:</td>
        <td>${u.title}</td>
    </tr>
    <tr>
        <td>Artist:</td>
        <td>${u.artist}</td>
    </tr>
    <tr>
        <td>Composer:</td>
        <td>${u.composer}</td>
    </tr>
    <tr>
        <td>Lyricist:</td>
        <td>${u.lyric}</td>
    </tr>
    <tr>
        <td>Genre:</td>
        <td>${u.genre}</td>
    </tr>
    <tr>
        <td>Released Date:</td>
        <td>${u.releaseDate}</td>
    </tr>
    <tr>
        <td>My Review:</td>
        <td>${u.review}</td>
    </tr>
    <tr>
        <td>Regdate:</td>
        <td>${u.regdate}</td>
    </tr>

</table>
<br/><input type="button" value="Cancel" onclick="history.back()"/></td></tr>

</body>
</html>
