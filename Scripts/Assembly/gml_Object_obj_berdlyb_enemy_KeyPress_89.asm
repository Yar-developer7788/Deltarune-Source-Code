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

:[end]