<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function() {
      $('#categories li').click(function() {
        var category = $(this).data('category');
        $('#selectedCategory').val(category);
        document.forms['categoryForm'].submit();
      });

      $('#titles').on('click', 'li', function() {
        var title = $(this).text();
        $('#selectedTitle').val(title);
        document.forms['titleForm'].submit();
      });
    });
  </script>
</head>
<body>
  <div id="categories">
    <ul>
      <li data-category="rock">Rock</li>
      <li data-category="pop">Pop</li>
      <!-- Add more categories here -->
    </ul>
  </div>

  <div id="titles">
    <c:forEach var="title" items="${titles}">
      <li>${title}</li>
    </c:forEach>
  </div>

  <div id="dates">
    <c:forEach var="date" items="${dates}">
      <li>${date}</li>
    </c:forEach>
  </div>

  <form id="categoryForm" action="ticket.do" method="post">
    <input type="hidden" name="selectedCategory" id="selectedCategory" />
  </form>

  <form id="titleForm" action="your_servlet_url" method="post">
    <input type="hidden" name="selectedTitle" id="selectedTitle" />
  </form>
</body>
</html>
