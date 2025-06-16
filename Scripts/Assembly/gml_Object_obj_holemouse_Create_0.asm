.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 270
pop.v.i self.direction
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.invulnerable
pushi.e 0
pop.v.i self.fall
pushi.e 0
pop.v.i self.gulped
pushi.e 0
pop.v.b self.nointeract
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.emergetimer
push.v self.x
pop.v.v self.drawx
push.v self.y
pop.v.v self.drawy
pushi.e 0
pop.v.i self.con
pushi.e 100
pop.v.i self.lifespan
pushi.e 0
pop.v.i self.breakcount
pushi.e 0
pop.v.i self.win
pushi.e 0
pop.v.i self.deathtimer
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.hastarget
pushi.e 0
pop.v.i self.jumppuzzle
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.jumppuzzle
pushi.e 1
pop.v.i self.hastarget
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pop.v.v self.target

:[2]
pushi.e 1172
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [6]

:[3]
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [6]

:[4]
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [6]

:[5]
pushi.e 1174
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.b self.blockedstart
b [10]

:[9]
pushi.e 0
pop.v.b self.blockedstart

:[10]
push.v self.direction
pop.v.v self.currentdir
pushi.e 0
pop.v.i self.initas
pushi.e 1
pop.v.i self.bounceOffDoor
pushi.e 320
pop.v.i self.bounceTargetX
pushi.e 240
pop.v.i self.bounceTargetY
pushi.e 90
pop.v.i self.bounceTargetDir
pushi.e 2688
pop.v.i self.customSprite
pushi.e 0
pop.v.i self.fakeY
pushi.e 0
pop.v.i self.fakeYSpeed
pushi.e 0
pop.v.i self.bouncecon
pushi.e 0
pop.v.i self.falltimer
pushi.e 0
pop.v.i self.bouncethisframe

:[end]