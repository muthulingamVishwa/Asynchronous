# update <QueryLocator>  Batch Class 
```Apex // update <QueryLocator>  Batch Class 
global class AccountUpdateBatchJob implements Database.Batchable<sObject>
{
    //Start 
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name FROM Account Where CreatedDate=today';
       
        return Database.getQueryLocator(query);
    }
    // Execute 
    global void execute(Database.BatchableContext BC, List<Account> scope)
    {
        for(Account a : scope)
        {
           a.Description  = 'Updated by Batch job';
        }
        update scope;
    }
     // Finish
    global void finish(Database.BatchableContext BC) {
        
       system.debug('This Account update');
        
    }
}       

//Execute update <QueryLocator>  Batch Class   
AccountUpdateBatchJob jobupdate= new AccountUpdateBatchJob();
dataBase.ExecuteBatch(jobupdate,2000);
