({
	doInit : function(component, event, helper) {
		helper.getAsistencias(component);
		
		component.set('v.columns', [
            {label: 'Nombre', fieldName: 'Name', type: 'autonumber'},
            {label: 'Clase', fieldName: 'Clase__r.Materia__c', type: 'Text'},
            {label: 'Alumno', fieldName: 'Alumno__r.Name', type: 'Text'},
			{label: 'Hora', fieldName: 'Hora__c', type: 'date'}]);
			
			
	},

	submitForm : function(component, event, helper){
		helper.createAgenda(component);
		

	},
	


	
})