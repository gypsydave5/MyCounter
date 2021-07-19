Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountAccessor [
	| c |
	c := Counter new.
	self assert: c count equals: 0.
	
]

{ #category : #tests }
CounterTest >> testCountSetter [
	| c r |
	c := Counter new.
	r := 1000 atRandom.
	c count: r.
	self assert: c count equals: r.
	
]
