.localvar 2 arguments
.localvar 30022 __depthcheck 15828

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [35]

:[1]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [20]

:[2]
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dark
push.v self.jumpspeed
push.v self.jumptime
push.d 0.5
mul.d.v
div.v.v
pop.v.v self.fakegravity
pushi.e 0
pop.v.i self.ignoredepth
pushi.e 1
pop.v.i self.init
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.body_obj
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.target
pushi.e -9
push.v [stacktop]self.image_index
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.target
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.target
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.target
pushi.e -9
push.v [stacktop]self.depth
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.body_obj
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.checksprite
pushi.e 0
pop.v.i local.__depthcheck
push.v self.body_obj
pushi.e -9
pushenv [6]

:[3]
push.v self.depth
pop.v.v self._remdepth
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self._remdepth
push.v self.depth
cmp.v.v NEQ
bf [5]

:[4]
pushi.e 1
pop.v.i local.__depthcheck

:[5]
push.v self._remdepth
pop.v.v self.depth

:[6]
popenv [3]
pushloc.v local.__depthcheck
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.ignoredepth

:[8]
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.shadowoffx
pushi.e 0
pop.v.i self.shadowoffy
push.v self.checksprite
call.i sprite_get_height(argc=1)
pop.v.v self.shadowheight
push.v self.endy
pop.v.v self.y
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.remy
pop.v.v self.y
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.endx
pop.v.v self.falseendx
push.v self.endy
pop.v.v self.falseendy
push.v self.usesprites
pushi.e 1
cmp.i.v EQ
bf [19]

:[9]
pushi.e 0
pop.v.i self.usespritetimer
push.v self.landsprite
pushi.e 0
cmp.i.v GT
bf [18]

:[10]
push.v self.landsprite
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.body_obj
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.body_obj
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.landsprite
pushi.e 540
cmp.i.v EQ
bf [12]

:[11]
push.v self.body_obj
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 2
push.v self.dark
mul.v.i
sub.v.v
pop.i.v [stacktop]self.x
push.v self.body_obj
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 1
push.v self.dark
mul.v.i
add.v.v
pop.i.v [stacktop]self.y
push.v self.falseendx
pushi.e 4
push.v self.dark
mul.v.i
sub.v.v
pop.v.v self.falseendx
push.v self.startx
pushi.e 4
push.v self.dark
mul.v.i
sub.v.v
pop.v.v self.startx
push.v self.starty
pushi.e 4
push.v self.dark
mul.v.i
sub.v.v
pop.v.v self.starty

:[12]
push.v self.landsprite
pushi.e 548
cmp.i.v EQ
bf [14]

:[13]
push.v self.body_obj
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 4
push.v self.dark
mul.v.i
sub.v.v
pop.i.v [stacktop]self.x
push.v self.falseendx
pushi.e 4
push.v self.dark
mul.v.i
sub.v.v
pop.v.v self.falseendx
push.v self.startx
pushi.e 6
push.v self.dark
mul.v.i
add.v.v
pop.v.v self.startx
push.v self.starty
pushi.e 6
push.v self.dark
mul.v.i
sub.v.v
pop.v.v self.starty

:[14]
push.v self.landsprite
pushi.e 2562
cmp.i.v EQ
bf [16]

:[15]
push.v self.body_obj
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 2
push.v self.dark
mul.v.i
add.v.v
pop.i.v [stacktop]self.y
push.v self.starty
pushi.e 4
add.i.v
pop.v.v self.starty
push.v self.startx
pushi.e 6
sub.i.v
pop.v.v self.startx
push.v self.falseendx
pushi.e 6
sub.i.v
pop.v.v self.falseendx
push.v self.falseendy
pushi.e 2
push.v self.dark
mul.v.i
add.v.v
pop.v.v self.falseendy

:[16]
push.v self.jumpsprite
pushi.e 780
cmp.i.v EQ
bf [18]

:[17]
push.v self.shadowoffx
pushi.e 10
sub.i.v
pop.v.v self.shadowoffx
push.v self.shadowoffy
pushi.e 4
sub.i.v
pop.v.v self.shadowoffy

:[18]
pushi.e 1
pop.v.i self.con
b [20]

:[19]
pushi.e 2
pop.v.i self.con

:[20]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[21]
push.v self.usespritestimer
push.e 1
add.i.v
pop.v.v self.usespritestimer
push.v self.usespritestimer
pushi.e 5
cmp.i.v GTE
bf [23]

:[22]
push.v self.jumpsprite
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.body_obj
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2
pop.v.i self.con

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [28]

:[24]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.jumpspeed
push.v self.fakegravity
sub.v.v
pop.v.v self.jumpspeed
push.v self.jumpy
push.v self.jumpspeed
sub.v.v
pop.v.v self.jumpy
push.v self.timer
push.v self.jumptime
div.v.v
push.v self.falseendx
push.v self.startx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.timer
push.v self.jumptime
div.v.v
push.v self.falseendy
push.v self.starty
call.i lerp(argc=3)
pop.v.v self.nowy
push.v self.nowy
pop.v.v self.y
push.v self.x
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.nowy
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.x
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.nowy
push.v self.jumpy
add.v.v
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.ignoredepth
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 5000
sub.i.v
pop.v.v self.depth
push.v self.depth
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.depth

:[26]
push.v self.timer
push.v self.jumptime
cmp.v.v GTE
bf [28]

:[27]
push.v self.falseendx
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.falseendy
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.endx
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.endy
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.usespritestimer

:[28]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [34]

:[29]
push.v self.usesprites
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.landsprite
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.usespritestimer
push.e 1
add.i.v
pop.v.v self.usespritestimer
b [32]

:[31]
pushi.e 10
pop.v.i self.usespritestimer

:[32]
push.v self.usespritestimer
pushi.e 5
cmp.i.v GTE
bf [34]

:[33]
pushi.e 1
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.visible
call.i instance_destroy(argc=0)
popz.v

:[34]
b [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
push.v self.body_obj
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[37]
push.v self.image_alpha
push.v self.body_obj
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[end]