/**
 * Created by wenboliu on 24/06/2024.
 */

public inherited sharing class AccountSelector extends fflib_SObjectSelector implements IAccountSelector{

    public static IAccountSelector newInstance() {
        return (IAccountSelector) Application.Selector.newInstance(Account.SObjectType);
    }

    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
                Account.Id,
                Account.Name
        };
    }

    public Schema.SObjectType getSObjectType() {
        return Account.sObjectType;
    }

    public List<Account> selectById(Set<Id> idSet){
        return (List<Account>) selectSObjectsById(idSet);
    }

}