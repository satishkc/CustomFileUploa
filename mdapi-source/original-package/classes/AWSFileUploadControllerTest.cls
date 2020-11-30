@IsTest
global with sharing class AWSFileUploadControllerTest{
    
    @isTest static void testCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new MockResponseGenerator());
        
        // Call method to test.
        // This causes a fake response to be sent 
        // from the class that implements HttpCalloutMock.
        
        String parentId = '0012y000008ToD5AAK';
        String strFileName = 'Rey_Jul20';
        String fileType = 'application/json';
        string fileContent = 'ewogICAgIkludGVybmFsIFBhY2thZ2UiOgogICAgewogICAgICAgICJQYWNrYWdlMSI6CiAgICAgICAgewogICAgICAgICAgICAibmFtZSI6ICJwa2cxIiwKICAgICAgICAgICAgInR5cGUiOiAicGlja2xpc3QiLAogICAgICAgICAgICAiZGVzY3JpcHRpb24iOiAiRXhjZWxsZW50IgogICAgICAgIH0sCiAgICAgICAgIlBhY2thZ2UyIjoKICAgICAgICB7CiAgICAgICAgICAgICJuYW1lIjogInBrZzIiLAogICAgICAgICAgICAidHlwZSI6ICJ0ZXh0IiwKICAgICAgICAgICAgImRlc2NyaXB0aW9uIjogIkF2ZXJhZ2UiCiAgICAgICAgfSwKICAgICAgICAiUGFja2FnZTUiOgogICAgICAgIHsKICAgICAgICAgICAgIm5hbWUiOiAicGtnNSIsCiAgI';
        //String fileContent = 'JVBERi0xLjcNMSAwIG9iag08PC9UeXBlIC9YT2JqZWN0IC9TdWJ0eXBlIC9JbWFnZSAvTmFtZSAvSW0xIC9XaWR0aCAxNjUzIC9IZWlnaHQgMjMzOCAvTGVuZ3RoIDE5MjExNiAvQ29sb3JTcGFjZSAvRGV2aWNlUkdCIC9CaXRzUGVyQ29tcG9uZW50IDggL0ZpbHRlciBbIC9EQ1REZWNvZGUgXSA%2BPiBzdHJlYW0N%2F9j%2F4AAQSkZJRgABAQEAyADIAAD%2F2wBDAAQCAwMDAgQDAwMEBAQEBQkGBQUFBQsICAYJDQsNDQ0LDAwOEBQRDg8TDwwMEhgSExUWFxcXDhEZGxkWGhQWFxb%2F2wBDAQQEBAUFBQoGBgoWDwwPFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhb%2FwAARCAkiBnUDACIAAREBAhEB%2F8Q';
        Boolean res = AWSFileUploadController.uploadFileToAWS(parentId, strFileName, fileType, fileContent);
        
        // Verify response received contains fake values
        /*String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = res.getBody();
        String expectedValue = '{"example":"test"}';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode()); */

        System.assertEquals(TRUE, res);
    }
    public AWSFileUploadControllerTest() {

    }
}