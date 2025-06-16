.localvar 2 arguments
.localvar 10839 killcount 2761
.localvar 10832 encounterlist 2762
.localvar 107 i 2763
.localvar 10841 enemiesleft 2764

:[0]
b [8]

> gml_Script_scr_sideb_remainingencounters (locals=4, argc=0)
:[1]
pushi.e 0
pop.v.i local.killcount
pushi.e 0
pop.v.i local.encounterlist
push.i 34180178
setowner.e
pushi.e 531
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.encounterlist
pushi.e 532
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 533
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 534
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 535
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 538
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 556
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 553
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 554
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 555
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 559
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 560
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 561
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 562
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 563
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 564
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 565
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 566
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 567
conv.i.v
pushloc.v local.encounterlist
call.i array_push(argc=2)
popz.v
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.encounterlist
call.i array_length(argc=1)
cmp.v.v LT
bf [6]

:[3]
pushi.e -5
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.encounterlist
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [5]

:[4]
push.v local.killcount
push.e 1
add.i.v
pop.v.v local.killcount

:[5]
push.s "global.flag["@10840
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.encounterlist
call.i string(argc=1)
add.v.s
push.s "], result: "@10836
add.s.v
pushi.e -5
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.encounterlist
conv.v.i
push.v [array]self.flag
call.i string(argc=1)
add.v.v
call.i gml_Script_debug_message(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
pushloc.v local.encounterlist
call.i array_length(argc=1)
pushloc.v local.killcount
sub.v.v
pop.v.v local.enemiesleft
pushloc.v local.enemiesleft
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_sideb_remainingencounters
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sideb_remainingencounters
popz.v

:[end]