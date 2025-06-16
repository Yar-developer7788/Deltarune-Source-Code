.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.active
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
push.v self.x
pop.v.v self.startx
push.v self.y
pop.v.v self.starty
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.lerpPoint
pushi.e 25
conv.i.v
call.i irandom(argc=1)
pushi.e 5
add.i.v
pop.v.v self.rotationSpeed
pushi.e 1
pop.v.i self.rotationDir
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pop.v.i self.rotationDir

:[2]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v self.fireoffset
pushi.e 0
pop.v.i self.targetAngle
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.delay
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.color_timer
pushi.e -999
pop.v.i self.start_angle
pushi.e 0
pop.v.i self.image_speed

:[end]