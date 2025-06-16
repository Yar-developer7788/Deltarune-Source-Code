.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.image_alpha
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.wall_destroy
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
conv.i.v
b [5]

:[4]
pushi.e 0
conv.i.v

:[5]
pop.v.v self.state
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
sub.v.v
pop.v.v self.boxTop
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
add.v.v
pop.v.v self.boxBottom
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
sub.v.v
pop.v.v self.boxLeft
pushi.e 0
pop.v.i self.laneTimer
push.v self.x
pop.v.v self.previousLane
push.v self.x
pop.v.v self.lane
pushi.e 0
pop.v.i self.initialSpeed
push.v self.sprite_index
pop.v.v self.forwardSprite
pushi.e 0
pop.v.b self.turnSignal
pushi.e 1638
pop.v.i self.leftTurnSprite
pushi.e 1639
pop.v.i self.rightTurnSprite
pushi.e 0
pop.v.b self.init

:[end]