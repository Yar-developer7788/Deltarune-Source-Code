.localvar 2 arguments

:[0]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[1]
pushi.e 276
pushenv [8]

:[2]
push.v other.susie
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [5]

:[4]
push.v self.id
pop.v.v other.susie

:[5]
push.v other.ralsei
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [8]

:[7]
push.v self.id
pop.v.v other.ralsei

:[8]
popenv [2]

:[9]
pushi.e 1231
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[10]
pushi.e 82
pushenv [14]

:[11]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.b other.onroad
b [14]

:[13]
pushi.e 0
pop.v.b other.onroad

:[14]
popenv [11]

:[15]
push.v self.onroad
pushi.e 1
cmp.b.v EQ
bf [22]

:[16]
push.v self.ralsei
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [19]

:[17]
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.ralsei
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[19]
push.v self.susie
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[20]
push.v self.susie
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.v self.susie
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[22]
push.v self.onroad
pushi.e 0
cmp.b.v EQ
bf [29]

:[23]
push.v self.ralsei
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[24]
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [26]

:[25]
push.v self.ralsei
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[26]
push.v self.susie
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [29]

:[27]
push.v self.susie
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [29]

:[28]
push.v self.susie
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[29]
pushi.e 1231
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [end]

:[30]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[31]
pushi.e 276
pushenv [34]

:[32]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [34]

:[33]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[34]
popenv [32]

:[end]