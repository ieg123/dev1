global with sharing class B05_SchedularForBatchApex implements Schedulable 
{
global void execute(SchedulableContext sc)
 {
 ID BatchId = Database.executeBatch(new Bo5_RunBatchApex(), 200);
 }
 Public static void SchedulerMethod() 
 {
 string con_exp= '0 1 * * * ?';
 System.schedule('B05_RunBatchApexTest', con_exp, new B05_SchedularForBatchApex ());
 }
 }