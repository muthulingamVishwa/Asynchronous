# Batch Apex
  •	Batch apex runs large jobs .it can process thousands or millions of records
  •	It processes records asynchronously in batches
  •	For data cleansing or archiving batch apex is probably best solution 
## Advantages are:
  •	Every transaction starts with a new set of governor’s limits.
  •	If one batch fails to process successfully, all other successful batch transactions aren't rolled back.
##                                            Syntax 
  # Start   (in insert (Iterable<sObject>) Batch Class),update <QueryLocator>  Batch Class   
  * Execute 
  * Finish


## in Start 
      when we need write query  we go to QueryLocator +++> <QueryLocator>  Batch Class 
      when we need to from insert bulk in apex +++> Iterable<sObject> Batch class
      Batch Apex Syntax Simplified 🚀
Start:
QueryLocator: Use when you need to query records.
Iterable<sObject>: Use when you need to insert bulk records.
Key Methods:
Start: Initialize logic.
Execute: Process records.
Finish: Post-batch actions.
Master these methods for efficient Apex development! 🌟

#Salesforce #Apex #BatchApex #SalesforceDevelopment
