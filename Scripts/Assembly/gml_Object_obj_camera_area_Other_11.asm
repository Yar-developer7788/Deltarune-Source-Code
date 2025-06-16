.localvar 2 arguments

:[0]
push.v self.collisionObject
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.collisionObject
pushi.e -9
push.v [stacktop]self.bbox_left
push.v self.collisionObject
pushi.e -9
push.v [stacktop]self.bbox_right
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.ox
push.v self.collisionObject
pushi.e -9
push.v [stacktop]self.bbox_bottom
pop.v.v self.oy
push.v self.leaveAreaPixelLeeway
pop.v.v self.lw
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
push.v self.oy
push.v self.ox
call.i point_in_rectangle(argc=6)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.i self.inside
push.v self.myView
pop.v.v 1158.currentView
b [end]

:[3]
push.v self.revertViewWhenOutsideArea
conv.v.b
bf [end]

:[4]
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.lw
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.lw
add.v.v
push.v self.y
push.v self.lw
sub.v.v
push.v self.x
push.v self.lw
sub.v.v
push.v self.oy
push.v self.ox
call.i point_in_rectangle(argc=6)
conv.v.b
not.b
bf [end]

:[5]
push.v self.inside
pushi.e 1
cmp.i.v EQ
bf [6]

:[6]
pushi.e 0
pop.v.i self.inside
push.v 1158.currentView
push.v self.myView
cmp.v.v EQ
bf [end]

:[7]
push.v self.defaultOutsideView
pop.v.v 1158.currentView

:[end]