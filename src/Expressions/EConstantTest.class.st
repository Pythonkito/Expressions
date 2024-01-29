Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EConstantTest >> testCreationWithClassCreationMessage [
	self assert: EConstant constant5 evaluate equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluate [
	self assert: ((EConstant constant5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [
	self assert: EConstant constant5 negated evaluate equals: -5
]

{ #category : #tests }
EConstantTest >> testPrinting [
	self assert: EConstant constant5 printString equals: '5'
]
