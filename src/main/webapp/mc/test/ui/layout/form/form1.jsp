<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>form布局（单列）</title>
    <%@ include file="/mc/common/mc_all.jspf" %>

</head>

<body>
    <div class="mc-title-container">form布局，单列</div>
    <form action="" class="mc-form-container" >
        <table cellpadding="0" cellspacing="0" class="mc-form-table">
            <colgroup>
                <col style="width:120px;" />
                <col />
            </colgroup>
            <thead></thead>
            <tbody>
            <tr>
                <th title="输入字段1" >输入字段1</th>
                <td colspan="">
                    <input type="text" class="mc-input" title="">
                </td>
            </tr>
            <tr>
                <th title="输入字段2" >输入字段2</th>
                <td colspan="">
                    <div class="mc-date-field">
                        <i class="fa fa-calendar"></i>
                        <input id="date" type="text" class="mc-input" title="">
                    </div>
                </td>
            </tr>
            <tr>
                <th title="省份" >省份</th>
                <td colspan="">
                    <select id="cmbJQueryUI">
                        <option value="">请选择...</option>
                        <option value="p01">江苏</option>
                        <option value="p02">浙江</option>
                        <option value="p03">福建</option>
                        <option value="p04">广东</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th title="性别" >性别</th>
                <td colspan="">
                    <div class="mc-radio-group">
                        <div class="mc-radio"><input id="radio1" type="radio" name="radiogroup" value="0"><label class="mc_label" for="radio1">男</label></div>
                        <div class="mc-radio"><input id="radio2" type="radio" name="radiogroup" value="1"><label class="mc_label" for="radio2">女</label></div>
                        <div class="mc-radio"><input id="radio3" type="radio" name="radiogroup" value="-1"><label class="mc_label" for="radio3">其他</label></div>
                    </div>
                </td>
            </tr>
            <tr>
                <th title="品牌" >品牌</th>
                <td colspan="">
                    <div class="mc-checkbox-group">
                        <div class="mc-checkbox"><input id="checkbox2" type="checkbox" name="brand" value="1"><label for="checkbox2">苹果</label></div>
                        <div class="mc-checkbox"><label for="checkbox3">三星</label><input id="checkbox3" type="checkbox" name="brand" value="2"></div>
                        <div class="mc-checkbox"><input id="checkbox4" type="checkbox" name="brand" value="3"><label for="checkbox4">华为</label></div>
                        <div class="mc-checkbox"><input id="checkbox5" type="checkbox" name="brand" value="4"><label for="checkbox5">小米</label></div>
                    </div>
                </td>
            </tr>

            <tr>
                <td></td>
                <td colspan="">
                    <button class="mc-btn mc-btn-blue"><i class="fa fa-search"></i>查询</button>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <script>
        $(function () {
            $( "#cmbJQueryUI" ).selectmenu({
                width:132
            });
        });
    </script>
</body>
</html>