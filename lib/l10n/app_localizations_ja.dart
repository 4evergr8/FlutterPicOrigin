// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get welcome => '歓迎';

  @override
  String get welcome_full => 'ご利用ありがとうございます。下のボタンをクリックして使い方を確認してください。';

  @override
  String get more => '詳細表示';

  @override
  String get online => 'オンライン';

  @override
  String get offline => 'オフライン';

  @override
  String get about => 'アプリについて';

  @override
  String get cancel => 'キャンセル';

  @override
  String get link_options => 'リンクオプション';

  @override
  String get can_not_open_link => 'リンクを開けません';

  @override
  String get link_copied => 'リンクをコピーしました:';

  @override
  String get dismiss => '了解';

  @override
  String get detail_info => '詳細情報';

  @override
  String get selected_copied => '選択した内容をコピーしました';

  @override
  String get copy => 'コピー';

  @override
  String get conform => '確認';

  @override
  String get source_code => 'ソフトウェアのソースコード';

  @override
  String get from => 'このソフトウェアは退屈な時の思いつきから生まれました';

  @override
  String get website => '画像検索サイト';

  @override
  String get need_connection => 'インターネット接続が必要';

  @override
  String get reverse => '画像逆検索';

  @override
  String get find_sourse => '画像の出処を探す';

  @override
  String get artwork => 'カバー画像検索';

  @override
  String get artwork_sourse => '動画カバーの出処を探します。現在はビリビリ動画のみ対応しています';

  @override
  String get backup => '動画バックアップ';

  @override
  String get backup_video => 'ビリビリ動画のバックアップ、ログイン不要';

  @override
  String get speedtest => '回線速度テスト';

  @override
  String get test_down => 'ネットワークダウンロード速度テスト';

  @override
  String get dns => 'DNS クエリ';

  @override
  String get dns_test => '暗号化DNSクエリテスト';

  @override
  String get ip => 'IP逆引きドメイン';

  @override
  String get ip_reverse => 'DoHPTRクエリテスト';

  @override
  String get note1 => 'ソフトウェアにはFlutterフレームワークとDart言語が使用されています。';

  @override
  String get note2 => 'ローカル画像検索機能はCloudflareWorkerとR2ストレージバケットを利用しています。';

  @override
  String get note3 => 'オンライン画像検索機能は「搜图Bot酱」からインスピレーションを得ています。';

  @override
  String get note4 => 'OCR機能にはgoogle_mlkit_text_recognitionが使用されています。';

  @override
  String get note5 => '獣音翻訳（兽音译者）機能にはCATT-L/MeowTranslatorが使用されています。';

  @override
  String get ocr_fail => 'OCR認識に失敗しました';

  @override
  String get share_process => '共有内容の処理';

  @override
  String get get_text => '受信したテキスト';

  @override
  String get downloading => 'ダウンロード中...';

  @override
  String get downloading_vid => '少々お待ちください、動画をバックアップしています...';

  @override
  String get uploading => 'アップロード中...';

  @override
  String get uploading_pic => '少々お待ちください、画像をアップロードしています...';

  @override
  String get upload_success => '画像のアップロードに成功しました、URL: ';

  @override
  String get upload_fail => '画像のアップロードに失敗しました:';

  @override
  String get ocr_zh => '中国語文字の抽出';

  @override
  String get ocr_en => 'ラテン文字の抽出';

  @override
  String get ocr_ja => '日本語文字の抽出';

  @override
  String get qr_code => 'QRコードスキャン';

  @override
  String get choose_pic => '画像を選択';

  @override
  String get waiting => '少々お待ちください...';

  @override
  String get success_video => '動画のバックアップが完了しました';

  @override
  String get decode => 'デコード';

  @override
  String get decode_enter => 'デコードする内容を入力してください';

  @override
  String get decode_copy => 'デコードしてコピー';

  @override
  String get encode_copy => 'エンコードしてコピー';

  @override
  String get paste => '貼り付け';

  @override
  String get encode => 'エンコード';

  @override
  String get dict => '辞書';

  @override
  String get dict_enter => '辞書を入力してください';

  @override
  String get encode_enter => 'エンコードする内容を入力してください';

  @override
  String get copied => 'コピーしました';

  @override
  String get beast => '獣音翻訳（兽音译者）';

  @override
  String get ocr_offline => 'オフラインOCR';

  @override
  String get choose_char => '認識する文字を選択';

  @override
  String get char_chinese => '中国語文字';

  @override
  String get char_lartin => 'ラテン文字';

  @override
  String get char_japanese => '日本語文字';

  @override
  String get image_search => '画像検索';

  @override
  String get image_search_method => '検索方法';

  @override
  String get image_local => 'ローカル画像';

  @override
  String get image_local_text => 'ローカルから画像を選択して検索';

  @override
  String get image_link => '画像リンク';

  @override
  String get image_link_text => '画像リンクを入力して検索';

  @override
  String get worker_link => '画像ローダーリンク';

  @override
  String get search => '検索';

  @override
  String get image_thumbnail => '動画カバー検索';

  @override
  String get image_thumbnail_text => '動画リンク、BV番号、b23短縮リンクに対応';

  @override
  String get video_backup => 'Bilibili動画バックアップ';

  @override
  String get ua_string => 'UserAgent文字列';

  @override
  String get start => '開始';

  @override
  String get subtitle_url => 'URLデコードと編集';

  @override
  String get subtitle_base64 => 'Base64エンコードとデコード';

  @override
  String get subtitle_beast => '獣音翻訳エンコードとデコード';

  @override
  String get subtitle_qrcode => '画像内のバーコードとQRコードの認識';

  @override
  String get subtitle_ocr => '画像から文字を抽出';

  @override
  String get link => 'https://4evergr8-zh.blogspot.com/p/image.html';
}
