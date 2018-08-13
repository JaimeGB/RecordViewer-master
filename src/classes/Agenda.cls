public with sharing class  Agenda {

    public List<Asistencia__c> asistencia;
	public Clase__c materia;
    public Alumno__c alumno;
    public Asistencia__c asistencia2;
    public Asistencia__c newrecord{get;set;}
    //public Asistencia__c newrecord;	

   //Metodo Asistencia
    Asistencia__c Registro = new Asistencia__c();
    public List<Asistencia__c> table {get;set;}
    public List<Asistencia__c> getAsistencia(){
        List<Asistencia__c> resultado = [SELECT Id, Name, Hora__c, Alumno__c, Clase__r.Materia__c FROM Asistencia__c];
        return resultado;
    }
    public Asistencia__c getClase(){
        return [select Clase__c FROM Asistencia__c limit 5];  
    }
    
    //Hora
    Asistencia__c Registro4 = new Asistencia__c();
    public Asistencia__c getAsistencia2(){
        Asistencia__c resultado4 = [SELECT Id, Name, Hora__c, Alumno__c, Clase__r.Materia__c FROM Asistencia__c];
        return resultado4;
    }
    
    
    //Metodo Alumno
    Alumno__c Registro2 = new Alumno__c();
    public Alumno__c getAlumno(){
        Alumno__c resultado2 = [SELECT Id, Name FROM Alumno__c];
        return resultado2;
    }
    public Alumno__c getName(){
        return [select Name FROM Alumno__c limit 5];  
    }
    
    //Metodo Materia
    Clase__c Registro3 = new Clase__c();
    public Clase__c getMateria(){
        Clase__c resultado3 = [SELECT Materia__c FROM Clase__c limit 5];
        return resultado3;
    
 	}
        //BTN Save
        public Agenda(){
            newrecord = new Asistencia__c();   
        }
        
        public PageReference Save(){
            insert newrecord;
            table =[SELECT id, Name, Hora__c, Alumno__c, Clase__r.Materia__c FROM Asistencia__c where id=:newrecord.id];
                return null;
        }
        

}