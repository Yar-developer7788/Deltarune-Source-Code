.localvar 2 arguments
.localvar 11973 array 4556
.localvar 6482 xx 4557
.localvar 6483 yy 4558
.localvar 11974 vspacing 4559
.localvar 11975 selection_indices 4560
.localvar 11976 func_depth 4561
.localvar 11977 menu_depth 4562
.localvar 755 length 4563
.localvar 107 i 4564
.localvar 6235 ndx 4565
.localvar 4672 type 4566
.localvar 229 item 4567
.localvar 3439 name 4568
.localvar 11978 selected 4569
.localvar 11980 prefix 4570

:[0]
b [18]

> gml_Script_scr_84_draw_menu_ch1 (locals=15, argc=7)
:[1]
push.v arg.argument0
pop.v.v local.array
push.v arg.argument1
pop.v.v local.xx
push.v arg.argument2
pop.v.v local.yy
push.v arg.argument3
pop.v.v local.vspacing
push.v arg.argument4
pop.v.v local.selection_indices
push.v arg.argument5
pop.v.v local.func_depth
push.v arg.argument6
pop.v.v local.menu_depth
pushloc.v local.array
call.i ds_list_size(argc=1)
pop.v.v local.length
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.length
cmp.v.v LT
bf [16]

:[3]
pushloc.v local.i
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.ndx
pushloc.v local.i
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.type
pushloc.v local.i
pushi.e 1
add.i.v
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.item
pushloc.v local.i
pushi.e 2
add.i.v
pushloc.v local.array
call.i ds_list_find_value(argc=2)
pop.v.v local.name
pushi.e 0
pop.v.b local.selected
push.s "  "@11979
pop.v.s local.prefix
pushloc.v local.ndx
pushi.e -7
pushloc.v local.func_depth
conv.v.i
push.v [array]self.selection_indices
cmp.v.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.b local.selected

:[5]
pushloc.v local.selected
conv.v.b
bf [8]

:[6]
push.s "> "@11981
pop.v.s local.prefix
pushloc.v local.func_depth
pushglb.v global.chemg_max_depth
cmp.v.v GT
bf [8]

:[7]
pushloc.v local.func_depth
pop.v.v global.chemg_max_depth
pushloc.v local.yy
pop.v.v global.chemg_cursor_y

:[8]
pushloc.v local.type
push.s "[group]"@11984
cmp.s.v EQ
bf [10]

:[9]
push.s "[ "@11985
pushloc.v local.name
add.v.s
push.s "... ]"@11986
add.s.v
pop.v.v local.name

:[10]
pushloc.v local.prefix
pushloc.v local.name
add.v.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_84_draw_text_outline_ch1(argc=3)
popz.v
push.v local.yy
pushloc.v local.vspacing
add.v.v
pop.v.v local.yy
pushloc.v local.func_depth
pushloc.v local.menu_depth
cmp.v.v LT
bf [12]

:[11]
pushloc.v local.ndx
pushi.e -7
pushloc.v local.func_depth
conv.v.i
push.v [array]self.selection_indices
cmp.v.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushloc.v local.menu_depth
pushloc.v local.func_depth
pushi.e 1
add.i.v
pushloc.v local.selection_indices
pushloc.v local.vspacing
pushloc.v local.yy
pushloc.v local.xx
pushi.e 20
add.i.v
pushloc.v local.item
call.i gml_Script_scr_84_draw_menu_ch1(argc=7)
pop.v.v local.yy

:[15]
push.v local.i
pushi.e 3
add.i.v
pop.v.v local.i
b [2]

:[16]
pushloc.v local.yy
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_84_draw_menu_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_draw_menu_ch1
popz.v

:[end]