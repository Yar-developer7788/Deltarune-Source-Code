.localvar 2 arguments
.localvar 10831 failcount 2755
.localvar 10832 encounterlist 2756
.localvar 107 i 2758

:[0]
b [11]

> gml_Script_scr_sideb_checkencounters (locals=3, argc=0)
:[1]
pushi.e 0
pop.v.i local.failcount
pushi.e 0
pop.v.i local.encounterlist
push.i 34114642
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
bf [9]

:[3]
pushi.e -5
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.encounterlist
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e -5
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.encounterlist
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v local.failcount
push.e 1
add.i.v
pop.v.v local.failcount
push.s "failure at global.flag["@10835
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

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[9]
pushi.e 0
pop.v.i local.encounterlist
pushloc.v local.failcount
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_sideb_checkencounters
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sideb_checkencounters
popz.v

:[end]