# Batch Apex
  •	Batch apex runs large jobs .it can process thousands or millions of records
  •	It processes records asynchronously in batches
  •	For data cleansing or archiving batch apex is probably best solution 
## Advantages are:
  •	Every transaction starts with a new set of governor’s limits.
  •	If one batch fails to process successfully, all other successful batch transactions aren't rolled back.
## Syntax 
  # Start   (in insert (Iterable<sObject>) Batch Class),update <QueryLocator>  Batch Class   
  #	Execute 
  # Finish
