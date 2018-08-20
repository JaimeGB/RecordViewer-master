<aura:application extends="force:slds">
  <!-- Create attribute to store lookup value as a sObject--> 
  <aura:attribute name="selectedLookUpRecord" type="sObject" default="{}"/>
 
  <c:customLookup objectAPIName="Alumno__c" IconName="standard:Alumno" selectedRecord="{!v.selectedLookUpRecord}" label="Alumno"/>
 <!-- here c: is org. namespace prefix-->
</aura:application>