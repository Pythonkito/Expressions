Class {
	#name : #BaselineOfExpressions,
	#superclass : #BaselineOf,
	#category : #BaselineOfExpressions
}

{ #category : #baselines }
BaselineOfExpressions >> baseline: spec [
	<baseline>

	spec for: #common 
		do: [ 
			spec package: 'Expressions'.
			 ].
		
]
