cleaningTimer = 60 * 20
random_angle = choose(-60, -50, -30, -10, 0, 10, 30, 50, 60) //sets a random starter angle for a shell casing
image_angle = random_angle
speed = 6
kickangle = choose(-10, -5, 0, 5, 10)
casingping_sound = choose(brassfall_1, brassfall_2, brassfall_3) //note: sounds provided by Freesound.com
audio_play_sound_at(casingping_sound, x, y, 0, 100, 300, 1, false, 10);