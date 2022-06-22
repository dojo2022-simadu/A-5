<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="/machico/css/base.css">
<link rel="stylesheet" href="/machico/css/automaticScheduleRegister.css">
</head>
<body>
	<%@ include file="header.jsp"%><%--ヘッダー部分 --%>
	<main>
		<section id="calender">

	<%@ include file="calendarHeader.jsp"%>
			<%--【入力する項目】固定予定登録サーブレットのpostを使う --%>
		<form method="POST" action="/machico/FixedScheduleRegisterServlet">
				<div id="frame">
                        <div class="cp_iptxt">
                            <input type="text" placeholder="タイトル" style="font-weight : bold ;">
                            <i class="fa fa-user fa-lg fa-fw" aria-hidden="true"></i>
                        </div>
                        <div class="frame_contents">
                            　<table id="date_table">
                                <tr>
                                    <td>
                                        <label><b>期限日</b></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="date" style="font-weight : bold ;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="time" id="time_entry" style="font-weight : bold ;">
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="frame_contents">
                    <table id="date_table_end">
                                <tr>
                                    <td>
                                        <label><b>終了</b></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="date" style="font-weight : bold ;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="time" id="time_entry_end" style="font-weight : bold ;">
                                    </td>
                                </tr>
                                <tr>

                            </table>
                        </div><br>
                        <textarea id="memo" placeholder="MEMO" style="font-weight : bold ;"></textarea>
                    </div>

				<%--【保存・キャンセルボタン】ボタン行先合ってる？ --%>
				<div class="screen_contents">
					<input type="button" name="cancel" value="キャンセル" style="font-weight: bold;"
								onclick="location.href='/machico/CalendarServlet'">
				</div>
				<div class="screen_contents">
					<input type="submit" name="save" value="保存" style="font-weight: bold;">
							<input type="hidden" id="err_message" value="${errMessage}">
				</div>
			</form>
		</section>
	</main>

<script type="text/javascript" src="/machico/js/base.js"></script>
<script type="text/javascript" src="/machico/js/automaticScheduleRegister.js"></script>
</body>
</html>