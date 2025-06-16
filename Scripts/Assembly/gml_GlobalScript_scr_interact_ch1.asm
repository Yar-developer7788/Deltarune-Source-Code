.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_interact_ch1 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.i self.myinteract
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_interact_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_interact_ch1
popz.v

:[end]