Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EMultiplicationTest >> testEvaluate [
	|ep1 ep2|
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: (EMultiplication new right: ep1; left: ep2)
		evaluate equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateNegated [
	|ep1 ep2|
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: (EMultiplication new right: ep1; left: ep2) negated
		evaluate equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [
	|ep1 ep2|
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: (EMultiplication new left: ep1 ;right: ep2) evaluate
		equals: 15
]
