///play_music(sound_id,pitch)

if argument0 == -1 or global.mute {
    audio_stop_all()
} else {
    if argument0 != global.bgMusic {
        global.bgMusic = argument0
        audio_stop_all()
        global.bgMusic_ = audio_play_sound(global.bgMusic,0,1)
        audio_sound_pitch(global.bgMusic_,argument1)
    } 
}
