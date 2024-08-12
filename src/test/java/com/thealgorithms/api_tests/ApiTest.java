
    package com.thealgorithms.api_tests;
  
    import com.intuit.karate.Results;
    import com.intuit.karate.Runner;
    // import com.intuit.karate.http.HttpServer;
    // import com.intuit.karate.http.ServerConfig;
    import org.junit.jupiter.api.Test;
  
    import static org.junit.jupiter.api.Assertions.assertEquals;
  
    class ApiTest {
  
        @Test
        void testAll() {
            String appointment_v2_80d7dadbb1_url = System.getenv().getOrDefault("APPOINTMENT_V2_80D7DADBB1_URL", "http://127.0.0.1:4010");
String communicationmanagement_v2_b30fa28f22_url = System.getenv().getOrDefault("COMMUNICATIONMANAGEMENT_V2_B30FA28F22_URL", "http://127.0.0.1:4011");
String appointment_v2_80d7dadbb1_auth_token = System.getenv().getOrDefault("APPOINTMENT_V2_80D7DADBB1_AUTH_TOKEN", "dummy_APPOINTMENT_V2_80D7DADBB1_AUTH_TOKEN");
            Results results = Runner.path("src/test/java/com/thealgorithms/api_tests")
                    .systemProperty("APPOINTMENT_V2_80D7DADBB1_URL",appointment_v2_80d7dadbb1_url)
.systemProperty("COMMUNICATIONMANAGEMENT_V2_B30FA28F22_URL",communicationmanagement_v2_b30fa28f22_url)
.systemProperty("APPOINTMENT_V2_80D7DADBB1_AUTH_TOKEN", appointment_v2_80d7dadbb1_auth_token)
                    .reportDir("testReport").parallel(1);
            assertEquals(0, results.getFailCount(), results.getErrorMessages());
        }
  
    }
