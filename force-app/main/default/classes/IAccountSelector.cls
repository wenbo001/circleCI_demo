/**
 * Created by wenboliu on 24/06/2024.
 */

public interface IAccountSelector extends fflib_ISObjectSelector {

    List<Account> selectById(set<Id> IdSet);

}