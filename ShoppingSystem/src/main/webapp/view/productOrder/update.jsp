<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h5><i class="fa fa-edit fa-fw"></i> <b> Update Product Order</b></h5> 
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" action="${appPath}/productOrder/update" method="POST">
                                <div class="form-group">
                                    <label for="id">Id</label>
                                    <input class="form-control" type="number" name="id" readonly value="${PRODUCT_ORDER.id}" />
                                </div>     
                                <div class="form-group">
                                    <label for="amount">Amount</label>
                                    <input class="form-control" type="text" name="amount"  value="${PRODUCT_ORDER.amount}" />
                                </div>     
                                <div class="form-group">
                                    <label for="deliveryLocation">Delivery Location</label>
                                    <input class="form-control" type="text" name="deliveryLocation"  value="${PRODUCT_ORDER.deliveryLocation}" />
                                </div>     
                                <div class="form-group">
                                    <label for="deliveryTime">Delivery Time</label>
                                    <input class="form-control" type="text" name="deliveryTime"  value="${PRODUCT_ORDER.deliveryTime}" />
                                </div>     
                                <div class="form-group">
                                    <label for="promoCode">Promo Code</label>
                                    <input class="form-control" type="text" name="promoCode"  value="${PRODUCT_ORDER.promoCode}" />
                                </div>     
                                <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
                                <a href="${appPath}/productOrder/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
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
