.localvar 2 arguments

:[0]
push.v self.obj_basicbullet
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.bulletspeed
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.bulletspeed
push.v self.bullet
pushi.e -9
pushenv [2]

:[1]
push.v self.bulletspeed
push.v self.obj_yellowheart
pushi.e -9
push.v [stacktop]self.y
pushi.e 8
add.i.v
push.v self.obj_yellowheart
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[2]
popenv [1]

:[end]