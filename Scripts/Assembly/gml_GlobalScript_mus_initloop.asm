.localvar 2 arguments

:[0]
b [2]

> gml_Script_mus_initloop (locals=0, argc=1)
:[1]
push.i 12814371
setowner.e
push.v arg.argument0
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
exit.i

:[2]
push.i [function]gml_Script_mus_initloop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.mus_initloop
popz.v

:[end]