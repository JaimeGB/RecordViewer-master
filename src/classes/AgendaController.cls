public with sharing class AgendaController {
    public static Alumno__c searchAlumno(String nombreAlumno){
        return [SELECT Id FROM Alumno__c WHERE Name=:nombreAlumno];

    }

    public static Clase__c searchClase(String nombreClase){
        return[SELECT Id FROM Clase__c WHERE Name=:nombreClase];
    }
    @AuraEnabled
    public static List<Asistencia__c> getAllAsistencia(){
        return[SELECT Id, Name, Alumno__r.Name, Clase__r.Materia__c, Hora__c FROM Asistencia__c];
    }

    @AuraEnabled
    public static Asistencia__c deleteAsistencia(Asistencia__c asiss){
        delete asiss;
        return asiss;
    }

    
    @AuraEnabled
    public static String agendar(Id name, Id materia, Datetime hora){
    try{
        
        Asistencia__c newas = new Asistencia__c(Clase__c=materia, Alumno__c=name, Hora__c = hora);
        insert newas;

    }catch(Exception e){
        return e.getMessage();
    }
    return 'Saved';
    }

    

}