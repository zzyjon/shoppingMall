<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>
<!-- js -->
<%@ include file="/WEB-INF/views/user/include/js.jsp"%>



<script type="text/javascript">
	$(document).ready(function() {
		$("#btnChange").click(function() {
			var mId = $("#mId").val();
			var mPw = $("#mPw").val();

			$.ajax({
				url : "/user/page/member/updatemPw",
				type : "post",
				dataType : "json",
				data : {
					"mId" : mId,
					"mPw" : mPw
				},
				success : function(data) {
					if (data.result == "300") {
						alert("비밀번호 변경 완료");
						location.href = "/user/index";
					} else {
						alert("오류,관리자에게 문의");
					}

				},
				error : function(data) {
					console.log(data);

				}
			});
		});

		//유효성검사
		$("#changePw").bootstrapValidator();

	});
</script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 form-wrap">
				<!-- Nav tabs -->


				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active">
						<h3>${mId}비밀번호변경</h3>
						<hr>

						<form class="form-horizontal" action=" " method="post"
							id="changePw" data-bv-message="This value is not valid"
							data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
							data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
							data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
							<input type="hidden" id="mId" value="${mId }">
							<div class="form-group">
								<label class="col-md-4 control-label">비밀번호</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span> <input type="password"
											class="form-control" name="mPw" required
											data-bv-notempty-message="비밀번호를 입력해주세요."
											data-bv-identical="false" data-bv-identical-field="mPwCheck"
											data-bv-different="true" data-bv-different-field="memberId"
											data-bv-different-message="비밀번호는 아이디와 같을 수 없습니다."
											placeholder="비밀번호를 입력해주세요" pattern="^[a-z0-9]+$"
											data-bv-regexp-message="오직 알파벳과 숫자만 사용 할 수 있습니다."
											data-bv-stringlength="true" data-bv-stringlength-min="6"
											data-bv-stringlength-max="15"
											data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요." />
									</div>
								</div>
							</div>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">비밀번호 확인</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span> <input type="password"
											class="form-control" id="mPw" required
											data-bv-notempty-message="비밀번호를 입력해주세요."
											data-bv-identical="true" data-bv-identical-field="mPw"
											data-bv-identical-message="비밀번호가 일치하지 않습니다."
											data-bv-different="true" data-bv-different-field="memberId"
											data-bv-different-message="비밀번호는 아이디와 같을 수 없습니다."
											placeholder="비밀번호를 다시 입력해주세요." />
									</div>
								</div>
							</div>
							<br>
							<hr>
							<button type="button" class="btn btn-warning" id="btnChange">
								변경하기 <span class="glyphicon glyphicon-send"></span>
							</button>


						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>