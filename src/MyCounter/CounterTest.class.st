Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountAccessorAndSetter [
	| c |
	c := Counter new.
	c count: 10.
	self assert: c count equals: 10.
	
]
