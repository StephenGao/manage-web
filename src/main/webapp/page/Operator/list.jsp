<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>list</title>
    <%@ include file="/commons/meta.jsp" %>
    <link  href="${ctx}/static/js/plugins/trirand/css/ui.jqgrid-bootstrap.css" rel="stylesheet"/>
    <script src="${ctx}/static/js/plugins/trirand/js/i18n/grid.locale-cn.js"></script>
    <script src="${ctx}/static/js/plugins/trirand/js/jquery.jqGrid.min.js"></script>
</head>
<body>
<div style="margin:0 15px;">
    <%--<div class="container">--%>
       <p>
        <section id="button">
            <button class="ui-button-primary" onclick="getSelectedRows()">新 增</button>
            <button class="ui-button-primary" onclick="getSelectedRows()">删 除</button>
            <button class="ui-button-primary" onclick="getSelectedRows()">修 改</button>
            <button class="ui-button-primary" onclick="getSelectedRows()">查 询</button>
        </section>
       </p>
       <table id="dataGrid"></table>
       <div id="gridPager"></div>
</div>

<script type="text/javascript">
    $('button').button();
    $(document).ready(function() {
        var gridUrl = '${ctx}/Operator/getData.do';
        $.jgrid.styleUI.Bootstrap.base.rowTable = "table table-bordered table-striped"; //设置表格条文
        $("#dataGrid").jqGrid({
            url:gridUrl,
            datatype: "json",
            mtype:'POST',
            styleUI : 'Bootstrap',
            responsive:true,
//                sortname: 'id',
//                sortorder: "desc",
//                data: mydata,
//                datatype: "local",
            rowNum: 10,
            rowList: [10,20,30],
            colModel:[
                {label:'id',name:'id',key: true},
                {label:'loginName',name:'loginName', editable: true,
                    editrules: {required: true}
                },
//                {label:'gender',name:'gender',editable: true},
                {label:'age',name:'age',editable: true,
                    editrules: {number: true, minValue: 1, maxValue: 150, required: true}
                },
                {label:'email',name:'email',editable: true,formatter: 'email',
                    editrules: {email: true,required: true}
                },
                {label:'operatorType',name:'operatorType', editable: true,
                    edittype: "select",
                    editoptions: {value: "0:0;1:1;2:2"}
                },
                {label: 'loginTime', name: 'loginTime', edittype: "text", editable: true,
                    editrules: {date: true, format: 'yyyy-mm-dd', required: true},
                    searchoptions: {
                        dataInit: function (element) {
                            $(element).datepicker({
                                autoclose: true,
                                format: 'yyyy-mm-dd',
                                orientation: 'bottom'
                            });
                        }
                    }
                },
                {label:'createTime',name:'createTime',editable: true}
            ],
            pager: '#gridPager',
            viewrecords: true, //是否要显示总记录数
//            caption: "操作员信息",
            hidegrid:true,
            altRows: true,
            shrinkToFit:true,
            autowidth: true,
            height: '370',
            multiselect: true//是否可以多选
        });
        $('#dataGrid').navGrid('#gridPager', {edit: true, add: true, del: true, search: true, refresh: true, view: true,position: "left", cloneToTop: false},
                {editCaption: "编辑", closeAfterAdd: true, recreateForm: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                {editCaption: "添加",closeAfterAdd: true, recreateForm: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                {errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
                }
        );
        //自定义按钮
        $('#dataGrid').navButtonAdd('#gridPager', {
            buttonicon: "ui-icon-mail-closed",
            title: "Send Mail",
            caption: "Send Mail",
            position: "last",
            onClickButton: customButtonClicked
        });
    });

    //自定义按钮
    function customButtonClicked() {
        alert("You have clicked a custom button.");
    }

    function getSelectedRows() {
        var grid = $("#dataGrid");
        var rowKey = grid.getGridParam("selrow");

        if (!rowKey)
            alert("No rows are selected");
        else {
            var selectedIDs = grid.getGridParam("selarrrow");
            var result = "";
            for (var i = 0; i < selectedIDs.length; i++) {
                result += selectedIDs[i] + ",";
            }

            alert(result);
            $('#dataGrid').navGrid('#gridPager',{editCaption: "编辑", closeAfterAdd: true, recreateForm: true,
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            });
        }
    }

    function scalarGrid() {
        $("#dataGrid").jqGrid('setGridWidth', $(window).width()-28).jqGrid('setGridHeight',$(window).height()-130);
    }

    window.onload = function(){
        scalarGrid();
    }
    window.onresize = function(){
        scalarGrid();
    }
</script>
</body>
</html>
