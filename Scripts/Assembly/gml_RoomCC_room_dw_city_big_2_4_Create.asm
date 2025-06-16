.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]