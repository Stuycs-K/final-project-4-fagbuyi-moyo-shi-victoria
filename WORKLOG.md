# Work Log

## GROUP MEMBER 1

### date 5/23

Worked on spaceship class and wasd movement using keyPressed and keyReleased. Trying to get physics to work and for movement to show up on screen.

### date 5/24
got spaceship png to move with wasd. Gave up on velocity and just used pixels. Removed spaceship png background

### date 5/26
created Enemy and Player subclasses, also E1, E2, E3 subclasses and transfered code from main spaceship classs to indivdual classes, branched off to work on enemies

### date 5/27
loaded in enemy spaceship, problem with nonstatic variables, not sure how to fix

### date 5/28
fixed problem with non static variables and enemy spawn, added enemy png and random movement for enemies, stuck on timing

### date 5/28
fixed timing issue for movement, random movement in enemies now stays within borders, working on multiple enemies

### date 5/29
got enemies to shoot back on a timer, fixed bullet spawn rate

### date 5/30
worked on spawning multiple enemies,created enemy arraylist to keep track and edited draw to make it apply to all enemies

### date 5/31
made enemies not overlap as much with borders, make them stay in top half of screen, worked on changing png for bullets

### date 6/1
finished changing bullet pngs for enemy and player, removed background from enemy, made player unable to go out of bounds, fixed player shooting issue (can shoot while moving now and no more spamming)

### date 6/2
added moving background with stars, fixed enemy shooting bullet hit box not registering 

### date 6/3
tried to fix enemy shooting, make it shoot 3 bullets every 2 seconds, didnt work

### date 6/4
worked on enemy 2, which became enemy 3 cause too op

### date 6/5
generalize despawn function and filled in e3 class, got it to shoot, remove png background

### date 6/6
modify e3 shooting, created bullets that tracks player, worked on rotation of png

### date 6/8
finshed e2 and e3, tried to fix lag caused by e3

### date 6/9
finished final boss, created different waves, created infinite waves mode and menu screen, added powerups 



## GROUP MEMBER 2 (moyo)

### date 05/22

tried out the branch and merging kinda
created processing folder with run, Spaceship, and bullet files
made a placeholder spaceship display on screen (a circle)
tried to make the bullet's move() but can yet asscces the spaceship's position

### date 05/24

bullet png spawns at spaceship postion, moves in a straight line.

### date 05/25

bullet detects spaceship and deals it damage. added another bullet construtor so you can specify damage.

### date 05/26

spaceship spawns bullets, but only one will move at a time. and speed keeps increasing with each bullet spawned. bullets should probably die on imapct too.

### date 05/27

merged with main. got multiple bullets to sapwn but they dont move.

### date 05/28

got multiple bullets to move at once, changed bullet orientation, made a health bar for player, started fixing bullet despawning

### date 05/29

bullets fully disaapear and deal damage to enemy, started moving background

### date 05/30
merged, fixed bullet dectection range, made it so bullets actully stop dealing damage after despawing, add bullets arraylist as spaceship class variable

### date 05/31
troubleshot making hitbox smaller

### date 06/02
worked on hitbox more and fixed enemies taking damage

### date 06/03
added death mechanic and a endscreen shows score

### date 06/04
merged and worked on fixing enemy and player hitbox since it somehow got messed up

### date 06/05
fixing player's bullets

### date 06/07
got bullets to actaully stop dealing damage

### date 06/08
troubleshoot the lag with third phase enemies, and finizalied player's hitbox

### date 06/09
finalized all enenmy hitboxes, added another tab so setup tab cleaner, added a uhhh powerup, worked on readme, uml protoype stuff, cleaned up files, reconfigured healthbar