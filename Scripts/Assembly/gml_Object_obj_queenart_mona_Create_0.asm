.localvar 2 arguments

:[0]
pushi.e 999
pop.v.i self.bossid
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
pop.v.v self.bossid
pushi.e 0
pop.v.i self.flamesfx
pushi.e 0
pop.v.i self.dingsfx
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.flag
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.decorative
pushi.e 0
pop.v.i self.movesiner
pushi.e 0
pop.v.i self.breathtimer
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.flashamt
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.movetype
pushi.e -45
pop.v.i self.flameangle
push.v self.flameangle
call.i abs(argc=1)
pop.v.v self.flameanglemax
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con

:[2]
pushi.e 0
pop.v.i self.trackpos
pushbltn.v builtin.room
pushi.e 168
cmp.i.v EQ
bf [end]

:[3]
push.v self.x
pushi.e 540
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 960
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [9]

:[7]
push.s "treasure"@20321
pop.v.s self.extflag
pushi.e 3
pop.v.i self.type
pushi.e -5
pushi.e 398
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 271
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.treasure
pushi.e 2931
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.spriteindex2
push.v self.treasure
pushi.e -9
push.v [stacktop]self.spriteindex2
push.v self.treasure
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.flippable
push.s "treasure"@20321
push.v self.treasure
pushi.e -9
pop.v.s [stacktop]self.extflag
pushi.e 1
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.isswitch
pushi.e 2923
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.spriteindex1
pushi.e 1
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.flipped
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.x
pushi.e 1040
cmp.i.v EQ
bf [11]

:[10]
push.v self.y
pushi.e 120
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.s "exitblocker"@20325
pop.v.s self.extflag
pushi.e 4
pop.v.i self.type
pushi.e 1
pop.v.i self.con
pushi.e 2925
pop.v.i self.sprite_index
pushi.e -5
pushi.e 399
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 2925
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.my_new
push.v self.my_new
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
call.i instance_destroy(argc=0)
popz.v

:[end]