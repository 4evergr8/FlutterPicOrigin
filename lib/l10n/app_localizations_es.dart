// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcome => 'Bienvenido';

  @override
  String get welcome_full => 'Bienvenido. Haga clic en el botón de abajo para ver cómo usar la aplicación.';

  @override
  String get more => 'Más información';

  @override
  String get online => 'En línea';

  @override
  String get offline => 'Desconectado';

  @override
  String get about => 'Acerca de';

  @override
  String get cancel => 'Cancelar';

  @override
  String get link_options => 'Opciones de enlace';

  @override
  String get can_not_open_link => 'No se puede abrir el enlace';

  @override
  String get link_copied => 'Enlace copiado:';

  @override
  String get dismiss => 'Entendido';

  @override
  String get detail_info => 'Información detallada';

  @override
  String get selected_copied => 'Contenido seleccionado copiado';

  @override
  String get copy => 'Copiar';

  @override
  String get conform => 'Confirmar';

  @override
  String get source_code => 'Código fuente del software';

  @override
  String get from => 'Este software nació de una idea espontánea en un momento de aburrimiento';

  @override
  String get website => 'Sitio web de búsqueda de imágenes';

  @override
  String get need_connection => 'Requiere conexión a internet';

  @override
  String get reverse => 'Búsqueda inversa de imágenes';

  @override
  String get find_sourse => 'Buscar el origen de la imagen';

  @override
  String get artwork => 'Buscar portada de video';

  @override
  String get artwork_sourse => 'Busca el origen de las portadas de video. Actualmente solo es compatible con Bilibili';

  @override
  String get backup => 'Copia de seguridad de video';

  @override
  String get backup_video => 'Copia de seguridad de videos de Bilibili, sin necesidad de iniciar sesión';

  @override
  String get speedtest => 'Prueba de velocidad de red';

  @override
  String get test_down => 'Prueba de velocidad de descarga de red';

  @override
  String get dns => 'Consulta DNS';

  @override
  String get dns_test => 'Prueba de consulta DNS cifrada';

  @override
  String get ip => 'Búsqueda inversa de IP a dominio';

  @override
  String get ip_reverse => 'Prueba de consulta DoHPTR';

  @override
  String get note1 => 'El software utiliza el framework Flutter y el lenguaje Dart.';

  @override
  String get note2 => 'La función de búsqueda de imágenes locales utiliza Cloudflare Worker y almacenamiento R2.';

  @override
  String get note3 => 'La función de búsqueda de imágenes en línea está inspirada en Soutu Bot-jang.';

  @override
  String get note4 => 'La función OCR utiliza google_mlkit_text_recognition.';

  @override
  String get note5 => 'La función de traductor de lenguaje de señas felino utiliza CATT-L/MeowTranslator.';

  @override
  String get ocr_fail => 'Error en el reconocimiento OCR';

  @override
  String get share_process => 'Procesamiento de contenido compartido';

  @override
  String get get_text => 'Texto recibido';

  @override
  String get downloading => 'Descargando...';

  @override
  String get downloading_vid => 'Por favor, espere. Realizando copia de seguridad del video...';

  @override
  String get uploading => 'Subiendo...';

  @override
  String get uploading_pic => 'Por favor, espere. Subiendo imagen...';

  @override
  String get upload_success => 'Imagen subida con éxito, URL: ';

  @override
  String get upload_fail => 'Error al subir la imagen:';

  @override
  String get ocr_zh => 'Extracción de caracteres chinos';

  @override
  String get ocr_en => 'Extracción de caracteres latinos';

  @override
  String get ocr_ja => 'Extracción de caracteres japoneses';

  @override
  String get qr_code => 'Escaneo de código QR';

  @override
  String get choose_pic => 'Seleccionar imagen';

  @override
  String get waiting => 'Por favor, espere...';

  @override
  String get success_video => 'Copia de seguridad de video completada';

  @override
  String get decode => 'Decodificar';

  @override
  String get decode_enter => 'Ingrese el contenido a decodificar';

  @override
  String get decode_copy => 'Decodificar y copiar';

  @override
  String get encode_copy => 'Codificar y copiar';

  @override
  String get paste => 'Pegar';

  @override
  String get encode => 'Codificar';

  @override
  String get dict => 'Diccionario';

  @override
  String get dict_enter => 'Ingrese el diccionario';

  @override
  String get encode_enter => 'Ingrese el contenido a codificar';

  @override
  String get copied => 'Copiado';

  @override
  String get beast => 'Traductor Felino (MeowTranslator)';

  @override
  String get ocr_offline => 'OCR sin conexión';

  @override
  String get choose_char => 'Seleccionar caracteres a reconocer';

  @override
  String get char_chinese => 'Caracteres chinos';

  @override
  String get char_lartin => 'Caracteres latinos';

  @override
  String get char_japanese => 'Caracteres japoneses';

  @override
  String get image_search => 'Búsqueda de imágenes';

  @override
  String get image_search_method => 'Método de búsqueda';

  @override
  String get image_local => 'Imagen local';

  @override
  String get image_local_text => 'Seleccionar una imagen local para buscar';

  @override
  String get image_link => 'Enlace de imagen';

  @override
  String get image_link_text => 'Ingrese el enlace de la imagen para buscar';

  @override
  String get worker_link => 'Enlace del servidor de imágenes';

  @override
  String get search => 'Buscar';

  @override
  String get image_thumbnail => 'Buscar portada de video';

  @override
  String get image_thumbnail_text => 'Compatible con enlaces de video, números BV y enlaces cortos b23';

  @override
  String get video_backup => 'Copia de seguridad de videos de Bilibili';

  @override
  String get ua_string => 'Cadena UserAgent';

  @override
  String get start => 'Comenzar';

  @override
  String get subtitle_url => 'Decodificación y edición de URL';

  @override
  String get subtitle_base64 => 'Codificación y decodificación Base64';

  @override
  String get subtitle_beast => 'Codificación y decodificación de Traductor Felino';

  @override
  String get subtitle_qrcode => 'Reconocimiento de códigos de barras y QR en imágenes';

  @override
  String get subtitle_ocr => 'Extraer texto de imágenes';

  @override
  String get link => 'https://4evergr8-en.blogspot.com/p/image.html';
}
