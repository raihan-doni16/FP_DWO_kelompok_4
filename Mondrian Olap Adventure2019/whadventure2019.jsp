<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/whadventure2019?user=root&password=" catalogUri="/WEB-INF/queries/whadventure2019.xml">

select {[Measures].[sales_total],[Measures].[revenue],[Measures].[profit]} ON COLUMNS,
  {([dimensi_Product],[dimensi_date].[All Times],[dimensi_Customer],[dimensi_store])} ON ROWS
from [sales]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Adventure Works Mondrian OLAP Sales</c:set>
