
<%--
  Created by IntelliJ IDEA.
  User: hakyoungan
  Date: 2023/12/02
  Time: 3:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <title>Title</title>
  <style>
    #list {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>

</head>
<body>
  </table>

  <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 font-italic">Christmas Carol Recommendations</h1>
      <p class="lead my-3">We will help you find the carol you want with information on various carols, including singers and genres!</p>
      <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">Continue reading...</a></p>
    </div>
  </div>

  <div class="row mb-2">


    <c:forEach items="${list}" var="u">
      <div class="col-md-6">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">

            <strong class="d-inline-block mb-2 text-primary">${u.cnt}</strong>
            <h3 class="mb-0">${u.title}</h3>
            <div class="mb-1 text-muted">${u.artist}</div>
            <p class="card-text mb-auto">${u.composer}</p>
            <p class="card-text mb-auto">${u.lyric}</p>
            <p class="card-text mb-auto">${u.genre}</p>
            <p class="card-text mb-auto">${u.releaseDate}</p>
            <p class="card-text mb-auto">${u.review}</p>
            <div>
              <a href="<c:url value='/view/${u.cnt}'/>">View</a>
              <a href="editform/${u.cnt}">Edit</a>
              <a href="<c:url value='/deleteok/${u.cnt}'/>">Delete</a>
            </div>


          </div>
          <div class="col-auto d-none d-lg-block">
            <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

          </div>

        </div>
      </div>
    </c:forEach>


  </div>




  <br/><a href="add">Add New Post</a>
  <br/><a href="login/logout">Logout</a></main>



</body>
</html>

