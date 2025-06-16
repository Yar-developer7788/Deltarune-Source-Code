.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.hacker
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e -5
pushi.e 339
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
pushi.e 103
conv.i.v
pushi.e 215
conv.i.v
pushi.e 1650
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hacker_npc
pushi.e 1231
push.v self.hacker_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.hacker_npc
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]

:[7]
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.b.v
push.s "TILES_Secret_BG"@36016
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
b [end]

:[8]
pushi.e 68
conv.i.v
pushi.e 360
conv.i.v
pushi.e 950
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.exitcollider
pushi.e 4
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 133
conv.i.v
pushi.e 290
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hacker
pushi.e 1
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1230
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.hacker
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 0
pop.v.b self.hacker_init_path
pushi.e 0
pop.v.i self.pause_timer
pushi.e 0
pop.v.b self.hacker_pause
pushi.e 1
pop.v.b self.hacker_can_pause
push.v self.hacker
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.b self.pathpause
pushi.e 2
pop.v.i self.currentspeed
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i path_start(argc=4)
popz.v

:[13]
popenv [12]

:[end]