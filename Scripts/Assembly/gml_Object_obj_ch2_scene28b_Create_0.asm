.localvar 2 arguments

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [4]

:[1]
pushi.e 105
conv.i.v
pushi.e 68
conv.i.v
pushi.e 166
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_npc
pushi.e 381
push.v self.berdly_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 276
pushenv [3]

:[2]
pushi.e 0
pop.v.b self.visible

:[3]
popenv [2]

:[4]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -1
pop.v.i self.su_actor
pushi.e 0
pop.v.b self.show_border
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [6]

:[5]
pushglb.v global.plot
pushi.e 200
cmp.i.v GT
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[9]
pushi.e 1
pop.v.i self.con
pushi.e 1157
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[10]
pushi.e 1157
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[13]
pushi.e 0
conv.b.v
push.s "GIVE_DEPTH"@33536
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
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
pushi.e 2978
conv.i.v
pushi.e 96
conv.i.v
pushi.e 152
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.desk_marker
pushi.e 1
push.v self.desk_marker
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.v self.whiteall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.desk_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.standing
pushi.e 0
pop.v.b self.kris_leave
pushi.e 0
pop.v.b self.susie_mad
pushi.e 0
pop.v.i self.susie_mad_timer

:[end]