maxEnemyHP = 40
currentEnemyHP = maxEnemyHP

dropItem = -1

enemyFarChaseDistance = 450
enemyCloseChaseDistance = 200
enemyFarSpeed = 4
enemyCloseSpeed = 1
enemySpeed = enemyFarSpeed

rangedAttackTimer = 1 * room_speed
rangedAttackDelay = rangedAttackTimer
rangedWeapon = [machinePistolBulletObjectEnemy]

canNumber = array_length(rangedWeapon)
taunt = ["Your turn!", "Pistol? More like...ah, nevermind.", "Did I fire six shots, or only five?"]
text_alpha = 1000
knockdownTimer = 0
mainSprite = asset_get_index("pistolEnemy")
scorevalue = 200
shotcounter = 11