.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.random_image
conv.v.b
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_number
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pop.v.v self.image_index

:[3]
pushi.e 1
pop.v.i self.init

:[4]
push.v self.rotation
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
push.v self.image_angle
push.v self.rotation
add.v.v
pop.v.v self.image_angle

:[6]
push.v self.destroyoffscreen
conv.v.b
bf [13]

:[7]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 50
sub.i.v
cmp.v.v LT
bt [11]

:[8]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 680
add.i.v
cmp.v.v GT
bt [11]

:[9]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 50
sub.i.v
cmp.v.v LT
bt [11]

:[10]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 510
add.i.v
cmp.v.v GT
b [12]

:[11]
push.e 1

:[12]
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[16]
push.v self.lifetime
pushi.e 0
cmp.i.v GT
bf [end]

:[17]
push.v self.lifetime
push.e 1
sub.i.v
pop.v.v self.lifetime
push.v self.lifetime
pushi.e 0
cmp.i.v LTE
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[19]
push.v self.fadeondeath
conv.v.b
bf [21]

:[20]
push.v self.lifetime
pushi.e 10
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
push.v self.lifetime
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[end]