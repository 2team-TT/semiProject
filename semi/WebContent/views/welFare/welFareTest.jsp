<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>복지 정보 조회</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>복지 정보 조회</h1>
<button id="loadAll">모든 복지 정보 보기</button>
<button id="loadNth">N번째 복지 정보 보기</button>
<input type="number" id="nth" placeholder="n 입력">
<div id=".data-container"></div>

<script>
    $(document).ready(function() {
        $('#loadAll').click(function() {
            $.ajax({
                url: 'test.wf', // Servlet URL 설정
                type: 'GET', // 또는 POST
                dataType: 'json', // 응답 데이터 타입
                success: function(response) {
                    $('.data-container').empty();
                    response.forEach(function(info) {
                        $('.data-container').append('<p>' + info.WLFARE_INFO_NM + '</p>');
                    });
                },
                error: function() {
                    $('.data-container').html('<p>데이터를 불러오는데 실패했습니다.</p>');
                }
            });
        });

        $('#loadNth').click(function() {
            let n = $('#nth').val();
            $.ajax({
                url: 'test.wf', // Servlet URL 설정
                type: 'GET', // 또는 POST
                dataType: 'json', // 응답 데이터 타입
                success: function(response) {
                    let index = n - 1; // 배열은 0부터 시작하므로
                    if (index >= 0 && index < response.length) {
                        $('.data-container').html('<p>' + response[index].WLFARE_INFO_NM + '</p>');
                    } else {
                        $('.data-container').html('<p>입력한 번호의 복지 정보가 없습니다.</p>');
                    }
                },
                error: function() {
                    $('.data-container').html('<p>데이터를 불러오는데 실패했습니다.</p>');
                }
            });
        });
    });
</script>
</body>
</html>
