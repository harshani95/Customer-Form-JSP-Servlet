<%--
  Created by IntelliJ IDEA.
  User: Ruwanthika
  Date: 2023-11-06
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>

<%
    long id = Long.parseLong(request.getParameter("id"));
    Customer customer = new CustomerController().findCustomer(id);
%>

<form action="/update" method="post">
    <div class="container p-4">
        <div class="row">
            <div class="col-3">
                <div class="form-group">
                    <label for="id">Id</label>
                    <input type="text" id="id" class="form-control" name="id" value="<%=customer.getId()%>">
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" class="form-control" name="name" value="<%=customer.getName()%>">
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" id="address" class="form-control" name="address" value="<%=customer.getAddress()%>">
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="text" id="salary" class="form-control" name="salary" value="<%=customer.getSalary()%>">
                </div>
            </div>
            <div class="col-12">
                <br>
                <button class="btn btn-primary col-12" type="submit">Update Customer</button>
            </div>
        </div>
    </div>
</form>
</body>
</html>
