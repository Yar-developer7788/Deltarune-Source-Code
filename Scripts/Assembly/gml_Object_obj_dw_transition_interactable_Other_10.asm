.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.talking
pushglb.v global.plot
pushi.e 17
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.talking

:[5]
push.v self.talking
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e 192
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[8]
push.v self.talking
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.talking
pushi.e 3
pop.v.i self.myinteract
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_dw_transition_interactable_slash_Other_10_gml_18_0"@30837
conv.s.v
push.s "* (Can't go back there for now.)/%"@30838
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d

:[end]