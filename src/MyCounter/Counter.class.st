"
I am a counter. I know a number and I can be told to increment or decrement that number.


## Public API and Key Messages

### `increment`

increments the count by one

### `decrement`

decrements the count by one

### `count`

the current value of the count

### `count:`

sets the current value of the count   

## Instance Creation

### `new`

creates a new instance of a Counter

## Example

```language=Pharo
Counter new count: 10; increment; increment; count. ""12""
```
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"the current count of the Counter"	
	^count
]

{ #category : #setting }
Counter >> count: anInteger [ 
	count := anInteger
]

{ #category : #operating }
Counter >> decrement [
	count := count - 1.
]

{ #category : #operating }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [
	count := 0.
]
