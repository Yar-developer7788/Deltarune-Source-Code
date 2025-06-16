.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_qb (locals=0, argc=4)
:[1]
push.i 10127568
setowner.e
push.v arg.argument0
pushi.e -1
push.v self.attackcountmax
conv.v.i
pop.v.v [array]self.list_attacktype
push.i 10127570
setowner.e
push.v arg.argument1
pushi.e -1
push.v self.attackcountmax
conv.v.i
pop.v.v [array]self.list_attackamount
push.i 10127571
setowner.e
push.v arg.argument2
pushi.e -1
push.v self.attackcountmax
conv.v.i
pop.v.v [array]self.list_attackvariant
push.i 10127572
setowner.e
push.v arg.argument3
pushi.e -1
push.v self.attackcountmax
conv.v.i
pop.v.v [array]self.list_attackwait
push.v self.attackcountmax
push.e 1
add.i.v
pop.v.v self.attackcountmax
exit.i

:[2]
push.i [function]gml_Script_scr_qb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_qb
popz.v

:[end]