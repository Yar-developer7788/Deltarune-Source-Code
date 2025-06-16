.localvar 2 arguments

:[0]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1517
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.skipvictory

:[2]
popenv [1]
pushi.e 1484
pushenv [6]

:[3]
push.v self.king
pushi.e -9
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.visible

:[5]
popenv [4]

:[6]
popenv [3]
pushi.e -5
pushi.e 247
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[7]
pushi.e 1484
pushenv [11]

:[8]
push.v self.king
pushi.e -9
pushenv [10]

:[9]
pushi.e 4008
pop.v.i self.sprite_index

:[10]
popenv [9]

:[11]
popenv [8]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]