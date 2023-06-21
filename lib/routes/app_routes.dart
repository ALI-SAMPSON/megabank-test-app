part of app_pages;

abstract class Routes {
  Routes._();
  static const String SPLASH_PAGE = _Paths.SPLASH_PAGE;
  static const String HOME_PAGE = _Paths.HOME_PAGE;
  static const String TRANSACTION_DETAIL_PAGE = _Paths.TRANSACTION_DETAIL_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const String SPLASH_PAGE = '/splash-page';
  static const String HOME_PAGE = '/home-page';
  static const String TRANSACTION_DETAIL_PAGE = '/transaction-detail-page';
}
