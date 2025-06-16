.localvar 2 arguments
.localvar 24799 hatangle 11813
.localvar 24800 hatx1 11814
.localvar 24801 haty1 11815
.localvar 24802 hatx2 11816
.localvar 24803 haty2 11817
.localvar 24804 headx1 11818
.localvar 24805 heady1 11819
.localvar 24806 headx2 11820
.localvar 24807 heady2 11821
.localvar 14795 _af 11822

:[0]
push.v self.animtimer
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.animtimer

:[2]
push.v self.animtimer
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.image_index
push.v self.timer
pushi.e 80
cmp.i.v GT
bf [4]

:[3]
push.v self.animtimer
pushi.e 2
add.i.v
pop.v.v self.animtimer
b [5]

:[4]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer

:[5]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.loading
push.e 1
sub.i.v
pop.v.v self.loading
push.v self.loading
pushi.e 30
cmp.i.v EQ
bf [7]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [10]

:[9]
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.x
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.xx
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.yy
push.v self.yy
push.v self.xx
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.image_angle
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_angle

:[12]
push.v self.lastx
push.v self.lastangle
pushi.e -17
conv.i.v
pushi.e -9
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v self.hatx
push.v self.lasty
push.v self.lastangle
pushi.e -17
conv.i.v
pushi.e -9
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v self.haty
push.v self.y
push.v self.image_angle
pushi.e -8
conv.i.v
pushi.e -9
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e -8
conv.i.v
pushi.e -9
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
push.v self.haty
push.v self.hatx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pushi.e 360
mod.i.v
pop.v.v local.hatangle
push.v self.hatx
pushloc.v local.hatangle
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local.hatx1
push.v self.haty
pushloc.v local.hatangle
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local.haty1
push.v self.hatx
pushloc.v local.hatangle
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local.hatx2
push.v self.haty
pushloc.v local.hatangle
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local.haty2
push.v self.x
push.v self.image_angle
pushi.e -6
conv.i.v
pushi.e -18
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local.headx1
push.v self.y
push.v self.image_angle
pushi.e -6
conv.i.v
pushi.e -18
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local.heady1
push.v self.x
push.v self.image_angle
pushi.e -10
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local.headx2
push.v self.y
push.v self.image_angle
pushi.e -10
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local.heady2
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.heady1
pushloc.v local.headx1
pushloc.v local.haty1
pushloc.v local.hatx1
call.i draw_line(argc=4)
popz.v
pushloc.v local.heady2
pushloc.v local.headx2
pushloc.v local.haty2
pushloc.v local.hatx2
call.i draw_line(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.hatangle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.haty
push.v self.hatx
pushi.e 3
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.x
pop.v.v self.lastx
push.v self.y
pop.v.v self.lasty
push.v self.image_angle
pop.v.v self.lastangle
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.loading
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v local._af
push.d 0.5
pushloc.v local._af
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v local._af
push.d 0.5
pushloc.v local._af
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 3
pushloc.v local._af
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.hatx
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.haty
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.y
pushloc.v local.hatangle
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[end]