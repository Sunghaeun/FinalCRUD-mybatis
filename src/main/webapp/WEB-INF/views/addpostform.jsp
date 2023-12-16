<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <meta charset="UTF-8">
    <title>Add Song</title>
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
    <h1>Add New Song</h1>
    <form action="addok" method="post" class="needs-validation" novalidate>

        <div class="col-md-8 order-md-1">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="title">Title</label>
                    <input type="text" name="title" class="form-control" id="title" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Valid title is required.
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="artist">Artist</label>
                    <input type="text" name="artist" class="form-control" id="artist" placeholder="" value="" required>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="composer">Composer</label>
                    <input type="text" name="composer" class="form-control" id="composer" placeholder="" value="">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="lyric">Lyricist</label>
                    <input type="text" name="lyric" class="form-control" id="lyric" placeholder="" value="">
                </div>
            </div>

            <div class="mb-3">
                <label for="genre">Genre</label>
                <input type="text" name="genre" class="form-control" id="genre" placeholder="" value="">
            </div>

            <div class="mb-3">
                <label for="releaseDate">Released Date</label>
                <input type="date" name="releaseDate" class="form-control" id="releaseDate" placeholder="" value="">
            </div>


            <div class="mb-3">
                <label for="review">My Review</label>
                <textarea name="review" class="form-control" id="review" rows="5" placeholder=""></textarea>
            </div>

        </div>

            <hr class="mb-4">

            <div>
                <input type="submit" value="Add Song" class="green-button"/>
                <input type="reset" value="Reset" class="white-button"/>
                <button type="button" onclick="history.back()" class="white-button">Cancel</button>
            </div>
    </form>
</div>

</body>
</html>