<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>도로명 주소 다국어 번역기</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<%@ include file="common/Header.jsp" %>

<form id="searchForm" onsubmit="return false;">
    <div style="margin-bottom:8px;">
        <label style="font-weight:bold; margin-right:8px;">
            도로명(한글) 주소 입력
        </label>

        <!-- 도로명 입력 -->
        <input type="text"
               id="roadKeyword"
               name="keyword"
               style="width:260px; padding:4px;"
               placeholder="예) 강남대로, 테헤란로, 한강남자전거길">

        <!-- 언어 선택 -->
        <label style="margin-left:16px; margin-right:4px;">번역 언어</label>
        <select name="lang" id="lang-select" style="padding:4px;">
            <option value="en">영어 (English)</option>
            <option value="ja">일본어 (日本語)</option>
            <option value="zh">중국어 (中文)</option>
        </select>

        <!-- 검색 버튼 -->
        <button type="button"
                id="btnSearch"
                style="margin-left:12px; padding:4px 12px;">
            검색
        </button>
    </div>

    <div style="font-size:12px; color:#666;">
        ※ 도/시/군/구는 결과에서 함께 확인할 수 있습니다.
        예) <b>강남대로</b>, <b>테헤란로</b>, <b>한강남자전거길</b> 등 도로명만 입력하세요.
    </div>
</form>

<hr/>

<table border="1" cellpadding="5" cellspacing="0">
    <thead>
    <tr>
        <th>시도</th>
        <th>시군구</th>
        <th>법정동</th>
        <th>도로명(한글)</th>
        <th>도로명(영문)</th>
        <th>우편번호</th>
    </tr>
    </thead>
    <tbody id="resultBody">
    <!-- 검색 결과가 여기 채워짐 -->
    </tbody>
</table>

<%@ include file="common/Footer.jsp" %>

<script>
    $('#btnSearch').on('click', function () {
        const keyword = $('#roadKeyword').val().trim();
        const lang = $('#lang-select').val();

        if (keyword.length < 2) {
            alert('두 글자 이상 입력해 주세요.');
            return;
        }

        $.ajax({
            url: '/api/search-road',
            method: 'GET',
            data: {
                q: keyword,
                lang: lang
            },
            success: function (data) {
                const $tbody = $('#resultBody');
                $tbody.empty();

                if (!data || data.length === 0) {
                    $tbody.append('<tr><td colspan="5">검색 결과가 없습니다.</td></tr>');
                    return;
                }

                data.forEach(function (item) {
                    const row =
                        '<tr>' +
                        '<td>' + item.sidoKor     + '</td>' +
                        '<td>' + item.sigunguKor  + '</td>' +
                        '<td>' + (item.dongNameKor || '') + '</td>' +
                        '<td>' + item.roadNameKor + '</td>' +
                        '<td>' + item.roadNameEng + '</td>' +
                        '<td>' + item.zipcode     + '</td>' +
                        '</tr>';

                    $tbody.append(row);
                });
            },
            error: function () {
                alert('검색 중 오류가 발생했습니다.');
            }
        });
    });
</script>

</body>
</html>
