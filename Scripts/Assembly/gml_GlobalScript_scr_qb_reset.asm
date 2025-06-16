.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_qb_reset (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.attackcount
pushi.e 0
pop.v.i self.attackcountmax
pushi.e 0
pop.v.i self.attackpattern
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [4]

:[3]
push.i 10193104
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.list_attacktype
push.i 10193106
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.list_attackamount
push.i 10193107
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.list_attackvariant
push.i 10193108
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.list_attackwait
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_qb_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_qb_reset
popz.v

:[end]