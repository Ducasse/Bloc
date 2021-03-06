"
I represent a font weight attribute.
I am used together with BrText and BrTextStyler to style text.

Public API and Key Messages

- weight: set font weight in absolute units (100, 200, 400, 600, 800)

Example:

	BrFontWeightAttribute weight: 400.
	BrFontWeightAttribute bold.
	BrFontWeightAttribute normal.
	BrFontWeightAttribute thin
 
Internal Representation and Key Implementation Points.

    Instance Variables
	weight		<Number> 
"
Class {
	#name : #BlFontWeightAttribute,
	#superclass : #BlTextAttribute,
	#instVars : [
		'weight'
	],
	#category : #'Bloc-Text-Text-Attributes'
}

{ #category : #'instance creation' }
BlFontWeightAttribute class >> bold [
	^ self new
		weight: LogicalFont weightBold;
		yourself
]

{ #category : #'instance creation' }
BlFontWeightAttribute class >> light [
	^ self new
		weight: LogicalFont weightLight;
		yourself
]

{ #category : #'instance creation' }
BlFontWeightAttribute class >> normal [
	^ self new
		weight: LogicalFont weightMedium;
		yourself
]

{ #category : #'instance creation' }
BlFontWeightAttribute class >> thin [
	^ self new
		weight: LogicalFont weightThin;
		yourself
]

{ #category : #'instance creation' }
BlFontWeightAttribute class >> weight: aNumber [
	^ self new
		weight: aNumber;
		yourself
]

{ #category : #comparing }
BlFontWeightAttribute >> equals: aTextAttribute [
	^ self weight = aTextAttribute weight
]

{ #category : #comparing }
BlFontWeightAttribute >> hash [
	^ self weight hash
]

{ #category : #printing }
BlFontWeightAttribute >> printOn: aStream [
	aStream
		nextPutAll: 'font-weight: ';
		nextPutAll: self weight asString
]

{ #category : #accessing }
BlFontWeightAttribute >> weight [
	^ weight
]

{ #category : #accessing }
BlFontWeightAttribute >> weight: aNumber [
	weight := aNumber
]
