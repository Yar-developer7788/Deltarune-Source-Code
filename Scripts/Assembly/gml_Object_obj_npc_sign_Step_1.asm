.localvar 2 arguments

:[0]
push.v self.setdepth
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[end]