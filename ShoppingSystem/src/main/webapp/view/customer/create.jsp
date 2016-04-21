<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h5><i class="fa fa-plus-square fa-fw"></i> <b> Create a new Customer </b></h5>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" action="${appPath}/customer/new" method="POST">
                                <div class="form-group">
                                    <label for="id">Id</label>
                                    <input class="form-control" type="number" name="id" path="id"  required="required" autofocus="autofocus"  />
                                </div>
                                <div class="form-group">
                                    <label for="firstName">First Name</label>
                                    <input class="form-control" type="text" name="firstName" path="firstName"  />
                                </div>
                                <div class="form-group">
                                    <label for="lastName">Last Name</label>
                                    <input class="form-control" type="text" name="lastName" path="lastName"  />
                                </div>
                                <div class="form-group">
                                    <label for="age">Age</label>
                                    <input class="form-control" type="text" name="age" path="age"  />
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input class="form-control" type="text" name="address" path="address"  />
                                </div>
                                <div class="form-group">
                                    <label for="mobileNumber">Mobile Number</label>
                                    <input class="form-control" type="text" name="mobileNumber" path="mobileNumber"  />
                                </div>
                                <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Submit</button>
                                <a href="${appPath}/customer/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<%--end content--%>
<%@ include file="../common/footer.jspf"%>
