<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['일', '확진', '완치'],
          ['07.30',  1710, 1198],
          ['07.31',  1539, 1420],
          ['08.01',  1442, 1442],
          ['08.02',  1219, 931]
        ]);

        var options = {
          title: '코로나 일별 확진자 발생 및 완치 추세',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['일', '확진', '완치'],
            ['07.30',  1710, 1198],
            ['07.31',  1539, 1420],
            ['08.01',  1442, 1442],
            ['08.02',  1219, 931]
        ]);

        var options = {
          chart: {
            title: '코로나 일별 확진자 발생 및 완치 추세'
          },
          bars: 'horizontal'
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
     <div id="barchart_material" style="width: 900px; height: 500px;"></div>
  </body>
</html>