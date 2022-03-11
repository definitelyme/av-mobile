mixin EndPoints {
  static const String APP_DEV_DOMAIN = 'auction-backend-api.herokuapp.com';
  static const String APP_PROD_DOMAIN = 'auction-backend-api.herokuapp.com';
  static const String DEV_WEB_URL = 'https://$APP_DEV_DOMAIN';
  static const String PROD_WEB_URL = 'https://$APP_PROD_DOMAIN';
  static const String API_ENDPOINT = '/api/v1';
  static const String PUSHER_AUTH_URL = '/broadcasting/auth';
  static const String SLEEP = '/sleep';

  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/auth/login';
  static const String REGISTER = '/auth/sign-up';
  static const String LOGOUT = '/auth/logout';
  // UPDATE PHONE
  static const String RESEND_PHONE_VERIFICATION = '/auth/verify/phone/resend';
  static const String CONFIRM_PHONE_VERIFICATION = '/auth/verify/phone';
  // RESET ASSWORD
  static const String SEND_PASSWORD_RESET_MESSAGE = '/auth/forgot-password';
  static const String CONFIRM_PASSWORD_RESET = '/auth/reset-password';
  static const String UPDATE_PASSWORD = '/user/password'; // (POST)
  // SOCIALS AUTH
  static const String GOOGLE_SIGNIN = '/auth/social/google';
  static const String FACEBOOK_SIGNIN = '/auth/social/facebook';
  static const String APPLE_SIGNIN = '/auth/social/apple';
  static const String TWITTER_SIGNIN = '/auth/social/twitter';

  /// .......///////...// USER ENDPOINTS .......///////./....//
  static const String GET_USER = '/users/me';
  static const String UPDATE_PHONE = '/user/phone'; // (POST)
  static const String CONFIRM_UPDATE_PHONE = '/profile/phone'; // (PATCH)

  /// .......///////...// PROFILE ENDPOINTS .......///////./....//

}
