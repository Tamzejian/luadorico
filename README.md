# luadorico
Learning to script with Lua language in Dorico music notation files

Macro for selecting notes in a score.

Algorithm: 

noteSelect(Stave, @beatPosition)
«Chord» is a chain of «Note» that is read form base upwards if there is an interval or chord.

intervalChains (chord)
Reads the chord structure and returns all interval combinations in it
For example : 
<B,T,A,S> gives : C(4,2) = 4!/(2!*2!) =  6 intervals : BT;BA;BS;TA;TS;AS
