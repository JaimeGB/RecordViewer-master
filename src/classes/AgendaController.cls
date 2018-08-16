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
    public static String agendar(String name, String materia, Datetime hora){
    try{
        Alumno__c alu = searchAlumno(name);
        Clase__c cla = searchClase(materia);
        Asistencia__c newas = new Asistencia__c(Clase__c=cla.Id, Alumno__c=alu.Id, Hora__c = hora);
        upsert newas;

    }catch(Exception e){
        return e.getMessage();
    }
    return 'Saved';
    }

    

}