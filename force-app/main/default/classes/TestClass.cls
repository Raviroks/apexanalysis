public with sharing class TestClass {
    public static void returnContacts() {
        for(Contact cont: [SELECT Id From Contact]) {
            cont.Name = 'Here';
            update cont;
        }
        return [SELECT ID From Contact];
    }
}
