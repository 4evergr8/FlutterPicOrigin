// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get welcome => '환영합니다';

  @override
  String get welcome_full => '환영합니다. 아래 버튼을 클릭하여 사용 방법을 확인하세요.';

  @override
  String get more => '더 알아보기';

  @override
  String get online => '온라인';

  @override
  String get offline => '오프라인';

  @override
  String get about => '정보';

  @override
  String get cancel => '취소';

  @override
  String get link_options => '링크 옵션';

  @override
  String get can_not_open_link => '링크를 열 수 없습니다';

  @override
  String get link_copied => '링크가 복사되었습니다:';

  @override
  String get dismiss => '확인';

  @override
  String get detail_info => '상세 정보';

  @override
  String get selected_copied => '선택한 내용이 복사되었습니다';

  @override
  String get copy => '복사';

  @override
  String get conform => '확인';

  @override
  String get source_code => '소프트웨어 소스 코드';

  @override
  String get from => '이 소프트웨어는 심심할 때 한 상상에서 시작되었습니다';

  @override
  String get website => '이미지 검색 사이트';

  @override
  String get need_connection => '인터넷 연결 필요';

  @override
  String get reverse => '이미지 역검색';

  @override
  String get find_sourse => '이미지 출처 찾기';

  @override
  String get artwork => '커버 이미지 검색';

  @override
  String get artwork_sourse => '동영상 커버의 출처를 찾습니다. 현재 비리비리만 지원합니다';

  @override
  String get backup => '동영상 백업';

  @override
  String get backup_video => '비리비리 동영상 백업, 로그인 불필요';

  @override
  String get speedtest => '인터넷 속도 테스트';

  @override
  String get test_down => '네트워크 다운로드 속도 테스트';

  @override
  String get dns => 'DNS 조회';

  @override
  String get dns_test => '암호화 DNS 조회 테스트';

  @override
  String get ip => 'IP 도메인 역조회';

  @override
  String get ip_reverse => 'DoHPTR 조회 테스트';

  @override
  String get note1 => '소프트웨어는 Flutter 프레임워크와 Dart 언어를 사용했습니다.';

  @override
  String get note2 => '로컬 이미지 검색 기능은 CloudflareWorker와 R2 스토리지 버킷을 활용합니다.';

  @override
  String get note3 => '온라인 이미지 검색 기능은 \'Soutu Bot-jang(搜图Bot酱)\'에서 영감을 받았습니다.';

  @override
  String get note4 => 'OCR 기능은 google_mlkit_text_recognition을 사용합니다.';

  @override
  String get note5 => '수음역자(兽音译者) 기능은 CATT-L/MeowTranslator를 사용합니다.';

  @override
  String get ocr_fail => 'OCR 인식 실패';

  @override
  String get share_process => '공유 내용 처리';

  @override
  String get get_text => '수신된 텍스트';

  @override
  String get downloading => '다운로드 중...';

  @override
  String get downloading_vid => '잠시만 기다려 주세요. 동영상을 백업하는 중입니다...';

  @override
  String get uploading => '업로드 중...';

  @override
  String get uploading_pic => '잠시만 기다려 주세요. 이미지를 업로드하는 중입니다...';

  @override
  String get upload_success => '이미지 업로드 성공, URL: ';

  @override
  String get upload_fail => '이미지 업로드 실패:';

  @override
  String get ocr_zh => '중국어 문자 추출';

  @override
  String get ocr_en => '라틴 문자 추출';

  @override
  String get ocr_ja => '일본어 문자 추출';

  @override
  String get qr_code => 'QR코드 스캔';

  @override
  String get choose_pic => '이미지 선택';

  @override
  String get waiting => '잠시만 기다려 주세요...';

  @override
  String get success_video => '동영상 백업 완료';

  @override
  String get decode => '디코딩';

  @override
  String get decode_enter => '디코딩할 내용을 입력하세요';

  @override
  String get decode_copy => '디코딩 후 복사';

  @override
  String get encode_copy => '인코딩 후 복사';

  @override
  String get paste => '붙여넣기';

  @override
  String get encode => '인코딩';

  @override
  String get dict => '사전';

  @override
  String get dict_enter => '사전을 입력하세요';

  @override
  String get encode_enter => '인코딩할 내용을 입력하세요';

  @override
  String get copied => '복사됨';

  @override
  String get beast => '수음역자(兽音译者)';

  @override
  String get ocr_offline => '오프라인 OCR';

  @override
  String get choose_char => '인식할 문자 선택';

  @override
  String get char_chinese => '중국어 문자';

  @override
  String get char_lartin => '라틴 문자';

  @override
  String get char_japanese => '일본어 문자';

  @override
  String get image_search => '이미지 검색';

  @override
  String get image_search_method => '검색 방식';

  @override
  String get image_local => '로컬 이미지';

  @override
  String get image_local_text => '로컬에서 이미지를 선택하여 검색';

  @override
  String get image_link => '이미지 링크';

  @override
  String get image_link_text => '이미지 링크를 입력하여 검색';

  @override
  String get worker_link => '이미지 호스팅 링크';

  @override
  String get search => '검색';

  @override
  String get image_thumbnail => '동영상 커버 검색';

  @override
  String get image_thumbnail_text => '동영상 링크, BV 번호, b23 단축 링크 지원';

  @override
  String get video_backup => 'Bilibili 동영상 백업';

  @override
  String get ua_string => 'UserAgent 문자열';

  @override
  String get start => '시작';

  @override
  String get subtitle_url => 'URL 디코딩 및 편집';

  @override
  String get subtitle_base64 => 'Base64 인코딩 및 디코딩';

  @override
  String get subtitle_beast => '수음역자 인코딩 및 디코딩';

  @override
  String get subtitle_qrcode => '이미지 속 바코드 및 QR코드 인식';

  @override
  String get subtitle_ocr => '이미지에서 텍스트 추출';

  @override
  String get link => 'https://4evergr8-en.blogspot.com/p/image.html';
}
