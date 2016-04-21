<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h5><i class="fa fa-edit fa-fw"></i> <b> Update Customer</b></h5> 
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" action="${appPath}/customer/update" method="POST">
                                <div class="form-group">
                                    <label for="id">Id</label>
                                    <input class="form-control" type="number" name="id" readonly value="${CUSTOMER.id}" />
                                </div>     
                                <div class="form-group">
                                    <label for="firstName">First Name</label>
                                    <input class="form-control" type="text" name="firstName"  value="${CUSTOMER.firstName}" />
                                </div>     
                                <div class="form-group">
                                    <label for="lastName">Last Name</label>
                                    <input class="form-control" type="text" name="lastName"  value="${CUSTOMER.lastName}" />
                                </div>     
                                <div class="form-group">
                                    <label for="age">Age</label>
                                    <input class="form-control" type="text" name="age"  value="${CUSTOMER.age}" />
                                </div>     
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input class="form-control" type="text" name="address"  value="${CUSTOMER.address}" />
                                </div>     
                                <div class="form-group">
                                    <label for="mobileNumber">Mobile Number</label>
                                    <input class="form-control" type="text" name="mobileNumber"  value="${CUSTOMER.mobileNumber}" />
                                </div>     
                                <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
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
