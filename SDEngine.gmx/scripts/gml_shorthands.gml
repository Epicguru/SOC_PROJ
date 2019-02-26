#define gml_shorthands
//  I got tired of typing long commands, so I created these to save myself some time.

#define ic
///ic(x,y,obj)
return instance_create(argument0,argument1,argument2);

#define ide
///ide()
instance_destroy()

#define ie
///ie(obj)
return instance_exists(argument0);
#define ido
///ido(obj)

with argument0 {
    ide();
}
#define kc
///kc(key)
return keyboard_check(argument0)

#define kcp
///kcp(key)
return keyboard_check_pressed(argument0)