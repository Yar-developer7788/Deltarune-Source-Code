.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [10]

:[1]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 90
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
pushi.e 9
add.i.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterPlate
pushi.e -9
push.v [stacktop]self.x
push.v self.y
pushi.e 9
sub.i.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v
b [9]

:[3]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 270
cmp.i.v EQ
bt [5]

:[4]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e -90
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v self.y
pushi.e 9
add.i.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
push.v [stacktop]self.x
push.v self.y
pushi.e 9
sub.i.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterPlate
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v
b [9]

:[8]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterPlate
pushi.e -9
push.v [stacktop]self.y
push.v self.x
pushi.e 17
add.i.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
push.v [stacktop]self.y
push.v self.x
pushi.e 17
sub.i.v
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v

:[9]
b [end]

:[10]
call.i draw_self(argc=0)
popz.v

:[end]