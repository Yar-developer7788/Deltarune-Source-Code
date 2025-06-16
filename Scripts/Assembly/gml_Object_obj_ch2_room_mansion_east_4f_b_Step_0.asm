.localvar 2 arguments

:[0]
push.v self.weretriggered
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 82
pushenv [4]

:[2]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i other.weretriggered

:[4]
popenv [2]

:[5]
push.v self.weretriggered
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 240
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 12
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 164
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.weretriggered

:[end]