<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/main.css">
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
            background-color: green; /* Blue color */
            color: white; /* White text color */
        }

        .white-button {
            background-color: white; /* White background */
            color: black; /* Black text */
            border: 2px solid #4CAF50; /* Green border */
            padding: 10px 20px; /* Padding */
            text-align: center; /* Centered text */
            text-decoration: none; /* No underline */
            display: inline-block; /* Inline block level */
            font-size: 16px; /* Font size */
            margin: 4px 2px; /* Margin */
            cursor: pointer; /* Pointer cursor on hover */
            border-radius: 25px; /* Rounded corners */
        }
    </style>
</head>
<body>

<h1>View Post</h1>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <table class="table table-bordered" style="border-radius:30px">
                <tbody class="B">
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

                </tbody>
            </table>
            <br/><input type="button" value="Cancel" class="white-button" onclick="history.back()"/></td></tr>


        </div>
    </div>
</div>

</body>
</html>
