class ApiEndPoints {
  static const String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOGMwZWIxYjA3YjEzNTEzIiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTQiLCJuYW1lIjoiYWRlZWIgdGVzdCAiLCJlbWFpbCI6IjkxOTY1NjY3MDg2NyIsInJvbGUiOiJ1c2VyIn0.dgRNiQdBNzZ_tGoPMxu3aqBuveTG8zrT3zZheVhYpQ4';

  static const String baseUrl = 'https://trogon.info/tutorpro/lms_demo/api';

  static const String endPHomePage = 'home_page_data?auth_token=$token';
  static const String endPMyCourseData = 'my_course_data?auth_token=$token';
  static const String endPFeedData =
      'https://focusarea.in/app/api/feed?auth_token=$token';
}
