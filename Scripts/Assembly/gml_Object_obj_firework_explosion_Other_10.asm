.localvar 2 arguments
.localvar 11504 _data 8034
.localvar 107 i 8037
.localvar 19924 _perc 8038

:[0]
push.v self.sprite_index
pushglb.v global.firework_sprite_pixel_data
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [4]

:[1]
push.s "[WARNING] obj_fireworks_manager hasn't cached "@19921
push.v self.sprite_index
call.i sprite_get_name(argc=1)
add.v.s
push.s " in its create event. It will be added now, game may stutter."@19922
add.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 224
pushenv [3]

:[2]
push.i 168682
setowner.e
push.v other.sprite_index
pushi.e -1
pushi.e 0
pop.v.v [array]self.current_sprites
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
push.v self.sprite_index
pushglb.v global.firework_sprite_pixel_data
call.i ds_map_find_value(argc=2)
pop.v.v local._data
pushi.e -7
pushi.e 0
push.v [array]self._data
pop.v.v self.pixels
pushi.e -7
pushi.e 1
push.v [array]self._data
pop.v.v self.mypixelx
pushi.e -7
pushi.e 2
push.v [array]self._data
pop.v.v self.mypixely
pushi.e -7
pushi.e 3
push.v [array]self._data
pop.v.v self.width
pushi.e -7
pushi.e 4
push.v [array]self._data
pop.v.v self.height
pushi.e -7
pushi.e 5
push.v [array]self._data
pop.v.v self.pixelrgb
pushi.e -7
pushi.e 6
push.v [array]self._data
pop.v.v self.pixelalpha
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.pixels
cmp.v.v LT
bf [end]

:[6]
push.i 168722
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixelx
push.v self.scale
mul.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.mypixelx
push.i 168712
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixely
push.v self.scale
mul.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.mypixely
push.i 168722
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.mypixelx
pushi.e 1
pushi.e 90
push.v self.angle_z
sub.v.i
push.v self.perspective_z
push.d 0.5
mul.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixely
push.v self.height
div.v.v
add.v.v
call.i lengthdir_x(argc=2)
sub.v.i
mul.v.v
pop.i.v [array]self.mypixelx
push.i 168712
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.mypixely
pushi.e 1
push.v self.angle_z
pushi.e 90
conv.i.d
div.d.v
sub.v.i
mul.v.v
pop.i.v [array]self.mypixely
push.i 168716
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpandprog
push.i 168719
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpand_v
push.i 168718
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpand_h
push.i 168713
setowner.e
push.d -0.8
conv.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelvsp
push.i 168714
setowner.e
push.d 0.02
conv.d.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelgravoffset
push.i 168715
setowner.e
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelvspmaxoffset
push.i 168720
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelscale
push.i 168721
setowner.e
pushi.e 20
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelspritechangealarm
push.i 168699
setowner.e
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelalpha
push.i 168717
setowner.e
push.d 0.06
conv.d.v
push.d 0.04
conv.d.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpandspd
push.v self.colorProfile
dup.v 0
push.l 2
cmp.l.v EQ
bt [11]

:[7]
dup.v 0
push.l 0
cmp.l.v EQ
bt [12]

:[8]
dup.v 0
push.l 1
cmp.l.v EQ
bt [13]

:[9]
b [14]

:[10]
b [15]

:[11]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixely
push.d 0.5
push.v self.height
mul.v.d
add.v.v
pushi.e 2
push.v self.height
mul.v.i
div.v.v
pop.v.v local._perc
push.i 168698
setowner.e
pushi.e 255
conv.i.v
pushi.e 100
conv.i.v
pushi.e 255
pushloc.v local._perc
mul.v.i
call.i make_colour_hsv(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelrgb
b [15]

:[12]
b [15]

:[13]
push.i 168698
setowner.e
push.v self.image_blend
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelrgb
b [15]

:[14]
b [15]

:[15]
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[end]