.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v 82.y
pushi.e 345
cmp.i.v GTE
bt [4]

:[2]
push.v 82.x
pushi.e 360
cmp.i.v LT
bt [4]

:[3]
push.v 82.x
pushi.e 600
cmp.i.v GT
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_schoollobby_slash_Step_0_gml_9_0"@36178
conv.s.v
push.s "* (That doesn't seem like the way to the old classroom.)/%"@36179
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 1
pop.v.i self.con
push.v 82.y
pushi.e 345
cmp.i.v GTE
bf [13]

:[12]
push.v 82.y
pushi.e 6
sub.i.v
pop.v.v 82.y

:[13]
push.v 82.x
pushi.e 360
cmp.i.v LT
bf [15]

:[14]
push.v 82.x
pushi.e 6
add.i.v
pop.v.v 82.x

:[15]
push.v 82.x
pushi.e 600
cmp.i.v GT
bf [17]

:[16]
push.v 82.x
pushi.e 6
sub.i.v
pop.v.v 82.x

:[17]
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact

:[end]