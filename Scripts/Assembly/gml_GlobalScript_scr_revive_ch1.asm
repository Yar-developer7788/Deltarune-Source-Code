.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_revive_ch1 (locals=0, argc=1)
:[1]
push.i 112560282
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charmove
push.i 112560247
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.charcantarget
push.i 112560283
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.chardead
exit.i

:[2]
push.i [function]gml_Script_scr_revive_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_revive_ch1
popz.v

:[end]