.localvar 2 arguments
.localvar 24781 travellength 11781
.localvar 24782 checkx 11782
.localvar 24783 checky 11783
.localvar 24784 lengthcheck 11784
.localvar 24785 traveldir 11785
.localvar 23836 tailx 11786
.localvar 23837 taily 11787

:[0]
push.v self.traillength
pop.v.v local.travellength
push.i [function]gml_Script_scr_queen_buffercheck
conv.i.b
not.b
bf [2]

:[1]
push.i 8421504
conv.i.v
b [3]

:[2]
push.i 16777215
conv.i.v

:[3]
call.i draw_set_color(argc=1)
popz.v
push.v self.x
pop.v.v local.checkx
push.v self.y
pop.v.v local.checky
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[5]
push.i 133652
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
pushloc.v local.checky
pushloc.v local.checkx
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.i
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.i 133617
setowner.e
pushloc.v local.checkx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushloc.v local.checky
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[7]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [10]

:[8]
pushloc.v local.checkx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
cmp.v.v EQ
bf [10]

:[9]
pushloc.v local.checky
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
cmp.v.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
push.i 133650
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133617
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.x
push.i 133618
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
b [end]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
pushloc.v local.checky
pushloc.v local.checkx
call.i point_distance(argc=4)
pop.v.v local.lengthcheck
pushloc.v local.lengthcheck
pushloc.v local.travellength
cmp.v.v LTE
bf [17]

:[16]
push.i 133650
setowner.e
pushloc.v local.lengthcheck
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 8
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
pushloc.v local.checky
pushloc.v local.checkx
call.i draw_line_width(argc=5)
popz.v
push.v local.travellength
pushloc.v local.lengthcheck
sub.v.v
pop.v.v local.travellength
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
pop.v.v local.checkx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
pop.v.v local.checky
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushloc.v local.checky
pushloc.v local.checkx
call.i draw_circle(argc=4)
popz.v
b [21]

:[17]
push.i 133650
setowner.e
pushloc.v local.travellength
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bouncepoint_x
pushloc.v local.checky
pushloc.v local.checkx
call.i point_direction(argc=4)
pop.v.v local.traveldir
pushloc.v local.checkx
pushloc.v local.traveldir
pushloc.v local.travellength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.tailx
pushloc.v local.checky
pushloc.v local.traveldir
pushloc.v local.travellength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.taily
pushi.e 8
conv.i.v
pushloc.v local.taily
pushloc.v local.tailx
pushloc.v local.checky
pushloc.v local.checkx
call.i draw_line_width(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushloc.v local.taily
pushloc.v local.tailx
call.i draw_circle(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i

:[18]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133617
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.x
push.i 133618
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
b [end]

:[21]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]