<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jspf"%>

<div id="page-wrapper">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="login-panel panel panel-red">
                <div class="panel-heading">
                    <h3 class="panel-title">Error :</h3>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <a href="#" class="list-group-item">
                            <div class="row">
                                <div class="col-lg-4"><span class="small">Property :</span></div>
                                <div class="col-lg-8">${mvc.encoders.html(errorBean.property)}</div>
                            </div>
                        </a>  

                        <a href="#" class="list-group-item">
                            <div class="row">
                                <div class="col-lg-4"><span class="small">Value :</span></div>
                                <div class="col-lg-8">${mvc.encoders.html(errorBean.value)}</div>
                            </div>
                        </a>  

                        <a href="#" class="list-group-item">
                            <div class="row">
                                <div class="col-lg-4"><span class="small">Message :</span></div>
                                <div class="col-lg-8">${mvc.encoders.html(errorBean.message)}</div>
                            </div>
                        </a>  
                    </div>
                </div>
                <div class="panel-footer">
                    <a onclick="history.back()" class="btn btn-lg btn-defult btn-block">Retry</a>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="footer.jspf"%>
