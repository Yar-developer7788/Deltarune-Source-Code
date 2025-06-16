.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterhp
pushi.e 100
sub.i.v
pop.i.v [array]self.monsterhp
push.s "Sneo health = "@26286
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[end]