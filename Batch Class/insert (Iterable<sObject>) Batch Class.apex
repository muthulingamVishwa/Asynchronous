# insert (Iterable<sObject>) Batch Class
global class AccountInsertBatchJob implements Database.Batchable<sObject> {
    
    // Define the number of records to process
    global Integer totalRecords;

    // Constructor to initialize total records
    public AccountInsertBatchJob(Integer totalRecords) {
        this.totalRecords = totalRecords;
    }

    // Start method: Returns an Iterable of Account records
    global Iterable<sObject> start(Database.BatchableContext bc) {
        List<Account> accountsToInsert = new List<Account>();
        
        // Create the required number of Account records
        for (Integer i = 0; i < totalRecords; i++) {
            Account acc = new Account();
            acc.Name = 'New Account ' + i;
            accountsToInsert.add(acc);
        }

        // Return the list as an Iterable
        return accountsToInsert;
    }

    // Execute method: Inserts the Account records in batches
    global void execute(Database.BatchableContext bc, List<sObject> scope) {
        insert scope;
    }

    // Finish method: Logs the completion message
    global void finish(Database.BatchableContext bc) {
        System.debug('Account Insert Batch completed successfully.');
    }
}
