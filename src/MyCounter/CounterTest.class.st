Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountAccessor [
	| counter |
	counter := Counter new.
	self assert: counter count equals: 0.
	
]

{ #category : #tests }
CounterTest >> testCountSetter [

	| counter number |
	counter := Counter new.
	number := 1000 atRandom.
	counter count: number.
	self assert: counter count equals: number
]

{ #category : #tests }
CounterTest >> testDecrement [

	| counter |
	counter := Counter new.
	counter count: 22.
	counter decrement.
	self assert: counter count equals: 21.
]

{ #category : #tests }
CounterTest >> testIncrement [

	| counter |
	counter := Counter new.
	counter increment.
	self assert: counter count equals: 1.
]
