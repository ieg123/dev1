<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Dress_Email_Alert</fullName>
        <description>Dress Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <recipient>gunachava@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>karthichava@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Dress_Email_Alert</template>
    </alerts>
    <rules>
        <fullName>Dress Email Alert</fullName>
        <actions>
            <name>Dress_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Dress__c.E_mail__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
