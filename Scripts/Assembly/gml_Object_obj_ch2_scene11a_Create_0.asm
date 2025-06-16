.localvar 2 arguments
.localvar 30851 tiled_wall 16150
.localvar 30852 tiled_wall_end 16151

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.auto_text
pushi.e -1
pop.v.i self.auto_con
pushi.e 0
pop.v.b self.shortened
pushi.e -1
pop.v.i self.tempcon
pushi.e 0
pop.v.i self.smoketimer
pushi.e 0
pop.v.i self.smokecon
pushi.e 343
conv.i.v
pushi.e 437
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tiled_wall
pushloc.v local.tiled_wall
pushi.e -9
pushenv [2]

:[1]
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pushi.e 16
mul.i.v
pop.v.v self.total_width
pushi.e 5000
pop.v.i self.depth

:[2]
popenv [1]
pushi.e 344
conv.i.v
pushi.e 437
conv.i.v
pushi.e 591
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tiled_wall_end
pushloc.v local.tiled_wall_end
pushi.e -9
pushenv [4]

:[3]
pushi.e 4900
pop.v.i self.depth

:[4]
popenv [3]
pushi.e 3171
conv.i.v
pushi.e -22
conv.i.v
pushi.e -35
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_entry_shadow
push.i 100000
push.v self.coaster_entry_shadow
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 3169
conv.i.v
pushi.e -5
conv.i.v
pushi.e -39
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_entry
push.v self.coaster_entry_shadow
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.coaster_entry
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3173
conv.i.v
pushi.e -5
conv.i.v
pushi.e -39
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_entry_hood
push.v self.coaster_entry
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.coaster_entry_hood
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3177
conv.i.v
pushi.e 28
conv.i.v
pushi.e 1800
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_ramp
push.i 90000
push.v self.coaster_ramp
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.coaster_ramp
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
pushi.e 72
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_kris
push.v self.coaster_kris
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 0
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
pushi.e 118
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_susie
pushi.e 1
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.coaster_susie
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 0
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
pushi.e 181
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_ralsei
pushi.e 2
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.coaster_ralsei
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 0
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
pushi.e 126
conv.i.v
pushi.e 1890
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_berdly
pushi.e 3
push.v self.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.coaster_berdly
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 1121
conv.i.v
pushi.e 105
conv.i.v
pushi.e 1890
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_noelle
pushi.e 4
push.v self.coaster_noelle
pushi.e -9
pop.v.i [stacktop]self.type
push.i 95000
push.v self.coaster_noelle
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 163
conv.i.v
pushi.e 0
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_berdly
push.v self.nise_berdly
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 1
pop.v.b self.parallax
pushi.e 0
pop.v.b self.loopcity
pushi.e 0
pop.v.b self.looptrack
pushi.e 0
pop.v.b self.tiletrack
pushi.e 0
pop.v.b self.stoplooptrack
pushi.e 0
pop.v.b self.hide_border
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [16]

:[15]
pushglb.v global.plot
pushi.e 64
cmp.i.v GTE
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[19]
pushi.e -5
pushi.e 28
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.b self.shortened

:[21]
pushi.e 2533
conv.i.v
pushi.e 205
conv.i.v
pushi.e 458
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.doorway
pushi.e 22
push.v self.doorway
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 22
push.v self.doorway
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.doorway
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.doorway
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.d 0.75
push.v self.doorway
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 50
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.b self.explode
pushi.e -1
pop.v.i self.explosion
pushi.e -1
pop.v.i self.explodetimer
pushi.e -1
pop.v.i self.explosion_marker
pushi.e -2
pop.v.i self.noise_con
pushi.e 0
pop.v.i self.pan_timer

:[end]