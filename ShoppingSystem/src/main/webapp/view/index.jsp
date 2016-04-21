<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jspf"%>


<!-- Morris Charts CSS -->
<link href="${webPath}/static/style/morris.css" rel="stylesheet">


<div id="page-wrapper">
    <div class="row">

        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right entity">
                            <div class="huge count">${customer.count()}</div>
                            <div class="title">Customer</div>
                        </div>
                    </div>
                </div>
                <a href="${appPath}/customer/list">
                    <div class="panel-footer">
                        <span class="pull-left">View Details</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>  
        </div> 

        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-laptop fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right entity">
                            <div class="huge count">${productOrder.count()}</div>
                            <div class="title">ProductOrder</div>
                        </div>
                    </div>
                </div>
                <a href="${appPath}/productOrder/list">
                    <div class="panel-footer">
                        <span class="pull-left">View Details</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>  
        </div> 

        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-list-alt fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right entity">
                            <div class="huge count">${product.count()}</div>
                            <div class="title">Product</div>
                        </div>
                    </div>
                </div>
                <a href="${appPath}/product/list">
                    <div class="panel-footer">
                        <span class="pull-left">View Details</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>  
        </div> 
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div id="morris-donut-chart"></div>
                    <div style="display: none" id="morris-area-chart"></div>
                    <!-- /.panel-body -->
                </div>
            </div>
        </div>

    </div>
</div>
</div>


<!-- Morris Charts JavaScript -->
<script src="${webPath}/static/script/raphael-min.js"></script>
<script src="${webPath}/static/script/morris.min.js"></script>
<script src="${webPath}/static/script/morris-data.js"></script>

<%@ include file="common/footer.jspf"%>
