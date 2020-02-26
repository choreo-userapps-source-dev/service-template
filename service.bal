import ballerina/http;
import ballerina/log;

service hello on new http:Listener(8080) {
    resource function sayHello(http:Caller caller, http:Request req) {
        var result = caller->respond("Hello, World!");
        if (result is error) {
            log:printError("Error sending response", result);
        }
    }
}
