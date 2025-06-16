.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 5
conv.i.v
push.v self.headobj
pushi.e -9
push.v [stacktop]self.y
push.v self.headobj
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 3
pop.v.i self.myinteract

:[2]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [5]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 6
cmp.i.v GTE
bf [5]

:[4]
pushi.e 149
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
push.v self.headobj
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 2
pop.v.i self.myinteract

:[end]