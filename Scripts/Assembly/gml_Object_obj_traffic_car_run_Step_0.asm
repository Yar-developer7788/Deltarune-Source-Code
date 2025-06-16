.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 12
pop.v.i self.hspeed

:[3]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -12
pop.v.i self.hspeed

:[5]
pushi.e 1
pop.v.i self.init

:[6]
push.v self.hspeed
push.d 1.1
mul.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 1.1
mul.d.v
pop.v.v self.vspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
push.v self.sprite_width
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
bt [10]

:[7]
push.v self.x
call.i gml_Script_camerax(argc=0)
push.v self.sprite_width
pushi.e 2
mul.i.v
sub.v.v
cmp.v.v LT
bt [10]

:[8]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
bt [10]

:[9]
push.v self.y
call.i gml_Script_cameray(argc=0)
push.v self.sprite_height
pushi.e 2
mul.i.v
sub.v.v
cmp.v.v LT
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]