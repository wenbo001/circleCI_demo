/**
 * Created by wenboliu on 27/06/2024.
 */

trigger AccountsTrigger on Account (after delete, after insert, after update, after undelete, before delete, before insert, before update) {
    fflib_SObjectDomain.triggerHandler(Accounts.class);
}