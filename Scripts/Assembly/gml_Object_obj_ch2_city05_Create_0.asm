.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.shortened
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 85
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
pushi.e 105
conv.i.v
pushi.e 106
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dumpster
pushi.e 134
push.v self.dumpster
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.dumpster
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[7]
pushi.e -5
pushi.e 417
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 417
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[9]
pushi.e -5
pushi.e 29
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.b self.shortened

:[11]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 136
conv.i.v
pushi.e 106
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dumpster
push.i 900000
push.v self.dumpster
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dumpster
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 135
conv.i.v
pushi.e 106
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dumpster_nakami
push.v self.dumpster
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.dumpster_nakami
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.dumpster_nakami
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.b self.play_intro
pushi.e 0
pop.v.b self.stop_intro
pushi.e 0
pop.v.i self.stop_timer
pushi.e 0
pop.v.b self.open_dumpster

:[end]