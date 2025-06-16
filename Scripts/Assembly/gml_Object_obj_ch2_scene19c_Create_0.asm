.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -1
pop.v.i self.exitcollider
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 115
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 105
conv.i.v
pushi.e 200
conv.i.v
pushi.e 35
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisesusie
pushi.e 174
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 216
conv.i.v
pushi.e 555
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.niseberdly
pushi.e 670
push.v self.niseberdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.niseberdly
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.niseberdly
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1144
conv.i.v
pushi.e 240
conv.i.v
pushi.e 575
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.exitcollider
pushi.e 2
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
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
pushi.e 100
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
pushi.e 184
conv.i.v
pushi.e 190
conv.i.v
pushi.e 323
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.berdlyoutline
push.v self.blackall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.berdlyoutline
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.berdlyoutline
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 185
conv.i.v
pushi.e -20
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.berdly_crown
push.v self.berdlyoutline
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.berdly_crown
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.berdly_crown
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 183
conv.i.v
pushi.e 189
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.noelleoutline
push.v self.blackall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.noelleoutline
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.noelleoutline
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.noelleoutline
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noelleoutline
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.b self.noelle_lose
pushi.e 963
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sb_controller
pushi.e 0
pop.v.b self.sb_crowd_show
pushi.e 0
pop.v.b self.sb_crowd_hide
pushi.e 400
conv.i.v
call.i random(argc=1)
pop.v.v self.sb_crowd_siner
pushi.e 182
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.sb_crowd
push.v self.sb_crowd
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 20
pop.v.i self.depth

:[7]
popenv [6]
pushi.e 0
pop.v.b self.berdly_applause_start
pushi.e 0
pop.v.b self.berdly_applause_stop

:[end]