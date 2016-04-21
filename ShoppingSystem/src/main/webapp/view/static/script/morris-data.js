$(function () {
    var dataList = [];
    $("#page-wrapper").find("div.entity").each(function () {
        var entity = $(this);
        var count = parseInt(entity.children("div.count").text());
        if (count > 0) {
            dataList.push({label: entity.children("div.title").text(), value: count});
        }

    })
    if (dataList.length > 0) {
        Morris.Donut({
            element: 'morris-donut-chart',
            data: dataList,
            resize: true
        });
    } else {
        $("#morris-donut-chart").closest(".panel").remove();
    }
});
