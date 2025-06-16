.localvar 2 arguments
.localvar 18097 show_shine 7424
.localvar 18098 hole 7425

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
pushi.e 0
pop.v.i self.siner0
push.d 0.2
pop.v.d self.siner_add0
pushi.e 0
pop.v.i self.siner_amplitude0
pushi.e 0
pop.v.i self.siner_direction0
pushi.e 0
pop.v.i self.siner1
push.d 0.2
pop.v.d self.siner_add1
pushi.e 5
pop.v.i self.siner_amplitude1
pushi.e 90
pop.v.i self.siner_direction1
pushi.e 0
pop.v.b self.sfx
pushi.e -4
pop.v.i self.shine
pushi.e 0
pop.v.b self.remove_shine
pushglb.v global.plot
pushi.e 10
cmp.i.v GTE
bf [22]

:[1]
pushi.e 7
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 7
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushi.e 7
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 2
push.v [array]self.charweapon
pushi.e 7
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [9]

:[7]
pushi.e -5
pushi.e 35
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 35
pop.v.v [array]self.tempflag
call.i gml_Script_scr_jevil_check(argc=0)
popz.v

:[9]
pushi.e -5
pushi.e 36
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 36
push.v [array]self.tempflag
pushi.e 2
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
pop.v.b local.show_shine
pushloc.v local.show_shine
conv.v.b
bf [15]

:[13]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [15]

:[14]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
pop.v.b local.show_shine

:[18]
pushi.e 3331
conv.i.v
pushi.e 200
conv.i.v
pushi.e 281
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.hole
pushloc.v local.hole
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[20]
popenv [19]
pushloc.v local.show_shine
conv.v.b
bf [22]

:[21]
pushi.e 2439
conv.i.v
pushi.e 235
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.shine
push.d 0.1
push.v self.shine
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.shine
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shine
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.hole
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.shine
pushi.e -9
pop.v.v [stacktop]self.depth

:[22]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [24]

:[23]
pushi.e -5
pushi.e 314
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [end]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[end]