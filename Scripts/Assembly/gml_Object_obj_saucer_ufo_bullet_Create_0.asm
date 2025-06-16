.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.destroyoffscreen
pushi.e 64
pop.v.i self.tolerance
pushi.e 0
pop.v.i self.teller
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[1]
pushi.e 82
pushenv [7]

:[2]
push.v self.press_r
conv.v.b
bf [4]

:[3]
push.v self.wspeed
pop.v.v other.teller
b [7]

:[4]
push.v self.press_l
conv.v.b
bf [6]

:[5]
push.v self.wspeed
neg.v
pop.v.v other.teller
b [7]

:[6]
pushi.e 0
pop.v.i other.teller

:[7]
popenv [2]

:[8]
pushi.e 1
conv.i.v
call.i gml_Script_charaHeartY(argc=0)
call.i gml_Script_charaHeartX(argc=0)
push.v self.teller
pushi.e 20
mul.i.v
add.v.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.3
pop.v.d self.friction
push.i 68097
setowner.e
pushi.e 300
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.d 0.2
pop.v.d self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.direction
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.explosiontype
pushi.e 3
pop.v.i self.target
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.timer
pushi.e 10
pop.v.i self.damage
pushi.e 0
pop.v.i self.aimtimer
pushi.e 0
pop.v.i self.deathtimer

:[end]