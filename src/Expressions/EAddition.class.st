Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	^self new left: anInteger ; right: anInteger2 
]

{ #category : #'public access' }
EAddition >> evaluate [
	^left evaluate + right evaluate
]

{ #category : #'public access' }
EAddition >> left: anExpression [
 	left := anExpression
	
]

{ #category : #'public access' }
EAddition >> right: anExpression [
 	right := anExpression
	
]
