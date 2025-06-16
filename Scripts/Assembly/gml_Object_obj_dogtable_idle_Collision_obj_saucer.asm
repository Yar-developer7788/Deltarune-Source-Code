.localvar 2 arguments

:[0]
pushi.e 1196
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1196.dogcon
push.d 4.1
cmp.d.v EQ
bt [4]

:[2]
push.v 1196.dogcon
push.d 3.1
cmp.d.v EQ
bt [4]

:[3]
push.v 1196.dogcon
push.i 42069
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [12]

:[7]
pushi.e 1199
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tab
push.v 1196.dogcon
push.d 3.1
cmp.d.v EQ
bf [9]

:[8]
pushi.e -1
push.v self.tab
pushi.e -9
pop.v.i [stacktop]self.verticalDirection
pushi.e -1
push.v self.tab
pushi.e -9
pop.v.i [stacktop]self.horizontalDirection

:[9]
push.v 1196.dogcon
push.d 4.1
cmp.d.v EQ
bf [11]

:[10]
pushi.e -1
push.v self.tab
pushi.e -9
pop.v.i [stacktop]self.verticalDirection
pushi.e 1
push.v self.tab
pushi.e -9
pop.v.i [stacktop]self.horizontalDirection

:[11]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [7]

:[end]