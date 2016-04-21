<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h5><i class="fa fa-edit fa-fw"></i> <b> Update Product</b></h5> 
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" action="${appPath}/product/update" method="POST">
                                <div class="form-group">
                                    <label for="id">Id</label>
                                    <input class="form-control" type="number" name="id" readonly value="${PRODUCT.id}" />
                                </div>     
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input class="form-control" type="text" name="name"  value="${PRODUCT.name}" />
                                </div>     
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <input class="form-control" type="text" name="description"  value="${PRODUCT.description}" />
                                </div>     
                                <div class="form-group">
                                    <label for="listPrice">List Price</label>
                                    <input class="form-control" type="text" name="listPrice"  value="${PRODUCT.listPrice}" />
                                </div>     
                                <div class="form-group">
                                    <label for="sellingPrice">Selling Price</label>
                                    <input class="form-control" type="text" name="sellingPrice"  value="${PRODUCT.sellingPrice}" />
                                </div>     
                                <div class="form-group">
                                    <label for="specialPrice">Special Price</label>
                                    <input class="form-control" type="text" name="specialPrice"  value="${PRODUCT.specialPrice}" />
                                </div>     
                                <div class="checkbox form-group">
                                    <label for="freeDelivery">
                                        <input type="checkbox" name="freeDelivery" selected="${PRODUCT.freeDelivery}"/>
                                        Free Delivery</label>
                                </div>
                                <div class="form-group">
                                    <label for="quantityAvailabile">Quantity Availabile</label>
                                    <input class="form-control" type="text" name="quantityAvailabile"  value="${PRODUCT.quantityAvailabile}" />
                                </div>     
                                <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
                                <a href="${appPath}/product/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
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
