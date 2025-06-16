.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_caterpillar_stackandinterpolate (locals=0, argc=0)
:[1]
pushi.e 276
pushenv [8]

:[2]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [4]

:[3]
push.v 82.x
pushi.e 6
sub.i.v
pop.v.v self.x
push.v 82.y
pushi.e 16
sub.i.v
pop.v.v self.y

:[4]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [6]

:[5]
push.v 82.x
pushi.e 2
sub.i.v
pop.v.v self.x
push.v 82.y
pushi.e 12
sub.i.v
pop.v.v self.y

:[6]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [8]

:[7]
push.v 82.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v 82.y
pushi.e 18
sub.i.v
pop.v.v self.y

:[8]
popenv [2]
exit.i

:[9]
push.i [function]gml_Script_scr_caterpillar_stackandinterpolate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_caterpillar_stackandinterpolate
popz.v

:[end]