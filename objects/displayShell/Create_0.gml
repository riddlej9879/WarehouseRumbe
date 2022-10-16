cleaningTimer = 60 * 20
random_angle = choose(-90, -80, -70, -60, -50, -30, -10, 0, 10, 30, 50, 60, 70, 80, 90) //sets a random starter angle for a shell casing
image_angle = random_angle
speed = 6
kickangle = choose(-70, -60, -50, -40, -30, -20, -10, -5, 0, 5, 10, 20, 30, 40, 50, 60, 70)
casingping_sound = choose(brassfall_1, brassfall_2, brassfall_3) //note: sounds provided by Freesound.com
audio_play_sound_at(casingping_sound, x, y, 0, 100, 300, 1, false, 10);
sprite_index = (choose(shotgunShellSprite, pistolShellSprite, pistolShellSprite, pistolShellSprite));
