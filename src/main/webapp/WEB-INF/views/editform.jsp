<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title>Edit Song</title>
    <style>
        .green-button {
            background-color: green; /* Green background */
            color: white; /* White text */
            border: none; /* No border */
            padding: 10px 20px; /* Padding */
            text-align: center; /* Centered text */
            text-decoration: none; /* No underline */
            display: inline-block; /* Inline block level */
            font-size: 16px; /* Font size */
            margin: 4px 2px; /* Margin */
            cursor: pointer; /* Pointer cursor on hover */
            border-radius: 25px; /* Rounded corners */
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

<div class="container">
    <h1>Edit Song</h1>
    <form action="../editok" method="post">
        <input type="hidden" name="cnt" value="${u.cnt}" />

        <div class="col-md-8 order-md-1">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="title">Title</label>
                    <input type="text" name="title" class="form-control" id="title" value="${u.title}">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="artist">Artist</label>
                    <input type="text" name="artist" class="form-control" id="artist" value="${u.artist}">
                </div>
            </div>

            <div class="mb-3">
                <label for="composer">Composer</label>
                <input type="text" name="composer" class="form-control" id="composer" value="${u.composer}">
            </div>

            <div class="mb-3">
                <label for="lyric">Lyricist</label>
                <input type="text" name="lyric" class="form-control" id="lyric" value="${u.lyric}">
            </div>

            <div class="mb-3">
                <label for="genre">Genre</label>
                <input type="text" name="genre" class="form-control" id="genre" value="${u.genre}">
            </div>

            <div class="mb-3">
                <label for="releaseDate">Released Date</label>
                <input type="date" name="releaseDate" class="form-control" id="releaseDate" value="${u.releaseDate}">
            </div>

            <div class="mb-3">
                <label for="review">My Review</label>
                <textarea name="review" class="form-control" id="review" rows="5">${u.review}</textarea>
            </div>


            <div>
                <input type="submit" value="Add Song" class="green-button"/>
                <input type="reset" value="Reset" class="white-button"/>
                <button type="button" onclick="history.back()" class="white-button">Cancel</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
