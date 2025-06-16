.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pop.v.v self.hitshot
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
b [end]

:[2]
push.d 1.3
conv.d.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[end]