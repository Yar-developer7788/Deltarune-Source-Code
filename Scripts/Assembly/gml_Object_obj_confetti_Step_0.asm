.localvar 2 arguments

:[0]
push.v self.speed
pushi.e 5
cmp.i.v LT
bf [2]

:[1]
push.d 0.4
pop.v.d self.friction

:[2]
push.v self.speed
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
push.d 0.1
conv.d.v
pushi.e 2
conv.i.v
push.v self.fallspeed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.fallspeed

:[4]
push.v self.y
push.v self.fallspeed
add.v.v
pop.v.v self.y
push.v self.x
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.fallspeed
pushi.e 2
conv.i.d
div.d.v
mul.v.v
add.v.v
pop.v.v self.x
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
push.v self.speed
pushi.e 15
conv.i.d
div.d.v
add.v.i
pop.v.v self.image_speed

:[end]