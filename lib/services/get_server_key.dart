import 'package:googleapis_auth/auth_io.dart';

class GetServerKey {
  final scopes = [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/firebase.database',
    'https://www.googleapis.com/auth/firebase.messaging',
  ];

  Future<String> getServerKeyToken() async {
    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson({
        "type": "service_account",
        "project_id": "joizone",
        "private_key_id": "c0ea27b90ca4582ab905aadf70b85c74c475b5cf",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDOVMGF5uhbfudv\nFSO6Cfv2qNviCC2AK1Qigllqg3DV9FN15z7TSg1pFmDuA0RC7F9ThpnzTaR/3vqo\nhPA2XcIIbhyP1A0hhjoTAM0jqeNBOjX9N0amlyWweqGW/SpF35+dt4wrqqdSdgTN\ne2xht1OYuKD+4xv5KNIy4LoJm6pQydLir0njehitkS/gZkqJ1MQgv31OLEHDvhfh\nnXyam2BAV6vYq5XsLpxqlkdCG2gVJODtURVTggTyLgq3vCiLwdoS5W/SoRZborGy\nU5IFHhZE+ft7A3kMKdUnOo2Qxc4QRhkJ23GoXh1iZemUmCXZVvLzAtReBDz07lm1\nRsD/5JVHAgMBAAECggEACboKI3dWtdV+MIjlFcSZua+NKhMrnfKs9TGC6JgIrjVl\n59V+azR+/Fi/OgkyYxtEhSn/wO4ElriaxW366v0xg/c45njfI5jxzOqJQSilm3IU\nkHrWHE1cy/yD+Ju3rfKUUjmQZJCXcbY5lLxASDz9tmHhyRJIw86uVhKtAn3xofxD\n9VO+TwEcEQFhA47VGLEcWHHOCMA8PwTecDJluLFzhbbevmUA8dDtZKyXoqOsc0g2\nhn+SFc8asV3fmOi/fNRghB8VHYql3kI1H0KjkK8RGJpa4pvgNHQyJi81sB5iagUz\n28j8nmStPVed5FbUunzcjz2MoAubZAQ/tmmhv32giQKBgQD46i42JR05C/OMsbFU\n032X37MZwMu7aBaV1qdVmlvg42VsmZo46nlCNlhQGlzUUaMVoGIaEc2P+8Ole2m8\nXXx0RxTtPkq9XwsUI0dH9R6xpVv/abTQDLV+TDrgTz+iIV54YTp8XjsitixNY/qL\nUZM28epG67b3TqsN9X+8JhX/rwKBgQDUNEWc5mQ+CtAOk3ABpGzhIsAIsLHvsfHh\nKYJxfFwmUJveHGlK3/6Vm3JutHVx1e4cHT0neR+YrZ3QWhT9Tk7l5l0F8h1OGSG2\ntbj8mhM3E8BU5d3G7McGvQ5akxhWE3p3xIY+TONUqJdOjXF5cTgGvJoeCBiJQQlG\nJIIbQS/R6QKBgQDgzfdgdVKYNAAJYG5s0vlKEgHaT3Jw1kgXmZ7VRCyYxibS10Mf\nBjzvnM9TwQt3widNH+WZ79w8nsALE5PiSHhfN9dhkPHFaDJERLxa87l97X9SBPEF\nOYUtBMHj1g79aa+9fupoal50Mh1+473i15Difcf9t2MupgD9AW0UyzzxBwKBgQCx\nY9UBmTMZDi7o0GVkahA+j68aVKMabZV2lR2fQsdBnEcAAJ4gYmlOpTiexKoc9Cnt\nRJ/3nHBGUHRJVNSQ/+JCmzUOIFxRCf893mF6gE4pz5ALKHEhtpOV1XrnSmmgov3Q\nmu9hqyKqhZieqOzACV49e3IWQsxICJ75DNHaeL7B6QKBgQCDIQdjFmCgGVhxhNS/\npjTojX95CnyuRZka7J00Z3oKLEOcuyd3RG/9m/I80yf2E1xCwgq8dgWzYublozXL\n1CxRcOqa6BjeC4jPCsLQbkMF3wliXeWbEjQttW/NHA9EGAzqa6nLN09ELyFAFEdV\n5nHJkCezW/ycsYjwzMcrjlwopA==\n-----END PRIVATE KEY-----\n",
        "client_email": "firebase-adminsdk-fbsvc@joizone.iam.gserviceaccount.com",
        "client_id": "109678875622417439397",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40joizone.iam.gserviceaccount.com",
        "universe_domain": "googleapis.com"
      }
      ),
      scopes,
    );
    final accessServerKey = client.credentials.accessToken.data;
    return accessServerKey;
  }
}
