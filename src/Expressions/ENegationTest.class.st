Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testEvaluate [
	self assert: (ENegation new expression: EConstant constant5)
		evaluate equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassCreationMessage [
	self assert: (ENegation expression: EConstant constant5) 
		evaluate equals: -5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [
	|exp|
	exp := EConstant value: 11.
	self assert: exp negated class equals: ENegation.
	self assert: exp negated negated equals: exp.
]

{ #category : #tests }
ENegationTest >> testNegationNegated [
	self assert: EConstant constant5 negated negated evaluate
		equals:5
]
