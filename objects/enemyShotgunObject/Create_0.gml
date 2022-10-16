maxEnemyHP = 70
currentEnemyHP = maxEnemyHP

dropItem = -1

enemyFarChaseDistance = 450
enemyCloseChaseDistance = 200
enemyFarSpeed = 4
enemyCloseSpeed = 1
enemySpeed = enemyFarSpeed

rangedAttackTimer = 5 * room_speed
rangedAttackDelay = rangedAttackTimer
rangedWeapon = [machinePistolBulletObjectEnemy]

canNumber = array_length(rangedWeapon)
taunt = ["Your turn!", "Eat it!", "Did I fire six shots, or only five?"]
text_alpha = 1000
knockdownTimer = 0
mainSprite = asset_get_index("shotgunEnemy")
scorevalue = 200
shotcounter = 11
image_speed = 0