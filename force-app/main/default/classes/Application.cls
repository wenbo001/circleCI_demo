/**
 * Created by wenboliu on 22/08/2024.
 */

public inherited sharing class Application {
    public static final fflib_Application.UnitOfWorkFactory unitOfWork =
            new fflib_Application.UnitOfWorkFactory(
                    new List<SObjectType> {
                            Account.sObjectType
                    }
            );

    public static final fflib_Application.ServiceFactory service =
            new fflib_Application.ServiceFactory(
                    new Map<Type, Type> {
                    }
            );

    public static final fflib_Application.SelectorFactory selector =
            new fflib_Application.SelectorFactory(
                    new Map<SObjectType, Type> {
                            Account.SObjectType => AccountSelector.class
                    }
            );

    public static final fflib_Application.DomainFactory Domain =
            new fflib_Application.DomainFactory(
                    Application.Selector,
                    new Map<SObjectType, Type> {
                            Account.SObjectType => Accounts.Constructor.class
                    });

}