.localvar 2 arguments
.localvar 6565 __i 861

:[0]
b [10]

> gml_Script_scr_itemcheck_pocket (locals=1, argc=1)
:[1]
pushi.e 0
pop.v.i self.haveit
pushi.e 0
pop.v.i self.itemcount
pushi.e 0
pop.v.i local.__i

:[2]
pushloc.v local.__i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [8]

:[3]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.pocketitem
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.haveit

:[5]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.pocketitem
push.v arg.argument0
cmp.v.v EQ
bf [7]

:[6]
push.v self.itemcount
pushi.e 1
add.i.v
pop.v.v self.itemcount

:[7]
push.v local.__i
pushi.e 1
add.i.v
pop.v.v local.__i
b [2]

:[8]
push.v self.haveit
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_itemcheck_pocket
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemcheck_pocket
popz.v

:[end]