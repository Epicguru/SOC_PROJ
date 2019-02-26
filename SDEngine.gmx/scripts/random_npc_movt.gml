///random_npc_movt(speed)

if !ie(parDeactivator) and !global.cutscene and room != rmGameOver and (!objDebug.active or !objDebug.can_input) and speed == 0 {
    direction = choose(0,45,90,135,180,225,270,315)
    speed = argument0
} else {
    speed = 0
}

alarm[0] = range(30,60)
