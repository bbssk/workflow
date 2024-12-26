{
	"contents": {
		"012978c0-bfba-4b21-bd22-486ae5886052": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.bbssk.hr.leaverequest.leaverequest",
			"subject": "LeaveRequest",
			"name": "LeaveRequest",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"964bc00f-9fe7-40bf-863a-0de248fbf69b": {
					"name": "FormLeaveDataFields"
				},
				"3babf3f3-3a53-40c8-b202-c1c9cc5a6f45": {
					"name": "checkStatus"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d755998b-c370-49f3-a960-ff859c561b72": {
					"name": "SequenceFlow2"
				},
				"71bb3024-d0ad-4981-87a2-7c26e1aea7f3": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"9590fb6e-2bd0-45f6-890a-5b63d3340423": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "964bc00f-9fe7-40bf-863a-0de248fbf69b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"57c53358-d917-4192-a726-aef32a975ca5": {},
				"a2fc5b86-3511-4e37-b12e-12a9e7cea3f2": {},
				"a3a3f198-14d7-4939-9470-139d217349ce": {},
				"dd38ceab-33fc-4e04-9cd1-01678af964b4": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 363,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "57c53358-d917-4192-a726-aef32a975ca5",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 3,
			"sequenceflow": 3,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1
		},
		"9590fb6e-2bd0-45f6-890a-5b63d3340423": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/LeaveRequest/leavesData.json",
			"id": "default-start-context"
		},
		"964bc00f-9fe7-40bf-863a-0de248fbf69b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "request for leave ${context.empId}",
			"description": "request for leave ${context.numberofDays}.\npls confirm",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/LeaveRequest/leaveDataForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "leavedataform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "FormLeaveDataFields",
			"dueDateRef": "aedfff65-58bd-4b8f-8146-713a956a36bb"
		},
		"57c53358-d917-4192-a726-aef32a975ca5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 94,
			"y": 12,
			"width": 90,
			"height": 60,
			"object": "964bc00f-9fe7-40bf-863a-0de248fbf69b"
		},
		"d755998b-c370-49f3-a960-ff859c561b72": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "964bc00f-9fe7-40bf-863a-0de248fbf69b",
			"targetRef": "3babf3f3-3a53-40c8-b202-c1c9cc5a6f45"
		},
		"a2fc5b86-3511-4e37-b12e-12a9e7cea3f2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "184,42 234,42",
			"sourceSymbol": "57c53358-d917-4192-a726-aef32a975ca5",
			"targetSymbol": "a3a3f198-14d7-4939-9470-139d217349ce",
			"object": "d755998b-c370-49f3-a960-ff859c561b72"
		},
		"aedfff65-58bd-4b8f-8146-713a956a36bb": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition2"
		},
		"3babf3f3-3a53-40c8-b202-c1c9cc5a6f45": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/LeaveRequest/updateStatusInJs.js",
			"id": "scripttask1",
			"name": "checkStatus"
		},
		"a3a3f198-14d7-4939-9470-139d217349ce": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 234,
			"y": 12,
			"width": 79,
			"height": 60,
			"object": "3babf3f3-3a53-40c8-b202-c1c9cc5a6f45"
		},
		"71bb3024-d0ad-4981-87a2-7c26e1aea7f3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "3babf3f3-3a53-40c8-b202-c1c9cc5a6f45",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"dd38ceab-33fc-4e04-9cd1-01678af964b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "313,42 363,42",
			"sourceSymbol": "a3a3f198-14d7-4939-9470-139d217349ce",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "71bb3024-d0ad-4981-87a2-7c26e1aea7f3"
		}
	}
}