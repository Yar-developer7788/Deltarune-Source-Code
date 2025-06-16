.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.steal_susie
pushi.e 0
pop.v.b self.steal_icee
pushi.e 82
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.bg

:[2]
popenv [1]
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e -163
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.moon
pushi.e 3190
push.v self.moon
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 1000100
push.v self.moon
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -5
pushi.e 393
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 105
conv.i.v
pushi.e 176
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susie_statue
pushi.e 2907
push.v self.susie_statue
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.susie_statue
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 98000
push.v self.susie_statue
pushi.e -9
pop.v.i [stacktop]self.depth

:[4]
pushi.e -5
pushi.e 394
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 105
conv.i.v
pushi.e 194
conv.i.v
pushi.e 373
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.icee_cushion
pushi.e 2906
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 98000
push.v self.icee_cushion
pushi.e -9
pop.v.i [stacktop]self.depth

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [8]

:[7]
pushi.e -5
pushi.e 319
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 0
conv.i.v
push.s "Backgrounds_3"@31819
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
b [end]

:[11]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[13]
pushi.e 82
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.visible

:[15]
popenv [14]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
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
pushi.e 1
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.b self.fadeout
pushi.e 0
pop.v.b self.rudebuster
pushi.e 0
pop.v.i self.rudebuster_timer
pushi.e 0
pop.v.i self.wirecon
pushi.e 1711
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 1711
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 575
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.werewire1
pushi.e 0
push.v self.werewire1
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e -2
push.v self.werewire1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1711
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 1711
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 705
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.werewire2
pushi.e 0
push.v self.werewire2
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.b self.sparecon
pushi.e 1
pop.v.b self.disable_face

:[end]