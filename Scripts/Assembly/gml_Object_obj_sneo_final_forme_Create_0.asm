.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
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
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
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
pushi.e 4
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.steptimer
pushi.e 1
pop.v.b self.stepping
pushi.e 0
pop.v.i self.pushback
pushi.e 3
pop.v.i self.advancespeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.b self.mouthopen
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.intro
pushi.e 90
pop.v.i self.mouthx
pushi.e 142
pop.v.i self.mouthy
pushi.e 639
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.formtimer
pushi.e -1
pop.v.i self.stepdir
pushi.e 0
pop.v.i self.made
pushi.e -4
pop.v.i self.fakeheart
pushi.e 0
pop.v.i self.fakeheart_speed
pushi.e 0
pop.v.i self.effecttimer
pushi.e 0
pop.v.i self.lerptimer
pushi.e 0
pop.v.i self.inhalesfx
pushi.e 0
pop.v.i self.hurtalpha
pushi.e 20
pop.v.i self.bullet_suck_x1
pushi.e 130
pop.v.i self.bullet_suck_x2
pushi.e 100
pop.v.i self.bullet_suck_y1
pushi.e 190
pop.v.i self.bullet_suck_y2
pushi.e 0
pop.v.i self.movetimer
pushi.e 12
pop.v.i self.moveframes
pushi.e 0
pop.v.i self.movecon
pushi.e 0
pop.v.i self.timer2
pushi.e 0
pop.v.i self.timer3
pushi.e 0
pop.v.i self.headoffset_x
pushi.e 0
pop.v.i self.headoffset_y
pushi.e 0
pop.v.i self.dmgcon
pushi.e 40
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.back
push.v self.depth
pushi.e 1
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v 631.depth
pushi.e 1
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.depth

:[6]
pushi.e 0
pop.v.i self.hidemouthback
push.s "spr_sneo_playback"@12033
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.playback_sprite

:[end]