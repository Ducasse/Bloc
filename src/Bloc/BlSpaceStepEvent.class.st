Class {
	#name : #BlSpaceStepEvent,
	#superclass : #BlSpaceEvent,
	#instVars : [
		'start',
		'end'
	],
	#category : #'Bloc-Events'
}

{ #category : #accessing }
BlSpaceStepEvent >> end [
	<return: #DateAndTime>

	^ end
]

{ #category : #accessing }
BlSpaceStepEvent >> end: aDateAndTime [
	end := aDateAndTime
]

{ #category : #accessing }
BlSpaceStepEvent >> start [
	<return: #DateAndTime>

	^ start
]

{ #category : #accessing }
BlSpaceStepEvent >> start: aDateAndTime [
	start := aDateAndTime
]
