<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPage</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.bundle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/plugins.bundle.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body id="kt_body" class="bg-body">
	<!--begin::Main-->
	<!--begin::Root-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Authentication - Sign-in -->
		<div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed">
			<!--begin::Content-->
			<div class="d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20">
				<!--begin::Logo-->
				<!--end::Logo-->
				<!--begin::Wrapper-->
				<div class="w-lg-500px bg-body rounded shadow-sm p-10 p-lg-15 mx-auto" style="height:300px!important">
					<!--begin::Form-->
					<form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="" method="post">
						<!--begin::Input group-->
						<div class="fv-row mb-10">
							<!-- 아이디 -->
							<!--begin::Label-->
							<!--end::Label-->
							<!--begin::Input-->
							<input class="form-control form-control-lg form-control-solid" type="text" name="loginCode" id="loginCode" autocomplete="off" value='' style="height:70px!important" placeholder="로그인ID" />
							<!--end::Input-->
						</div>
						<!--end::Input group-->
						<!--begin::Input group-->
						<!-- <div class="fv-row mb-10">
							비밀번호
							begin::Wrapper
							<div class="d-flex flex-stack mb-2">
								begin::Label
							
								end::Label
							</div>
							end::Wrapper
							begin::Input
							<input class="form-control form-control-lg form-control-solid" type="password" name="password" id="password" autocomplete="off" value='' />
							end::Input
						</div> -->
						<!--end::Input group-->
						<!--begin::Actions-->
						<div class="text-center">
							<label class="form-label fw-bolder text-dark fs-6 mb-0"></label>
							<!--begin::Submit button-->
							<button type="button" id="kt_sign_in_submit" class="btn btn-lg btn-primary w-100 mb-5" style="height:50px!important" >
								<span class="indicator-label">로그인</span> 
							</button>
							<!--end::Submit button-->
						</div>
						<!--end::Actions-->
						<!--begin:find account/pw -->
						<!--end:find account/pw -->
					</form>
					<!--end::Form-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Content-->
		</div>
		<!--end::Authentication - Sign-in-->
	</div>
	<!--end::Root-->
	<!--end::Main-->
	<!--begin::Javascript-->
	<!--begin::Global Javascript Bundle(used by all pages)-->
	<!--end::Global Javascript Bundle-->
	<!--end::Javascript-->
	<script type="text/javascript">
	$('#loginCode').on('keypress', function(event){
        if(event.keyCode == 13){
        	deviceFingerVeinScan()
        }
    })
	</script>
</body>
</html>