{
	"contents": {
		"a2e1e241-b994-471c-85e5-f23b846f5d25": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "poconfirmationworkflow.poconfirmationworkflow",
			"subject": "PoConfirmationWorkflow",
			"name": "PoConfirmationWorkflow",
			"documentation": "Po Confirmation Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End"
				}
			},
			"activities": {
				"88660b77-8c62-45bd-9bcc-4b07c617f367": {
					"name": "PoConfirmationWorkflow"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"a8d0cdaa-e47d-4515-8a76-2ef88cc02431": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "88660b77-8c62-45bd-9bcc-4b07c617f367"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"dba2451d-d310-4a1b-82c4-7e962f32c37a": {},
				"c6c432da-4242-48c2-ba2c-66057514fa7b": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 233,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "dba2451d-d310-4a1b-82c4-7e962f32c37a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"88660b77-8c62-45bd-9bcc-4b07c617f367": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.confiramtionNumber}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://PoConfirmation/PoConfirmation",
			"recipientUsers": "${context.approverEmail}",
			"id": "usertask1",
			"name": "PoConfirmationWorkflow"
		},
		"dba2451d-d310-4a1b-82c4-7e962f32c37a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 183,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "88660b77-8c62-45bd-9bcc-4b07c617f367"
		},
		"a8d0cdaa-e47d-4515-8a76-2ef88cc02431": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "88660b77-8c62-45bd-9bcc-4b07c617f367",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"c6c432da-4242-48c2-ba2c-66057514fa7b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "233,116.75 357.5,116.75",
			"sourceSymbol": "dba2451d-d310-4a1b-82c4-7e962f32c37a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "a8d0cdaa-e47d-4515-8a76-2ef88cc02431"
		}
	}
}