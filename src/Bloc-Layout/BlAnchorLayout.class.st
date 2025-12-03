"
I'm a layout that is based on explicit relationships between anchors. 
"
Class {
	#name : #BlAnchorLayout,
	#superclass : #BlBasicLayout,
	#category : #'Bloc-Layout-Anchor'
}

{ #category : #constraints }
BlAnchorLayout class >> constraints [

	^ BlAnchorLayoutConstraints new
]

{ #category : #layout }
BlAnchorLayout >> layout: anElement in: aRectangle context: aBlElementBoundsUpdater [

	super layout: anElement in: aRectangle context: aBlElementBoundsUpdater.
	anElement children accountedByLayout do: [ :eachChild |
			eachChild
				applyLayoutIn: (self
						 positionInParent: anElement
						 forChild: eachChild)
				context: aBlElementBoundsUpdater ].
			
	self layoutIgnored: anElement context: aBlElementBoundsUpdater
]

{ #category : #measure }
BlAnchorLayout >> measure: anElement with: anExtentSpec [

	| extent |
	super measure: anElement with: anExtentSpec.
	extent := anElement measuredExtent.
	anElement children accountedByLayout do: [ :eachChild |
			| boundsForChild |
			boundsForChild := self
				                  measureInParent: anElement
				                  forChild: eachChild.

			eachChild measure: (BlExtentMeasurementSpec
					 widthSpec: (self
							  measurementSpecFor: anExtentSpec widthSpec
							  usedSize: extent x - boundsForChild width
							  resizer: (BlLayoutResizer exact: boundsForChild width))
					 heightSpec: (self
							  measurementSpecFor: anExtentSpec heightSpec
							  usedSize: extent y - boundsForChild height
							  resizer: (BlLayoutResizer exact: boundsForChild height))) ].

	self measureIgnored: anElement with: anExtentSpec
]

{ #category : #layout }
BlAnchorLayout >> measureInParent: anElement forChild: aChild [ 

	^ aChild constraints anchors
		  measureInParent: anElement
		  forChild: aChild
]

{ #category : #layout }
BlAnchorLayout >> positionInParent: anElement forChild: aChild [

	^ aChild constraints anchors
		  positionInParent: anElement
		  forChild: aChild
]
