.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 340
pop.v.v [array]self.flag
pushi.e -1
pop.v.i self.con
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.exitcollider
call.i gml_Script_safe_delete(argc=1)
popz.v

:[end]