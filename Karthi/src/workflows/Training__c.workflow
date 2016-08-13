<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Training_Email_Alert</fullName>
        <ccEmails>sateeshkumarchava@gmail.com</ccEmails>
        <description>Training Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>Email_Group</recipient>
            <type>group</type>
        </recipients>
        <recipients>
            <recipient>karthichava@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Training_Email_Template</template>
    </alerts>
    <rules>
        <fullName>Training Mail Notification</fullName>
        <actions>
            <name>Training_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Training__c.Course__c</field>
            <operation>equals</operation>
            <value>SFDC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Training__c.Student_Mail__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
