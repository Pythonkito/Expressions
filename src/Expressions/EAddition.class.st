Class {
	#name : #EAddition,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EAddition >> evaluate [
	^left evaluate + right evaluate
]

{ #category : #'public access' }
EAddition >> left: anExpression [
 	left := anExpression
	
]

{ #category : #'public access' }
EAddition >> negated [
	^ ENegation new expression: self
	
]

{ #category : #'public access' }
EAddition >> right: anExpression [
 	right := anExpression
	
]
