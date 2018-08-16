@isTest
private class AnimalLocatorTest{
    @istest 
    static void AnimalLocatorMock1(){
        System.Test.SetMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String result = AnimalLocator.getAnimalNameById(3);
        String expectedResult = 'cow';  
        System.assertEquals(result, expectedResult);
    }

}