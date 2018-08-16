@isTest
private class ParkLocatorTest{
    @isTest
    static void testCallout(){
        System.Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> result = new List<String>();
        List<String> expectedvalue = new List<String>{'Park1','Park2','Park3'};
        result = ParkLocator.country('USA');
        System.assertEquals(expectedvalue, result);

    }
}