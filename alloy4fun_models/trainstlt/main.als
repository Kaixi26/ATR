// Model of a train station

sig Track {
	prox : set Track,
	signal : lone Signal
}
sig Junction extends Track {}
sig Entry, Exit in Track {}

sig Signal {}
var sig Green in Signal {}

sig Train {
	var pos : lone Track
}

fact Layout {
	// A track is a junction iff it has more than one successor or more than one predecessor
	all t : Track | t not in Junction iff (lone t.prox and lone prox.t)
	// No cycles
	no t : Track | t in t.^prox
	// Signals belong to one and only one track
	all s : Signal | one signal.s
	// All tracks before junctions have signals
	all j : Junction, t : prox.j | some t.signal
	// Entry tracks are those without predecessors and exit tracks are those without no successors
	all t : Track | t in Entry iff no prox.t
	all t : Track | t in Exit iff no t.prox
}
//SECRET
abstract one sig Feedback {}
//SECRET
sig RejectedValidInstance, AcceptedInvalidInstance extends Feedback {}

pred prop1 {
	// Intially all signals are red

}
//SECRET
pred prop1o {
	no Green
}
//SECRET
check prop1ok {
	(some AcceptedInvalidInstance iff (prop1 and not prop1o)) implies (prop1 iff prop1o)
} for 5 but 2 Train, 2 Signal

pred prop2 {
	// Every signal will eventually become green

}
//SECRET
pred prop2o {
	all s : Signal | eventually s in Green
}
//SECRET
check prop2ok {
	(some AcceptedInvalidInstance iff (prop2 and not prop2o)) implies (prop2 iff prop2o)
} for 5 but 2 Train, 2 Signal

pred prop3 {
	// Trains never move

}
//SECRET
pred prop3o {
	always pos' = pos
}
//SECRET
check prop3ok {
	(some AcceptedInvalidInstance iff (prop3 and not prop3o)) implies (prop3 iff prop3o)
} for 5 but 2 Train, 2 Signal

pred prop4 {
	// There are no collisions between trains

}
//SECRET
pred prop4o {
	always all t : Track | lone pos.t
}
//SECRET
check prop4ok {
	(some AcceptedInvalidInstance iff (prop4 and not prop4o)) implies (prop4 iff prop4o)
} for 5 but 2 Train, 2 Signal

pred prop5 {
	// A train inside the station can only move to one of the next tracks (or exit the station if it is in an exit track)

}
//SECRET
pred prop5o {
	all t : Train | always (some t.pos implies (t.pos' = t.pos or (t.pos in Exit implies no t.pos' else (some t.pos' and t.pos' in t.pos.prox))))
}
//SECRET
check prop5ok {
	(some AcceptedInvalidInstance iff (prop5 and not prop5o)) implies (prop5 iff prop5o)
} for 5 but 2 Train, 2 Signal

pred prop6 {
	// Signals are always alternating

}
//SECRET
pred prop6o {
	all s : Signal | always eventually (s in Green) and always eventually (s not in Green)
}
//SECRET
check prop6ok {
	(some AcceptedInvalidInstance iff (prop6 and not prop6o)) implies (prop6 iff prop6o)
} for 5 but 2 Train, 2 Signal

pred prop7 {
	// All trains inside the station will eventually leave the station
	
}
//SECRET
pred prop7o {
	all t : Train | always (some t.pos implies eventually no t.pos)
}
//SECRET
check prop7ok {
	(some AcceptedInvalidInstance iff (prop7 and not prop7o)) implies (prop7 iff prop7o)
} for 5 but 2 Train, 2 Signal

pred prop8 {
	// A train at a track with a red signal can only move after the signal becomes green

}
//SECRET
pred prop8o {
	all t : Train, p : Track | always (t.pos = p and p.signal not in Green implies (p.signal in Green releases t.pos = p))
}
//SECRET
check prop8ok {
	(some AcceptedInvalidInstance iff (prop8 and not prop8o)) implies (prop8 iff prop8o)
} for 5 but 2 Train, 2 Signal

pred prop9 {
	// All trains will eventually enter the station in entry tracks
	
}
//SECRET
pred prop9o {
	all t : Train | no t.pos until (some t.pos & Entry)
}
//SECRET
check prop9ok {
	(some AcceptedInvalidInstance iff (prop9 and not prop9o)) implies (prop9 iff prop9o)
} for 5 but 2 Train, 2 Signal

pred prop10 {
	// Is is always the case that at most one signal before a junction can be green

}
//SECRET
pred prop10o {
	all j : Junction | always lone (prox.j).signal & Green	
}
//SECRET
check prop10ok {
	(some AcceptedInvalidInstance iff (prop10 and not prop10o)) implies (prop10 iff prop10o)
} for 5 but 2 Train, 2 Signal

pred prop11 {
	// It is always the case that trains inside the station where previously at a an entry track

}
//SECRET
pred prop11o {
	all t : Train | always (some t.pos implies once some t.pos & Entry)
}
//SECRET
check prop11ok {
	(some AcceptedInvalidInstance iff (prop11 and not prop11o)) implies (prop11 iff prop11o)
} for 5 but 2 Train, 2 Signal

pred prop12 {
	// A train positioned in a track previously passed through all tracks that connect it to an entry track

}
//SECRET
pred prop12o {
	all t : Train | always (some t.pos implies some e : *prox.(t.pos) & Entry | all x : *prox.(t.pos) & e.*prox | once t.pos = x)
}
//SECRET
check prop12ok {
	(some AcceptedInvalidInstance iff (prop12 and not prop12o)) implies (prop12 iff prop12o)
} for 5 but 2 Train, 2 Signal

pred prop13 {
	// Trains that left the station never return

}
//SECRET
pred prop13o {
	all t : Train | always ((no t.pos and once some t.pos) implies always no t.pos)
}
//SECRET
check prop13ok {
	(some AcceptedInvalidInstance iff (prop13 and not prop13o)) implies (prop13 iff prop13o)
} for 5 but 2 Train, 2 Signal

pred prop14 {
	// Immediately after a train leaves a track with a green signal the signal turns red

}
//SECRET
pred prop14o {
	all s : Signal, t : Train | always (s in Green and t.pos = signal.s and t.pos' != signal.s implies after s not in Green)
}
//SECRET
check prop14ok {
	(some AcceptedInvalidInstance iff (prop14 and not prop14o)) implies (prop14 iff prop14o)
} for 5 but 2 Train, 2 Signal

pred prop15 {
	// Trains cannot remain forever stopped in same position

}
//SECRET
pred prop15o {
	all t : Train, p : Track | not (eventually always t.pos = p)
}
//SECRET
check prop15ok {
	(some AcceptedInvalidInstance iff (prop15 and not prop15o)) implies (prop15 iff prop15o)
} for 5 but 2 Train, 2 Signal

pred prop16 {
	// A train in an exit track was always inside the station since it arrived at an entry track

}
//SECRET
pred prop16o {
	all t : Train | always (some t.pos & Exit implies (some t.pos since some t.pos & Entry))
}
//SECRET
check prop16ok {
	(some AcceptedInvalidInstance iff (prop16 and not prop16o)) implies (prop16 iff prop16o)
} for 5 but 2 Train, 2 Signal

pred prop17 {
	// The first train to be inside the station will be the first to arrive at an exit track

}
//SECRET
pred prop17o {
	all t : Train | always ((some t.pos and historically no (Train-t).pos) implies (no Train.pos & Exit until some t.pos & Exit))
}
//SECRET
check prop17ok {
	(some AcceptedInvalidInstance iff (prop17 and not prop17o)) implies (prop17 iff prop17o)
} for 5 but 2 Train, 2 Signal

pred prop18 {
	//  When several trains are trying to enter a junction the first that arrived will have priority

}
//SECRET
pred prop18o {
	all j : Junction | always (all disj x,y : pos.(prox.j) | before (x in pos.(prox.j) and y not in pos.(prox.j)) implies (x in pos.j releases (y not in pos.j)))
}
//SECRET
check prop18ok {
	(some AcceptedInvalidInstance iff (prop18 and not prop18o)) implies (prop18 iff prop18o)
} for 5 but 2 Train, 2 Signal
