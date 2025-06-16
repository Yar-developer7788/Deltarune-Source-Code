.localvar 2 arguments

:[0]
b [14]

> gml_Script_scr_markify_caterpillar_ch1 (locals=0, argc=0)
:[1]
push.i 4378473
pop.v.i self.s
push.i 4387437
pop.v.i self.r
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [13]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[4]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [8]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]

:[8]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [12]

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[13]
exit.i

:[14]
push.i [function]gml_Script_scr_markify_caterpillar_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_markify_caterpillar_ch1
popz.v

:[end]