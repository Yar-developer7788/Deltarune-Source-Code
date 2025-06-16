.localvar 2 arguments
.localvar 10419 totalrecruits 2553
.localvar 336 chapter 2554
.localvar 10420 start_index 2555
.localvar 10421 max_index 2556
.localvar 107 i 2557

:[0]
b [12]

> gml_Script_scr_get_total_recruits (locals=5, argc=0)
:[1]
pushi.e 0
pop.v.i local.totalrecruits
pushi.e -1
pop.v.i local.chapter
pushi.e 0
pop.v.i local.start_index
pushi.e 100
pop.v.i local.max_index
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.chapter

:[3]
pushloc.v local.chapter
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 30
pop.v.i local.start_index
pushi.e 44
pop.v.i local.max_index

:[5]
pushloc.v local.start_index
pop.v.v local.i

:[6]
pushloc.v local.i
pushloc.v local.max_index
cmp.v.v LT
bf [10]

:[7]
pushi.e -5
pushloc.v local.i
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v local.totalrecruits
push.e 1
add.i.v
pop.v.v local.totalrecruits

:[9]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[10]
pushloc.v local.totalrecruits
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_get_total_recruits
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_get_total_recruits
popz.v

:[end]