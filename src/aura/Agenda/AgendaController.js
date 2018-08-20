({
	doInit : function(component, event, helper) {
		helper.getAsistencias(component);
		
		component.set('v.columns', [
            {label: 'Nombre', fieldName: 'Name', type: 'autonumber'},
            {label: 'Clase', fieldName: 'Clase__r.Materia__c', type: 'Text'},
            {label: 'Alumno', fieldName: 'Alumno__r.Name', type: 'Text'},
			{label: 'Hora', fieldName: 'Hora__c', type: 'date'},
			{type: 'action', typeAttributes: {
				rowActions: [{
					label: 'Delete', name: 'delete'
				
				}]
			}}
		
		]);
			
			
	},

	submitForm : function(component, event, helper){
		helper.createAgenda(component);
		

	},
		handleRowAction: function (component, event, helper) {
			var action = event.getParam('action');
			var row = event.getParam('row');
			helper.removeBook(component, row);
			console.log('get row' + row);
			
		}	
	
})