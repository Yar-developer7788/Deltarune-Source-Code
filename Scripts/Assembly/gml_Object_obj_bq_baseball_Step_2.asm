.localvar 2 arguments

:[0]
push.v self.baseball_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.wheel_hitbox_graze
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
push.v self.y
push.v self.c
cmp.v.v GT
bf [6]

:[5]
push.v 777.punchcon
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v 777.x
push.v self.baseball_hitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.v 777.y
push.v self.baseball_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[9]
push.v self.x
push.v self.baseball_hitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.baseball_hitbox
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.x
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.y

:[end]