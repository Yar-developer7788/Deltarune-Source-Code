.localvar 2 arguments
.localvar 107 i 13132

:[0]
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.parent
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
push.v self.parent
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pushi.e 35
sub.i.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
sub.i.v
pop.v.v self.y
b [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 592
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [end]

:[8]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 592
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.x
push.v self.x
pushi.e 5
add.i.v
cmp.v.v GTE
bf [10]

:[9]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
call.i distance_to_object(argc=1)
pushi.e 40
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.i 133618
setowner.e
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
pop.v.v [stacktop]self.y
call.i instance_destroy(argc=0)
popz.v

:[13]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [7]

:[end]