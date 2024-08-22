/**
 * Created by wenboliu on 24/06/2024.
 */

public with sharing class test {
    public static void testAccount() {
    // Set up the unit of work
        fflib_ISObjectUnitOfWork uow = new fflib_SObjectUnitOfWork(
                new List<Schema.SObjectType>{
                        Account.sObjectType
                }
        );

        // Create the account and register it as a
        Account a = new Account(Name = 'Test UoW');
        uow.registerNew(a);
        uow.commitWork();

    }
}