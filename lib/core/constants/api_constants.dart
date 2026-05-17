class ApiConstants { 
  static const String baseUrl = 'http://10.0.2.2:8081/v1'; 
  
  // Auth endpoints 
  static const String verifyToken = 'auth/verify-token'; 
  static const String products = 'products'; 
  
  static const int connectTimeout = 15000; 
  static const int receiveTimeout = 15000; 
} 