.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16
pop.v.d self.image_speed
pushi.e 1710
pop.v.i self.idlesprite
pushi.e 1713
pop.v.i self.hurtsprite
pushi.e 1726
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.loosenAmount
pushi.e 0
pop.v.i self.loosencon
pushi.e -4
pop.v.i self.throwsus
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.siner_timer
pushi.e 26
pop.v.i self.hangx
pushi.e -58
pop.v.i self.hangy
push.v self.hangy
pop.v.v self.init_hangy
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangtimer
pushi.e 0
pop.v.i self.hangsiner
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 4
pop.v.i self.shootwait
pushi.e 0
pop.v.i self.mercyaccumulated
pushi.e 0
pop.v.i self.anim_timer_2
pushi.e 0
pop.v.i self.stop_anim
pushi.e 0
pop.v.i self.talkwait
pushi.e 2
pop.v.i self.m
pushi.e 0
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.initid
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.werewire_count
pushi.e 2
pop.v.i self.shootmode
pushi.e 10
pop.v.i self.shootwait
push.v self.object_index
pushi.e -9
pushenv [3]

:[1]
push.s "initid"@24027
conv.s.v
push.v self.id
call.i variable_instance_exists(argc=2)
conv.v.b
bf [3]

:[2]
push.v self.initid
push.e 1
add.i.v
pop.v.v self.initid
pushi.e 5
conv.i.v
call.i random(argc=1)
push.v self.initid
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
sub.i.v
pop.v.v self.shootwait

:[3]
popenv [1]
pushi.e 0
pop.v.i self.easymode
pushi.e 0
pop.v.i self.werewerewire
push.i 170532
setowner.e
pushi.e -20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bx1
pushi.e -36
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bx1
pushi.e -48
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bx1
pushi.e -46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.bx1
pushi.e -26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.bx1
push.i 170533
setowner.e
pushi.e -54
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.by1
pushi.e -46
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.by1
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.by1
pushi.e 46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.by1
pushi.e 72
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.by1

:[end]