@isTest
public class TestVerifyDate {
    
    @isTest static void Test_CheckDates_Case1(){
        Date d = VerifyDate.CheckDates(Date.parse('01/01/2020'),Date.parse('01/05/2020'));
    System.assertEquals(Date.parse('01/03/2020'), d);
    }
    
     @isTest static void Test_CheckDates_Case2(){
        Date d = VerifyDate.CheckDates(Date.parse('01/01/2020'),Date.parse('05/05/2020'));
    System.assertEquals(Date.parse('01/31/2020'), d);
    }
    
    @isTest static void Test_DateWithin30Days_Case1(){
        Boolean flag = VerifyDate.DateWithin30Days(Date.parse('01/01/2020'),Date.parse('12/30/2019'));
        System.assertEquals(false,flag);
    }
    
    @isTest static void Test_DateWithin30Days_Case2(){
        Boolean flag = VerifyDate.DateWithin30Days(Date.parse('01/01/2020'),Date.parse('02/02/2019'));
        System.assertEquals(false,flag);
    }
    
    @isTest static void Test_DateWithin30Days_Case3(){
        Boolean flag = VerifyDate.DateWithin30Days(Date.parse('01/01/2020'),Date.parse('01/15/2020'));
        System.assertEquals(true,flag);
    }
    
    @isTest static void Test_SetEndOfMonthDate(){
        Date returndate = VerifyDate.SetEndOfMonthDate(Date.parse('01/01/2020'));
    }
}