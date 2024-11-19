# insert (Iterable<sObject>) Batch Class

global class AccountInsertBatchJob implements Database.Batchable<sObject> {    
   
   global Integer totalRecords;  
    //Constructor 
    public AccountInsertBatchJob(Integer totalRecords) {
        this.totalRecords = totalRecords;
    }   
global Iterable<sObject> start(Database.BatchableContext bc) {              //start
        List<Account> accountsToInsert = new List<Account>();
        for (Integer i = 0; i < totalRecords; i++) {
            Account acc = new Account();
            acc.Name = 'New Account ' + i;
            accountsToInsert.add(acc);
        }
        return accountsToInsert;
    }
global void execute(Database.BatchableContext bc, List<sObject> scope) {   //Execute
        insert scope;
    }

global void finish(Database.BatchableContext bc) {                          //finish
        System.debug('Account Insert Batch completed successfully.');
    }
}
     

# Execute insert (Iterable<sObject>) Batch Class
AccountInsertBatchJob job=new AccountInsertBatchJob(20000);
database.ExecuteBatch(job,2000);     



