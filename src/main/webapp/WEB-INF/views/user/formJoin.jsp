<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>로그인 폼</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/kwstyle.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://kit.fontawesome.com/6bdfd4f896.js" crossorigin="anonymous"></script>
    

    
</head>

<body style="background-color: black;">

    <header>

        <div class="header">
            <nav class="header-container">
                <div class="header-logo">
                    <a href="#"><img width="150px" src="../img/logo.png" alt="logo"></a>
                </div>
    
    
                <ul class="header-nav header-nav-upper clearfix">
                    <li><a data-toggle="modal" href="#myModal">로그인</a></li>
                    <li><a href="#">#님<span class="caret"></span></a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
    
                <ul class="header-nav header-nav-dropdown clearfix">
                    <li><a href="#">사이트 소개</a></li>
                    <li><a href="#">Alley 위치</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">Coffee Talk</a></li>
                    <li><a href="#">카페 게시판</a></li>
                    <li class="dropdown">
                        <a href="#">이벤트</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">이벤트 요약</a></li>
                            <li><a href="#">이벤트 공지</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Owner Mall </span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">원두</a></li>
                            <li><a href="#">티 / 액상차</a></li>
                            <li><a href="#">유제품</a></li>
                            <li><a href="#">시럽 / 소스</a></li>
                            <li><a href="#">파우더 / 농축액</a></li>
                            <li><a href="#">커피용품, 머신</a></li>
                        </ul>
                    </li>
                </ul>
    
            </nav>
    
        </div>
        
    
    </header>
    
    
    <!----------------------------------------------------------로그인  Modal ---------------------------------------------------------->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
    
            <!-- Modal Content -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">로그인</h4>
                </div>
                <div class="modal-body">
                    <form action="#">
                        <h5>아이디</h5>
                        <input type="text" class="form-control" placeholder="Text input">
                        <h5>비밀번호</h5>
                        <input type="password" class="form-control" placeholder="password input">
                        <label>
                            <input type="checkbox">
                            <small>로그인 유지</small>
                        </label>
                        <div class="login-center">
                            <button type="button" class="btn btn-primary btn-block">Log In</button>
                            <div class="login-center2 clearfix">
                                <div style="float:left;">
                                    아직 회원이 아니신가요?
                                </div>
                                <div style="float: right;">
                                    <a href="#">일반회원 가입</a><br>
                                    <a href="#">카페회원 가입</a>
                                </div>
                            </div>
    
                            <div class="login-p-center">또는</div>
                            <button type="button" class="btn btn-block"
                                style="background-color: #04cf5c; color: white;"><strong>N</strong></strong></button>
                        </div>
                    </form>
                    <br>
                    <div class="login-p-center">네이버 가입은 일반 회원만 가능합니다.</div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>




    <div class="container" style="margin-top: 150px;">
    <div class="titlebox">
        <h3 style="color: white;">회원가입</h3>
    </div>
    </div>
    <!-- 폼 섹션 -->
    <section>
        <div class="container">
            <div class="row rowtext" style="margin: 0 auto;">
                <div class="col-xs-12 join-form">
                    <form action="#" class="form-inline" name="regForm">
                        <div class="toprow">
                            <pre class="jointx">
<!--줄 맞춤 xx-->
이용약관
제 1 조 (목적)
본 약관은 쇼핑몰을 운영하는 회사 (이하 ‘사이트’이라 한다)에서 제공하는 인터넷 관련 서비스(이하 ‘서비스’라 하며, 접속 가능한 유,무선 단말기의 종류와 상관없이 이용 가능한 사이트가 제공하는 모든 서비스를 의미합니다.)를 이용함에 있어 회원의 권리•의무 및 책임사항을 규정함을 목적으로 합니다.

제 2 조 (정의)
1. ‘사이트’ 란 ‘회사’가 상품을 회원에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 ‘상품 등’을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 사이버몰을 운영하는 사업자의 의미로도 사용합니다. 현재 ‘회사’가 운영하는 ‘사이트’는 https://redlambcoffee.com 이며, 더불어 서비스 하는 안드로이드, iOS 환경의 서비스를 포함한 모바일웹과 앱을 포함 합니다.
2. ‘회원’이라 함은 ‘사이트’에 개인정보를 제공하여 회원등록을 한 자로서, ‘사이트’에 정해진 회원 가입 방침에 따라 ‘사이트’의 정보를 지속적으로 제공받으며, ‘사이트’가 제공하는 ‘서비스’를 계속적으로 이용할 수 있는 자를 말합니다.
3. ‘비밀번호’라 함은 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 ‘사이트’에 등록한 영문과 숫자의 조합을 말합니다.
4. 본 약관에서 정의되지 않은 용어는 관계법령이 정하는 바에 따르며, 그 외에는 일반적인 상관례에 의합니다.

제 3 조 (약관의 명시와 설명 및 개정)
1. ‘회사’는 이 약관의 내용과 상호 및 대표자 이름, 소재지 주소, 전화번호, 전자우편주소, 사업자등록번호 등을 회원이 쉽게 알 수 있도록 ‘사이트’의 초기 ‘서비스’ 화면에 게시합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있습니다.
2. ‘회사’는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제 등에 관한 법률』, 『전자거래 기본법』, 『전자 서명법』, 『정보통신망 이용촉진 등에 관한 법률』, 『소비자기본법』 등 관계법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3. ‘회사’가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 ‘사이트’의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.
4. ‘회사’가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 회원이 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 ‘회사’에 송신하여 ‘회사’의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
5. 제3항에 따라 공지된 적용일자 이후에 회원이 ‘회사’의 ‘서비스’를 계속 이용하는 경우에는 개정된 약관에 동의하는 것으로 봅니다. 개정된 약관에 동의하지 아니하는 회원은 언제든지 자유롭게 ‘서비스’ 이용계약을 해지할 수 있습니다.

제 4 조 (약관 외 준칙)
이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 『전자상거래 등에서의 소비자 보호에 관한 법률』 등 관련법령의 규정과 일반 상관례에 따릅니다.

제 5 조 (이용계약의 성립)
1. 이용계약은 회원이 되고자 하는 자(이하 ‘가입신청자’)가 약관의 내용에 동의를 하고, ‘회사’가 정한 가입양식에 따라 회원정보(전자우편주소, 비밀번호, or 소셜네트워크를 통한 회원가입 정보 등)를 기입하여 회원가입신청을 하고 ‘회사’가 이러한 신청에 대하여 승인함으로써 체결됩니다.
2. ‘회사’는 다음 각 호에 해당하는 신청에 대하여는 승인을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
가. ‘가입신청자’가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우. 다만, 회원자격 상실 후 3개월이 경과한 자로서 ‘회사’의 회원 재가입 승낙을 얻은 경우에는 예외로 함
나. 등록내용에 허위의 정보를 기재하거나, 기재누락, 오기가 있는 경우
다. 회원가입일 현재 만 14세 미만인 경우
라. 이미 가입된 회원과 이름 및 전자우편주소가 동일한 경우
마. 부정한 용도 또는 영리를 추구할 목적으로 본 ‘서비스’를 이용하고자 하는 경우
바. 회원의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우
사. 기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 ‘회사’가 합리적인 판단에 의하여 필요하다고 인정하는 경우
3. ‘회사’는 ‘서비스’ 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.
4. 제2항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, 이 경우 ‘회사’는 원칙적으로 이를 ‘가입신청자’에게 알리도록 합니다.
5. 이용계약의 성립시기는 ‘회사’가 가입완료를 신청절차상에서 표시한 시점으로 합니다.
6. ‘회사’는 회원에 대해 ‘회사’정책에 따라 등급별로 구분하여 이용시간, 이용횟수, ‘서비스’ 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.
7. ‘회사’는 회원에 대하여 『영화 및 비디오물의 진흥에 관한 법률』 및 『청소년 보호법』 등에 따른 등급 및 연령준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.

제 6 조 (개인정보의 변경)
회원은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.

제 7 조 (개인정보의 보호)
1. ‘회사’는 회원의 개인정보를 보호하기 위하여 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관계법령에서 정하는 바를 준수합니다.
2. ‘회사’는 회원의 개인정보를 보호하기 위하여 개인정보취급방침을 제정, ‘서비스’ 초기화면에 게시합니다. 다만, 개인정보취급방침의 구체적 내용은 연결화면을 통하여 볼 수 있습니다.
3. ‘회사’는 개인정보취급방침에 따라 회원의 개인정보를 최대한 보호하기 위하여 노력합니다.
4. ‘회사’의 공식 ‘사이트’ 이외의 링크된 사이트에서는 ‘회사’의 개인정보취급방침이 적용되지 않습니다. 링크된 사이트 및 ‘상품 등’을 제공하는 제3자의 개인정보 취급과 관련하여는 해당 ‘사이트’ 및 제3자의 개인정보취급방침을 확인할 책임이 회원에게 있으며, ‘회사’는 이에 대하여 책임을 부담하지 않습니다.
5. ‘회사’는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원의 개인정보를 제3자에게 제공할 수 있습니다.
가. 수사기관이나 기타 정부기관으로부터 정보제공을 요청 받은 경우
나. 회원의 법령 또는 약관의 위반을 포함하여 부정행위확인 등의 정보보호업무를 위해 필요한 경우
다. 기타 법률에 의해 요구되는 경우
라. 판매자 또는 배송업체 등에게 거래 및 배송 등에 필요한 최소한의 회원의 정보(성명, 주소, 전화번호)를 제공하는 경우
마. 구매가 성사된 때에 그 이행을 위하여 필요한 경우와 구매가 종료된 이후에도 반품, 교환, 환불, 취소 등을 위하여 필요한 경우

제 8 조 (이용계약의 종료)
1. 회원의 해지
가. 회원은 언제든지 ‘회사’에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다.
나. 이용계약은 회원의 해지의사가 ‘회사’에 도달한 때에 종료됩니다.
다. 본 항에 따라 해지를 한 회원은 이 약관이 정하는 회원가입절차와 관련조항에 따라 회원으로 다시 가입할 수 있습니다.
2. 회사의 해지
가. ‘회사’는 다음과 같은 사유가 있는 경우, 이용계약을 해지할 수 있습니다. 이 경우 ‘회사’는 회원에게 전자우편주소, 전화 등 기타의 방법을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 다만 ‘회사’는 해당 회원에게 사전에 해지사유에 대한 의견진술의 기회를 부여할 수 있습니다.
① 제5조 제2항에서 정하고 있는 이용계약의 승낙거부사유가 있음이 확인된 경우
② 회원이 ‘회사’나 다른 회원 기타 타인의 권리나 명예, 신용 기타 정당한 이익을 침해하는 행위를 한 경우
③ 기타 회원이 이 약관에 위배되는 행위를 하거나 이 약관에서 정한 해지사유가 발생한 경우
나. 이용계약은 ‘회사’가 해지의사를 회원에게 통지함으로써 종료됩니다. 이 경우 ‘회사’는 해지의사를 회원이 등록한 전자우편주소로 발송하거나 ‘회사’의 게시판에 게시함으로써 통지에 갈음합니다.
다. 이용계약이 종료되는 경우 회원의 적립금 및 쿠폰은 소멸되며, 환불 등의 처리에 관하여는 ‘회사’의 환불규정에 의합니다.
라. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하고 ‘회사’는 일체의 책임을 지지 않습니다.

제 9 조 (회원탈퇴 및 자격 상실)
1. 회원은 ‘회사’에 언제든지 탈퇴를 요청할 수 있으며 ‘회사’는 회원탈퇴에 관한 규정에 따라 이를 처리합니다.
2. 회원이 다음 각 호의 사유에 해당하는 경우, ‘회사’는 회원자격을 제한 및 정지시킬 수 있습니다.
가. 다른 사람의 ‘사이트’ 이용을 방해하거나 그 정보를 도용하는 등 전자상거래질서를 위협하는 경우
나. ‘사이트’를 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
다. 기타 다음과 같은 행위 등으로 ‘사이트’의 건전한 운영을 해하거나 ‘사이트’의 업무를 방해하는 경우
① ‘사이트’의 운영과 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 ‘회사’의 명예를 실추시키거나 ‘사이트’의 신뢰성을 해하는 경우
② ‘사이트’의 이용과정에서 직원에게 폭언, 협박 또는 음란한 언행 등으로 ‘사이트’의 운영을 방해하는 경우
③ ‘사이트’를 통해 ‘상품 등’을 구매한 후 정당한 이유 없이 상습 또는 반복적으로 취소∙반품하여 ‘회사’의 업무를 방해하는 경우
④ ‘사이트’를 통해 구입한 ‘상품 등’에 특별한 하자가 없는데도 불구하고 일부 사용 후 상습적인 취소∙전부 또는 일부 반품 등으로 ‘회사’의 업무를 방해하는 경우
3. ‘회사’가 회원자격을 제한∙정지시킨 후 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 ‘회사’는 회원자격을 상실시킬 수 있습니다.
4. 재판매의 목적으로 ‘사이트’에서 ‘상품 등’을 중복 구매하는 등 ‘사이트’의 거래질서를 방해하는 경우 ‘회사’는 당해 회원의 회원자격을 상실시킬 수 있습니다.
5. ‘회사’가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 제8조 제2항 (나)목에 따라 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.

제 10 조 (회원의 ID 및 비밀번호에 대한 의무)
1. ID(전자우편번호 및 소셜네트워크 연동으로 인한 ID)와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 소홀히 하여 발생한 모든 민∙형사상의 책임은 회원 자신에게 있습니다.
2. 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
3. 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 ‘회사’에 통보하고 ‘회사’의 조치가 있는 경우에는 그에 따라야 합니다.
4. 회원이 제3항에 따른 통지를 하지 않거나 ‘회사’의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있습니다.

제 11 조 (회원의 의무)
1. 회원은 관계법령, 이 약관의 규정, 이용안내 등 ‘회사’가 통지하는 사항을 준수하여야 하며, 기타 ‘회사’ 업무에 방해되는 행위를 하여서는 안됩니다.
2. 회원은 ‘서비스’ 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.
가. ‘서비스’ 신청 또는 변경 시 허위내용의 등록
나. 타인의 정보도용
다. ‘사이트’에 게시된 정보의 허가 받지 않은 변경
라. ‘회사’가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
마. ‘회사’ 및 기타 제3자의 저작권 등 지적재산권에 대한 침해
바. ‘회사’ 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
사. 외설 또는 폭력적인 메시지∙화상∙음성 기타 공서양속에 반하는 정보를 ‘회사’에 공개 또는 게시하는 행위
아. ‘회사’의 동의 없이 영리를 목적으로 ‘서비스’를 사용하는 행위
자. 기타 관계법령이나 ‘회사’에서 정한 규정에 위배되는 행위

제 12 조 (회원의 게시물)
1. 회원이 작성한 게시물에 대한 모든 권리 및 책임은 이를 게시한 회원에게 있으며, ‘회사’는 회원이 게시하거나 등록하는 ‘서비스’의 내용물이 다음 각 항에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있고, 이에 대하여 ‘회사’는 어떠한 책임도 지지 않습니다.
2. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
3. 공서양속에 위반되는 내용일 경우
4. 범죄적 행위에 결부된다고 인정되는 경우
5. ‘회사’의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
6. 회원이 ‘사이트’와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우
7. ‘회사’로부터 사전 승인 받지 아니한 상업광고, 판촉내용을 게시하는 경우
8. 해당 상품과 관련 없는 내용인 경우
9. 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 경우
10. 기타 관계법령에 위반된다고 판단되는 경우

제 13 조 (회원에 대한 통지)
1. ‘회사’가 회원에 대한 통지를 하는 경우, 회원이 가입신청 시 ‘회사’에 제출한 전자우편주소나 SMS, PUSH 등으로 할 수 있습니다.
2. ‘회사’는 불특정다수 회원에 대한 통지의 경우, 1주일 이상 ‘사이트’에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래에 관하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.

제 14 조 (‘회사’의 의무)
1. ‘회사’는 관계법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 ‘상품 등’을 제공하는데 최선을 다하여야 합니다.
2. ‘회사’는 회원이 안전하게 ‘서비스’를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.
3. ‘회사’는 회원으로부터 제기되는 의견이나 불만이 정당하고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.

제 15 조 (개별 서비스에 대한 약관 및 이용조건)
‘회사’는 제공하는 ‘서비스’내의 개별 서비스에 대한 별도의 약관 및 이용조건을 둘 수 있으며 개별 서비스에서 별도로 적용되는 약관에 대한 동의는 회원이 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다. 이 경우 개별 서비스에 대한 이용약관 등이 본 약관에 우선합니다.

제 16 조 (‘서비스’ 이용시간)
‘서비스’의 이용은 ‘회사’의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기점검 등의 필요로 ‘회사’가 정한 날이나 시간은 제외됩니다. 정기점검시간은 ‘서비스’제공화면에 공지한 바에 따릅니다.

제 17 조 (‘서비스’ 이용책임)
회원은 ‘회사’가 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 ‘서비스’를 이용하여 상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌이 광고, 음란사이트 등을 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어겨 발생한 영업활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관해서는 ‘회사’가 책임을 지지 않습니다.

제 18 조 (‘서비스’ 제공의 중지)
1. ‘회사’는 다음 각 호에 해당하는 경우 ‘서비스’ 제공을 중지할 수 있습니다.
가. 컴퓨터 등 정보통신설비의 보수점검∙교체 및 고장, 통신의 두절 등의 사유가 발생한 경우
나. 『전기통신사업법』에 규정된 기간통신사업자가 전기통신 ‘서비스’를 중지했을 경우
다. 기타 불가항력적 사유가 있는 경우
2. ‘회사’는 국가비상사태, 정전, ‘서비스’ 설비의 장애 또는 ‘서비스’ 이용의 폭주 등으로 정상적인 ‘서비스’ 이용에 지장이 있는 때에는 ‘서비스’의 전부 또는 일부를 제한하거나 정지할 수 있습니다.
3. ‘회사’가 ‘서비스’ 제공을 일시적으로 중단할 경우 서비스 일시 중단사실과 그 사유를 ‘사이트’ 초기화면에 통지합니다.

제 19 조 (정보의 제공 및 광고의 게재)
1. ‘회사’는 회원이 ‘서비스’ 이용 중 필요하다고 인정되는 다양한 정보를 공지사항 또는 전자우편이나, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래관련정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편 등에 대해서 수신 거절을 할 수 있습니다.
2. ‘회사’는 ‘서비스’의 운영과 관련하여 ‘서비스’ 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 회원은 수신거절을 ‘회사’에게 할 수 있습니다.

제 20 조 (구매신청)
1. 회원은 본 약관 및 ‘회사’가 정한 규정에 따라 아래 또는 이와 유사한 방법에 의하여 구매를 신청하여야 합니다.
가. ‘상품 등’의 선택
나. 구매자 성명, 주소, 전화번호, 전자우편주소, 수취인의 성명, 배송지 정보, 전화번호 입력
다. 결제 시 유의사항에 대한 확인
라. 이 약관에 동의한다는 표시(예, 마우스 클릭)
2. ‘회사’는 회원의 구매신청이 있는 경우 회원에게 수신확인통지를 합니다.
3. 전 항의 수신확인통지를 받은 회원은 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다. 다만, 이미 대금을 지불한 경우에는 제24조 청약철회 등에 관한 규정에 따릅니다.

제 21 조 (대금지급방법)
1. ‘회사’에서 구매한 상품 또는 쿠폰에 대한 대금지급방법은 다음 각 호의 하나로 할 수 있습니다.
가. 신용카드 결제
나. 실시간 계좌이체
다. 에스크로 결제
라. 무통장입금
마. 기타 ‘회사’가 추가 지정하는 결제 수단(할인쿠폰, 스마트폰 앱 등)
2. 회원이 구매대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 회원이 부담합니다.

제 22 조 (‘상품 등’의 공급)
1. ‘회사’는 회원의 ‘상품 등’의 공급에 관하여 별도의 약정이 없는 이상 회원이 ‘상품 등’을 구매한 날부터 빠른 시일 이내에 ‘상품 등’을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다.
2. ‘회사’는 회원이 ‘상품 등’의 공급절차 및 진행사항, ‘상품 등’에 대한 구매 결제내역을 확인할 수 있도록 적절한 조치를 하여야 하며, ‘상품 등’의 취소방법 및 절차를 안내하여야 합니다.
3. ‘회사’는 회원이 구매한 ‘상품 등’에 대해 배송수단, 수단별 배송비용, 배송비용 부담자, 수단별 배송기간 등을 명시합니다.
4. ‘회사’와 고객간에 상품의 인도시기 및 쿠폰의 제공시기에 관하여 별도의 약정이 있는 경우에는 본 약관에 우선합니다.

제 23 조 (환급)
‘회사’는 회원이 구매 신청한 ‘상품 등’이 품절 등의 사유로 인도 또는 제공할 수 없을 때에는 지체 없이 그 사유를 회원에게 통지하여야 하고, 사전에 ‘상품 등’의 대금을 받은 경우에는 대금을 받은 날로부터 7영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제 24 조 (청약철회 등)
1. ‘회사’의 ‘상품 등’의 구매취소 및 환불 규정은 『전자상거래 등에서의 소비자보호에 관한 법률』 등 관련 법령을 준수합니다.
2. ‘회사’와 ‘상품 등’의 구매에 관한 계약을 체결한 회원은 수신확인의 통지를 받은 날(전자우편 또는 SMS 문자통지 등을 받은 날) 또는 ‘상품 등’의 공급을 받은 날로부터 7일 이내에는 청약을 철회할 수 있습니다.
3. 회원은 ‘상품 등’을 배송 받은 경우 아래 각 호에 해당하는 경우에는 교환 및 반품, 환불을 할 수 없습니다.
가. 회원에게 책임 있는 사유로 ‘상품 등’이 멸실 또는 훼손된 경우(다만, ‘상품 등’의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다.)
나. 회원의 사용 또는 일부 소비에 의하여 ‘상품 등’의 가치가 현저히 감소한 경우
다. 시간의 경과에 의하여 재판매가 곤란할 정도로 ‘상품 등’의 가치가 현저히 감소한 경우
라. 같은 성능을 지닌 ‘상품 등’으로 복제가 가능한 경우 그 원본인 ‘상품 등’의 포장을 훼손한 경우
마. 회사가 특정 쿠폰 또는 상품 등에 대하여 청약철회 제한에 관해 사전에 고지한 경우
5. 회원은 제3항 및 제4항의 규정에 불구하고 ‘상품 등’의 내용이 표시∙광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 ‘상품 등’을 공급받은 날부터 3일 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 10일 이내에 청약철회 등을 할 수 있습니다.

제 25 조 (청약철회 등의 효과)
1. 회원이 구매한 ‘상품 등’을 취소 또는 환불하는 경우 ‘회사’는 그 처리 결과에 대해 제13조(회원에 대한 통지)에 정한 방법으로 통지합니다.
2. ‘회사’는 회원으로부터 쿠폰취소 요청 또는 상품 등을 반환 받은 경우 7영업일 이내에 이미 지급받은 대금을 환급합니다. 이 경우 ‘회사’가 회원에게 재화 등의 환급을 지연할 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.
3. 청약철회 등의 경우 공급받은 ‘상품 등’의 반환에 필요한 비용은 회원이 부담합니다. 다만, ‘상품 등’의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 ‘상품 등’에 필요한 비용은 ‘회사’가 부담합니다.
5. 회원의 단순변심에 의한 취소일 경우 환불처리에 발생하는 수수료와 기타 제반 비용은 회원이 부담합니다.
6. 기타 본 약관 및 ‘사이트’의 이용안내에 규정되지 않은 취소 및 환불에 대한 사항에 대해서는 소비자 피해보상규정에서 정한 바에 따릅니다.

제 26 조 (‘상품 등’의 취소 및 환불의 특칙)
상품의 반품에 따른 환불은 반품하는 상품이 판매자에게 도착되고, 반품 사유 및 반품 배송비 부담자가 확인된 이후에 이루어집니다.

제 27 조 (게시물의 관리)
1. 회원의 게시물이 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및 『저작권』등 관계법령에 위반되는 내용을 포함하는 경우, 권리자는 관계법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, ‘회사’는 관계법령에 따라 조치를 취하여야 합니다.
2. ‘회사’는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 ‘회사’ 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 ‘게시물’에 대해 임시조치 등을 취할 수 있습니다.
3. 본 조에 따른 세부절차는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및 『저작권법』이 규정한 범위 내에서 ‘회사’가 정한 ‘게시중단요청서비스’에 따릅니다.

제 28 조 (면책조항)
1. ‘회사’는 천재지변 또는 이에 준하는 불가항력으로 인하여 ‘서비스’를 제공할 수 없는 경우에는 ‘서비스’ 제공에 관한 책임이 면제됩니다.
2. ‘회사’는 회원의 귀책사유로 인한 ‘서비스’ 이용의 장애에 대하여 책임을 지지 않습니다.
3. ‘회사’는 회원이 ‘서비스’를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며, 그 밖의 ‘서비스’를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.
4. ‘회사’는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다.
5. 회원이 발송한 메일 내용에 대한 법적인 책임은 사용자에게 있습니다.
6. ‘회사’는 회원간 또는 회원과 제3자 상호간에 ‘서비스’를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.
7. ‘회사’는 무료로 제공되는 ‘서비스’ 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.

제 29 조 (분쟁해결)
1. ‘회사’는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위해서 피해보상처리 기구를 설치, 운영합니다.
2. ‘회사’는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 즉시 통보합니다.

제 30 조 (준거법 및 관할법원)
1. 이 약관의 해석 및 ‘회사’와 회원간의 분쟁에 대하여는 대한민국의 법을 적용합니다.
2. ‘서비스’ 이용 중 발생한 회원과 ‘회사’간의 소송은 민사소송법에 의한 관할법원에 제소합니다.

부칙
1. 이 약관은 2021년 01월 19일부터 시행합니다.
2. 이 개정약관은 시행일 이후에 체결되는 계약에만 적용되고 그 이전에 체결된 계약에 대해서는 개정전의 약관조항을 그대로 적용합니다.



</pre>
                    <hr>
                    <pre class="jointx">



골목 커피 (이하 “회사”라 한다)는 회원님의 개인정보를 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며, <정보통신망 이용촉진 및 정보보호 등에 관한 법률>과<개인정보 보호법> 등 개인정보와 관련된 법령상의 규정들을 준수하며, 관련 법령에 의거한 개인정보 취급방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 

회사는 개인정보 취급방침을 통하여 이용자께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있고, 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지에 대하여 알려드립니다. 개인정보 취급방침은 www.redlambcoffee.com사이트에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하고 있습니다.

개인정보 취급방침은 정부의 법령이나 지침의 변경, 그리고 보다 나은 서비스의 제공을 위하여 그 내용이 수시로 변경될 수 있고 이에 따른 개인정보 취급방침의 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 변경 및 개정이 될 경우 회사는 사이트의 개인정보 취급방침을 통해 고지하며, 이메일을 통해서도 빠르게 알려드리고 있습니다. 이용자들께서는 사이트 방문 시 수시로 확인하시기 바랍니다.

이용자는 개인정보의 수집, 이용, 제공, 위탁 등과 관련한 아래 사항에 대하여 원하지 않는 경우 동의를 거부할 수 있습니다. 다만, 이용자가 동의를 거부하는 경우 서비스의 전부 또는 일부를 이용할 수 없음을 알려드립니다.


제1조(개인정보의 수집 및 이용목적)

1. 회사는 사이트에서 회원가입 시 물품 및 서비스 상품에 대한 원활한 주문과 물품 배송, 대금 결제 및 회원님들에게 편리하고 유익한 맞춤 정보를 제공하기 위해 필요한 최소한의 정보를 필수사항으로 수집하고 있습니다.

2. 회사는 인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등 회원님의 기본적 인권을 현저하게 침해할 우려가 있는 개인정보를 수집하지 않습니다.

3. 수집한 개인정보는 다음과 같은 목적으로 사용됩니다.

(1) 회원가입 관련 : 회원제 서비스 이용에 따른 본인 확인, 개인식별 절차, 고객 문의 및 불만 처리, 각종 고지, 통지사항 전달, 분쟁 조정을 위한 기록 보존

(2) 상품 및 서비스 제공 관련 : 상품 구매 및 요금 결제, 상품 및 이벤트 물품 배송 또는 청구지 발송 등

(3) 마케팅 및 상품정보 전달 관련(문자, 이메일 수신 동의 시) : 신규 상품/서비스/이벤트 정보 안내, 고객 만족도 조사, 고객 인터뷰 등의 마케팅 이벤트, 마케팅을 위한 통계자료로 활용



제2조(개인정보 수집 항목)

1. 회사는 최초 가입 당시 아래와 같은 개인정보를 수집하고 있습니다.

(1) 필수정보 : 성명, 성별, 아이디, 비밀번호, 이메일, 핸드폰 번호, 주소

(2) 선택정보 : 없음

2. 서비스 이용 과정에서 아래와 같은 정보들이 자동 생성되어 수집될 수 있습니다.

(1)결제 정보, 서비스 이용기록, 접속 로그

3. 유료서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.

(1)신용카드 결제 시 : 카드사명, 카드번호 등

(2)계좌이체 시 : 은행명, 계좌번호, 예금주 등

(3)휴대전화 결제 시 : 통신사, 이동전화번호, 결제 승인번호 등

4. 회사는 사이트의 회원가입 및 고객센터를 통한 상담 등을 통하여 개인정보를 수집합니다.



제3조(개인정보의 보유 및 이용기간)

회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 개인정보를 지체없이 파기합니다. 단, 내부방침 및 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.

1. 내부방침(부정이용 기록)

(1) 보존근거 : 부정 이용의 배제 등 회사 방침에 의한 보존

(2)보존기간 : 6개월

2. 상법 등 법령에 따라 보존할 필요성이 있는 경우

(1) 계약 또는 청약철회 등에 관한 기록

보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률

보존기간 : 5년

(2)대금 결제 및 재화 등의 공급에 관한 기록

보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률

보존기간 : 5년

3. 소비자의 불만 또는 분쟁 처리에 관한 기록

보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률

보존기간 : 3년

4. 본인 확인에 관한 기록

보존근거 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률

보존기간 : 6개월

5. 웹 사이트 방문 기록

보존근거 : 통신비밀보호법

보존기간 : 3개월

기타 회원님의 개별적인 동의가 있는 경우에는 개별 동의에 따른 기간까지 보관합니다.



제4조(개인정보의 파기 절차 및 방법)

회원님의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다.

1. 파기절차 : 회원님이 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부방침 및 기타 관련법령에 의한 정보보호 사유에 따라 일정기간(제3조 참조) 저장된 후 파기됩니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우를 제외하고는 다른 목적으로 이용되지 않습니다.

2. 파기방법 : 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다. 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.



제5조(개인정보의 제3자 제공)

회사는 회원님의 개인정보를 제1조에서 고지한 범위 또는 서비스 이용약관에 명시한 범위 내에서만 사용하며, 동 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다. 다만, 특정상품의 경우 판매자에게 이 범위 외의 개인정보가 전달될 수 있으며, 이 경우 제공 목적, 제공 정보, 제공 항목, 이용기간을 명시한 후 제3자 제공 동의를 구하도록 하겠습니다.



제6조(개인정보의 취급 위탁)

1. 회사는 위탁업무 계약서 등을 통해서 개인정보 보호 관련 법규의 준수, 개인정보에 관한 비밀 유지, 제3자 제공에 대한 금지, 사고 시의 책임 부담, 위탁기간, 처리 종료 후 개인정보의 파기 의무 등을 규정하고, 이를 준수하도록 관리하고 있습니다.

2. 회사는 보다 나은 서비스의 제공을 위하여 아래와 같이 개인정보를 위탁하고 있습니다.

1) 위탁업체명 : kg이니시스/나이스페이

1_ 제공목적 : 결제 처리, 문자메세지 발송

2_ 제공정보 : 성명, 이메일, 주소, 휴대폰 번호

3_ 개인정보 보유 및 이용기간 : 계약 종료나 서비스 제공기간 종료 시까지

2)위탁업체명 : 로젠택배

1_ 제공목적 : 상품 및 서비스의 배송

2_ 제공정보 : 성명, 주소, 휴대폰 번호

3_ 개인정보 보유 및 이용기간 : 계약 종료나 서비스 제공기간 종료 시까지



제7조(회원의 권리와 그 행사방법)

1. 회원님은 언제든지 등록되어 있는 본인의 개인정보를 조회하거나 수정할 수 있으며 회원탈퇴 절차를 통하여 개인정보 이용에 대한 동의 등을 철회할 수 있습니다.

2. 개인정보의 조회・수정을 위해서는 사이트의 “마이페이지”에서 확인 가능하며, 회사의 개인정보 보호 책임자에게 서면, 전화 또는 이메일로 연락하여 열람・수정・탈퇴를 요청하실 수 있습니다.

3. 회원님이 개인정보의 오류에 대한 정정을 요청한 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 회사는 회원님의 요청에 의해 해지 또는 삭제된 개인정보는 제3조에 명시된 바에 따라 취급하고 그 외의 용도로 열람 또는 이용할 수 없도록 취급하고 있습니다.



제8조(회원의 의무)

1. 회원님은 자신의 개인정보를 보호할 의무가 있으며, 회원님 본인의 부주의나 인터넷상의 문제 등으로 개인정보가 유출되어 발생한 문제에 대하여 회사는 일체의 책임을 지지 않습니다.

2. 회원님의 개인정보를 최신의 상태로 정확하게 입력하시기 바랍니다. 회원님의 부정확한 정보 입력으로 발생하는 문제의 책임은 회원님 자신에게 있으며, 타인의 개인정보를 도용하여 회원가입 또는 서비스 이용 시 회원자격 상실과 함께 <정보통신망 이용촉진 및 정보보호 등에 관한 법률> 등에 의거하여 처벌될 수 있습니다.

3. 회원님은 개인정보를 보호 받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 아이디, 비밀번호를 포함한 회원님의 개인정보가 유출되지 않도록 조심하시고, 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주시기 바랍니다.

4. 회원님은 <정보통신망 이용촉진 및 정보보호 등에 관한 법률>, <개인정보보호법>, <주민등록법> 등 기타 개인정보에 관한 법률을 준수하여야 합니다.



제9조(링크사이트)

회사는 회원님에게 다른 회사의 웹 사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부 웹 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공 받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 회사가 포함하고 있는 링크를 통하여 타 웹 사이트의 페이지로 옮겨갈 경우 해당 웹 사이트의 개인정보 취급방침은 회사와 무관하므로 새로 방문한 웹 사이트의 정책을 검토해보시기 바랍니다.



제10조(게시물)

1. 회사는 고객의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 예외로 합니다.

1) 스팸성 게시물(예 : 특정 사이트에 대한 광고, 타 사이트로의 유도 광고 및 링크 등)

2) 타인을 비방할 목적으로 허위사실을 유포하여 타인의 명예를 훼손하는 글

3) 동의 없는 타인의 신상 공개

2. 근본적으로 게시물에 관련된 제반 권리와 책임은 작성자 개인에게 있습니다. 또한 게시물을 통해 자발적으로 공개된 정보는 보호 받기 어려우므로 정보공개 전에 심사숙고한 후 서비스를 이용하여야 합니다.



제11조(개인정보 자동 수집장치의 설치, 운영 및 그 거부에 관한 사항)

1. 회사는 회원님들에게 보다 적절하고 유용한 서비스를 제공하기 위하여 회원님의 정보를 수시로 저장하고 불러오는 쿠키(Cookie)를 사용합니다. 쿠키란 회사의 웹 사이트를 운영하는데 이용되는 서버가 회원님의 컴퓨터로 전송하는 아주 작은 텍스트 파일로서 회원님의 컴퓨터 하드디스크에 저장됩니다. 회원님께서는 쿠키의 사용 여부에 대하여 선택하실 수 있습니다.

2. 회원님은 사용하시는 웹 브라우저의 옵션을 설정함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 단, 쿠키의 저장을 거부할 경우 로그인이 필요한 일부 서비스의 이용에 제한이 생길 수 있음을 양지하시기 바랍니다.



제12조(개인정보의 기술적・관리적 보호 대책)



제13조(개인정보 보호 책임자)

1. 회원님의 개인정보를 보호하고 개인정보와 관련된 불만 등을 처리하기 위하여 회사는 개인정보 보호 책임자를 두고 있습니다. 회원님의 개인정보와 관련한 문의사항은 아래의 개인정보 보호 책임자에게 연락하여 주시기 바랍니다.



[개인정보 보호 책임자]

1. 성명 : 커피러버

2. 전화번호 : 010-1234-5678

3. 이메일 :  asdf1234@gmail.com



기타 개인정보 침해에 대한 신고나 상담이 필요한 경우에는 아래 기관에 문의하시기 바랍니다.

1. 정보보호마크인증위원회 : www.eprivacy.or.kr / 02-550-9531~2

2. 개인정보침해신고센터 : www.118.or.kr / 국번없이 118

3. 대검찰청 사이버범죄수사단 : www.spo.go.kr / 02-3480-3571

4. 경찰청 사이버테러대응센터 : ctrc.go.kr / 국번없이 182



제14조(아동의 개인정보 보호)

법정대리인의 동의가 필요한 만14세 미만의 아동의 경우 일부 서비스가 제한될 수 있습니다.



제15조(고지의 의무)

개인정보 취급방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경 및 개정이 될 경우에는 시행 7일 전에 사이트를 통해 고지할 것입니다.



고지일자 : 2022년 03월 02일

시행일자 : 2022년 03월 02일



이 개인정보 취급방침은 커피 골목 개인정보를 취급하는 모든 사이트(모바일 웹/앱 포함)에 동일하게 적용됩니다.


            </pre>
                            <hr>
                            <!--체크박스-->
                            <label for="join-checkbox" style="cursor: pointer;">
                                <input type="checkbox" id="join-checkbox" style="margin-left: 25px;" class="agree" > 이용약관을 모두 동의합니다.
                              </label>
                        </div>


                        <div class="lowrow">
                            <div class="form-inline form-group">
                                <label for="name">이름</label> &emsp;&emsp;&emsp;&emsp;&nbsp;
                                <input type="text" name="name" id="" class="nameinput" placeholder="이름을 입력하세요.">
                            </div>
                            <br>


                            <div class="form-inline form-group">
                                <label for="id">아이디</label>&emsp;&emsp;&emsp;&nbsp;&nbsp;
                                <div class="input-group">
                                    <input type="text" id="id" class="idinput" name="id" placeholder="아이디(영문 포함 4~12자 이상)">
                                    <div class="input-group-addon">
                                        <button class="btn btn-primary" style="background-color: lightgray; color: black; border: 0px;">아이디중복체크</button>
                                    </div>
                                </div>
                                <span id="msgid">*필수 사항입니다.</span> <!-- 아이디 중복 여부 메세지 공간 -->
                            </div>

                            <div class="form-inline form-group">
                                <label for="password">비밀번호</label>&emsp;&emsp;&nbsp;&nbsp;
                                <input type="password" id="password" class="pwinput" placeholder="비밀번호 (영 대/소문자, 숫자조합 8~16자)">
                                <span id="msgPw"></span> <!-- 비밀번호 유효성 메세지 공간 -->
                            </div>

                            <div class="form-inline form-group">
                                <label for="pw-confirm">비밀번호 확인</label>&nbsp;
                                <input type="password" id="pw-confirm" class="pwcheckinput" placeholder="비밀번호를 확인해 주세요.">
                                <span id="msgPw-c"></span> <!-- 비밀번호 유효성 메세지 공간 -->
                            </div>

                            <div class="form-inline form-group">
                                <label for="hp">이메일</label>&emsp;&emsp;&emsp;&nbsp;
                                <div class="input-group">
                                    <input type="text" id="#" class="email" style="width: 350px;" placeholder="이메일을 입력하세요.">
                                    <div class="input-group-addon">
                                        <button class="btn btn-primary" style="background-color: lightgray; color: black; border: 0px;">이메일인증</button>
                                    </div>
                                </div>
                            </div>

                            <div class="form-inline form-group">
                                <label for="addr-num">주소</label>&emsp;&emsp;&emsp;&emsp;&nbsp;
                                <div class="input-group">
                                    <input type="text" id="addr-num" class="postnum" placeholder="우편번호를 검색하세요." readonly>
                                    <div class="input-group-addon">
                                        <button class="btn btn-primary" style="background-color: lightgray; color: black; border: 0px;">우편번호검색</button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-inline form-group">
                                <label for="fraddr">기본주소</label>&emsp;&emsp;&nbsp;
                                <input type="text" id="fraddr" class="fraddr" placeholder="기본주소를 입력하세요.">
                            </div>

                            <div class="form-inline form-group">
                                <label for="seaddr">상세주소</label>&emsp;&emsp;&nbsp;
                                <input type="text" id="seaddr" class="seaddr" placeholder="상세주소를 입력하세요.">
                            </div>

                            <div class="form-group">
                                <label for="hp">전화번호</label>&emsp;&emsp;&nbsp;
                                <div class="input-group">
                                    <select name="phone" class="phone">
                                        <option>010</option>
                                        <option>011</option>
                                        <option>018</option>
                                    </select>
                                    - <input type="text" name="phone2" class="phone2">
                                    - <input type="text" name="phone3" class="phone3">
                                    <div class="input-group-addon">
                                        <button class="btn btn-primary" style="background-color: lightgray; color: black; border: 0px;">본인인증</button>
                                    </div>
                                </div>
                            </div>

                            <div class="endbtn clearfix">
                                <div style="float: left;">
                                <button type="button" class="btn-lg">취소</button>
                                <button type="button" id="regist" class="btn-lg btn-success" style="background-color: black; margin-bottom: 30px;">회원가입</button>
                            <br> 
                            <br>   
                            </div>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
            </div>
    </section>


      

<footer>

    <div class="footer-container clearfix" style="margin-top: 100px;">

        <div class="footer-left">
            <div class="footer-logo">
                <a href="#"><img width="150px" src="../img/logo2.png" alt="logo"></a>
                <span class="footer-name">Cafe Alley</span><br><br>
                <span class="footer-desc">논 브랜디드 카페의 활성화, 커피 문화를 선도합니다.</span>
            </div>
            <hr>
            <p class="footer-business">
                대표자 : 김골목 | E-MAIL : info@info.com<br>
                사업자번호 : 123-45-67890 | 개인정보보호책임자 : 김골목 | 통신판매업 : 2019-서울마포-0001<br>
                주소 : 서울특별시 마포구 대흥동
            </p>
            <p class="footer-copyright">
                Copyright © 2022 COFFEE ALLEY (c). All Rights Reserved E-mail : <a
                    href="mailto:coffeealley.gmail.com">coffeealley.gmail.com</a>
            </p>
        </div>

        <div class="footer-right clearfix">
            <ul class="footer-nav clearfix">
                <li><a href="#">사이트 소개</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보 처리방침</a></li>
            </ul>
            <div class="footer-sns">
                <a href="#"><span class="fa-brands fa-facebook-square"></span></a>

                <a href="#"><span class="fa fa-instagram"></span></a>

                <a href="#"><span class="fa-brands fa-youtube"></span></a>
            </div>



        </div>

    </div>
 

</footer>





    <script>

        function check() {
            const $form = document.regForm;
            const $name = document.querySelector('.nameinput');
            const $id = document.querySelector('.idinput');
            const $pw = document.querySelector('.pwinput');
            const $pwcheck = document.querySelector('.pwcheckinput');
            const $email = document.querySelector('.email');
            const $postnum = document.querySelector('.postnum');
            const $addr1 = document.querySelector('.fraddr');
            const $addr2 = document.querySelector('.seaddr');
            const $phone = document.querySelector('.phone');
            const $phone2 = document.querySelector('.phone2');
            const $phone3 = document.querySelector('.phone3');
            const $agree = document.querySelector('.agree');

            const phone = $phone.value + '-' + $phone2.value + '-' + $phone3.value ; 

            var pwtest = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
            var emailtest = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            var phonetest = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

            if($name.value === '') {
                alert('이름을 입력해 주세요');
                $name.focus();
                return;
            } else if ($id.value.length < 4 || $id.value.length > 12) {
                alert('아이디는 4~12자 이어야 합니다.');
                return;
            } else if (!pwtest.test($pw.value)) {
                alert('비밀번호는 하나 이상의 대문자 + 숫자 + 툭수문자 조합으로 8자리 이상 사용해야 합니다.');
                $pw.value = '';
                $pw.focus();
                return;
            } else if ($pw.value !== $pwcheck.value) {
                alert('비밀번호가 일치하지 않습니다.');
                $pw.value ='';
                $pwcheck.value = '';
                $pw.focus();
                return;
            } else if (!emailtest.test($email.value)) {
                alert('이메일 양식이 올바르지 않습니다 예)aaa@aaa.aaa');
                $email.focus();
                return;
             /*} else if ($postnum.val === '') {
                alert('우편번호를 검색하세요');
                return; {*/
            } else if ($addr1.value === '') {
                alert('기본 주소를 입력하세요');
                $addr1.focus();
                return;
            } else if ($addr2.value === '') {
                alert('상세 주소를 입력하세요');
                $addr2.focus();
                return;
            } else if (!phonetest.test(phone)) {
                alert('전화번호 양식이 맞지 않습니다.');
                $phone2.focus();
                return;
            } else if (!$agree.checked) {
                alert('이용 약관을 동의해 주세요');
                $agree.focus();
                return;
            }
            if(confirm('회원가입 하시겠습니까?')) {
                $form.submit();
            } else {
                return;
            }

        }


        document.getElementById('regist').onclick = check;
    </script>

    <!--
        아이디 
        아이디는 4~12자 이어야 합니다.

        비밀번호
        최소 8자, 하나의 이상의 대소문자 및 하나의 숫자, 하나의 특수문자

        /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

        전화번호

        앞자리가 01이며 (0,1,6,7,8,9) 이며 중간에 3~4자리, 세번째는 4자리인 전화번호

        /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

        이메일
        '@' 포함여부와 대문자,소문자를 구분하지않게 표현식끝에 i 사용

        /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
-->


        <script src="../js/jquery-3.6.0.min.js"></script>
        <script src="../js/bootstrap.js"></script>

</body>

</html>