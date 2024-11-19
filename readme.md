#Asynchronous Processing basics 
•	An Asynchronous process executes a task in the background.
•	User doesn’t have to wait for the task to finish 
•	Use Asynchronous apex for:
      1.	Callouts to external systems
      2.	Operations that require higher limits
      3.	Code that needs to run at a certain time


## Type of Asynchronous  
    Future Methods 
    Batch Apex 
    Queueable apex
    Scheduled Apex

## Governor and Execution limits
      •	Asynchronous Apex provides Higher governor and execution limits
      •	Number of SOQL is doubled from 100 to 200
      •	Total heap size and maximum CPU time are similarly larger for asynchronous calls
      •	As you get higher limits with async, also those governor limits are independent of the limits in the synchronous request that queued the async request initially.
## Async Process Challenges
    •	Ensure fairness of processing 
    •	Ensure fault tolerance 
## How Async Process works?
      •	Enqueue 
      •	Persistence 
      •	Dequeue
