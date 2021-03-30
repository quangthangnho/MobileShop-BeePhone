<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Sản phẩm', 'Tổng tiền'],
          <c:forEach var="repo" items="${reports}">
          [`${repo.group}`, ${repo.sum}],
          </c:forEach>
        ]);

        var options = {
          title: 'BÁO CÁO CÁC MẶT HÀNG ĐÃ MUA CỦA BẠN',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart" style="width: 100%; height: 500px;"></div>
  </body>
</html>