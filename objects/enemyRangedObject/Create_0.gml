maxEnemyHP = 50
currentEnemyHP = maxEnemyHP

dropItem = -1

enemyFarChaseDistance = 450
enemyCloseChaseDistance = 200
enemyFarSpeed = 4
enemyCloseSpeed = 1
enemySpeed = enemyFarSpeed

rangedAttackTimer = 100
rangedAttackDelay = rangedAttackTimer
rangedWeapon = [canOfCornObject, canOfBeansObject]

canNumber = array_length(rangedWeapon)
taunt = ["I hope this isnt too corny", "Im gonna bean you", ""]
text_alpha = 1000
knockdownTimer = 0
mainSprite = asset_get_index("canEnemy")
scorevalue = 150