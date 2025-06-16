.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e -1
pop.v.i self.con
pushi.e -1
pop.v.i self.moss_con
pushi.e -1
pop.v.i self.shine
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 920
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 2439
conv.i.v
pushi.e 214
conv.i.v
pushi.e 134
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.shine
push.v self.shine
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.1
pop.v.d self.image_speed

:[6]
popenv [5]

:[end]