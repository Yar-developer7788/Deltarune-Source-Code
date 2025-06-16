.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_dead (locals=0, argc=1)
:[1]
push.i 16484506
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charmove
push.i 16484471
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charcantarget
push.i 16484507
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.chardead
push.i 16484491
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charaction
push.i 16484508
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charspecial
exit.i

:[2]
push.i [function]gml_Script_scr_dead
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dead
popz.v

:[end]