.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 1
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.red
pushi.e 1
pop.v.i self.bighitbox
pushi.e 0
pop.v.i self.image_speed
push.d 0.25
pushi.e 0
conv.i.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 698.target
pop.v.v self.target

:[4]
pushi.e 2
pop.v.i self.grazepoints
pushi.e -1
pop.v.i self.wallcontroller
pushi.e -7
pop.v.i self.wallspeed
pushi.e 0
pop.v.i self.wallnumber
pushi.e 0
pop.v.i self.walltype
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.hp

:[end]