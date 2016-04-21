<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf"%>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-lg-6"><h5><i class="fa fa-database fa-fw"></i> <b> Customer List</b></h5></div>
                        <div class="col-lg-6">
                            <div align="right">
                                <a class="btn btn-primary btn-sm" href="new"><i class="fa fa-plus"></i> Add</a>
                                <c:if test="${not empty requestScope.CUSTOMER_LIST}">
                                    <button class="btn btn-default btn-sm" onclick="javascript:window.print()">
                                        <i class="fa fa-print fa-fw"></i> Print Customer list
                                    </button>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="CUSTOMER_TABLE">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Age</th>
                                    <th>Address</th>
                                    <th>Mobile Number</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${CUSTOMER_LIST}" var="CUSTOMER">
                                    <tr>
                                        <td>${mvc.encoders.html(CUSTOMER.id)}</td>

                                        <td>${mvc.encoders.html(CUSTOMER.firstName)}</td>

                                        <td>${mvc.encoders.html(CUSTOMER.lastName)}</td>

                                        <td>${mvc.encoders.html(CUSTOMER.age)}</td>

                                        <td>${mvc.encoders.html(CUSTOMER.address)}</td>

                                        <td>${mvc.encoders.html(CUSTOMER.mobileNumber)}</td>

                                        <td>
                                            <div class="pull-right">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown">
                                                        <i class="fa fa-gear"></i>  <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu pull-right" role="menu">
                                                        <li><a href="${CUSTOMER.id}"><i class="fa fa-level-up fa-fw"></i>  View</a></li>
                                                        <li><a href="${appPath}/customer/update/${CUSTOMER.id}"><i class="fa fa-edit fa-fw"></i>  Edit</a></li>
                                                        <li class="divider"></li>
                                                        <li><a data-toggle="modal" data-target="#confirm_delete_${CUSTOMER.id}" href="#"  ><i class="fa fa-trash-o fa-fw"></i> Delete</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- Modal -->
                                            <div class="modal fade" id="confirm_delete_${CUSTOMER.id}" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title">Confirmation</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Are you sure to delete Customer ?</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <form action="${appPath}/customer/remove/${CUSTOMER.id}" method="DELETE">
                                                                <a href="#" class="btn" data-dismiss="modal">Cancel</a> <button type="submit" class="btn btn-primary">Confirm</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </td>

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>


                    <c:if test="${empty requestScope.CUSTOMER_LIST}">
                        <div class="alert alert-info">
                            <div align="center">No Customer found</div>
                        </div>
                    </c:if>



                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
</div>
<script>
    $(document).ready(function () {
        $('CUSTOMER_TABLE').DataTable({
            responsive: true
        });
    });
</script>

<%--end content--%>
<%@ include file="../common/footer.jspf"%>
