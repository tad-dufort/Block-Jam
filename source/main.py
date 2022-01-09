#imports
import pygame, random, sys, time

# * Quick Info:
# * I have notated almos all the code and cleaned up ssome of it, I noted out your old collision system and made my own jank as heck one and I have added sprites but still need to figure out how to remove tha enemy in the top left (also the resolution is now 1650x1200)
# * The game over screen is incomplete and i am still working on it
# TODO: make game over screen stay open till any key pressed then try again

#classes # ? does this need to be here

#sprites
class Player(pygame.sprite.Sprite):
	def __init__(self):
		super().__init__()
		self.image = pygame.image.load('resources\player.png')
		self.rect = self.image.get_rect()
	def update(self, x, y):
		self.rect.bottomleft = [x, y]
  
class Enemy(pygame.sprite.Sprite):
	def __init__(self):
		super().__init__()
		self.image = pygame.image.load('resources\enemy.png')
		self.rect = self.image.get_rect()
	def update(self, x, y):
		self.rect.bottomleft = [x, y]
       
#pygame
pygame.init()

#version check
if pygame.version.vernum < (1, 0):
	print ('Warning, this is an older version of Block Jam which may cause performance issues. (%s)') % pygame.version.ver
	disable_advanced_features = True

#screen setup
WIDTH = 1650
HEIGHT = 1200
icon = pygame.image.load('resources/icon.png')
screen = pygame.display.set_mode((WIDTH, HEIGHT))
#backGround = pygame.image.load('resources/bg.png')
pygame.display.set_caption('Block Jam')
pygame.display.set_icon(icon)
pygame.mouse.set_visible(False)

#colors
BLUE = (0,0,255)
RED = (255,0,0)
GREEN = (0,255,0)
WHITE = (255,255,255)
BLACK = (0,0,0)

#enemy data
enemy_size = 50
gridWidth = WIDTH/enemy_size
enemy_pos = [random.randint(1, gridWidth-1)*enemy_size, 0]
enemy_list = [enemy_pos]
enemy_group = pygame.sprite.Group()
enemy = Enemy()
enemy_group.add(enemy)

#player data
player_size = 50
player_pos = [(WIDTH/2)-(player_size/2), HEIGHT-(player_size*2)]
player_group = pygame.sprite.Group()
player = Player()
player_group.add(player) 
player.update(player_pos[0], player_pos[1])


#some variables
SPEED = 5
game_over = False
end_game = False
score = 0
clock = pygame.time.Clock()
scoreFont = pygame.font.Font("resources/font.otf", 64)
gameOverFont = pygame.font.Font("resources/fontBold.otf", 96)



#level set
def set_level(score, SPEED):
	if score < 150:
		SPEED = 10
	elif score < 300:
		SPEED = 15
	elif score < 600:
		SPEED = 25
	elif score < 1200:
		SPEED = 50
	elif score < 2400:
		SPEED = 75
	elif score < 4800:
		SPEED = 100
	return SPEED	


#enemy functions
def drop_enemies(enemy_list):
	delay = random.random()
	if len(enemy_list) < 30 and delay < 0.05:
		x_pos = random.randint(1, gridWidth-1)*enemy_size
		y_pos = 0
		enemy_list.append([x_pos, y_pos])
		enemy = Enemy()
		enemy_group.add(enemy)

#def draw_enemies(enemy_list, enemy_pos):
# 	for enemy_pos in enemy_list:
# 		pygame.draw.rect(screen, RED, (enemy_pos[0], enemy_pos[1], enemy_size, enemy_size))
		

def update_enemy_positions(enemy_list, score):
	for idx, enemy_pos in enumerate(enemy_list):
		if enemy_pos[1] >= 0 and enemy_pos[1] < HEIGHT:
			enemy_pos[1] += SPEED
			enemy.update(enemy_pos[0], enemy_pos[1])
			enemy_group.draw(screen)

		else:
			enemy_list.pop(idx)	
			score += 1
	return score		

#collision functions
def collision_check(enemy_list, player_pos):
	for enemy_pos in enemy_list:
		if detect_collision(enemy_pos, player_pos):
			return True
	return False

def detect_collision(player_pos, enemy_pos):
	p_x = player_pos[0]
	p_y = player_pos[1]

	e_x = enemy_pos[0]
	e_y = enemy_pos[1]
 
	if (e_x == p_x) or (p_x == e_x):
		if (e_y == p_y+(2*player_size)) or (p_y+(2*player_size) == e_y) or (e_y == p_y+(1*player_size)) or (p_y+(1*player_size) == e_y):
			return True
	return False

	#if (e_x >= p_x and e_x < (p_x + player_size)) or (p_x >= e_x and p_x < (e_x + enemy_size)):
	#	if (e_y >= p_y and e_y < (p_y + player_size)) or (p_y >= e_y and p_y < (e_y + enemy_size)):
	#		return True
	#return False	

#game loop
while not game_over:

	#end game # TODO: make game over screen stay open till any key pressed then try again
	if end_game:
		time.sleep(2.5)
		game_over = True
    
	#exit with cross
	for event in pygame.event.get():
		if event.type == pygame.QUIT:
			sys.exit()	

		#movement
		if event.type == pygame.KEYDOWN:

			x = player_pos[0]
			y = player_pos[1] 

			if event.key == pygame.K_LEFT:
				if x < player_size:
					x = 0
				else:
					x -= player_size
     
			elif event.key == pygame.K_RIGHT:
				if x > WIDTH-(2*player_size):
					x = WIDTH-player_size
				else:
					x += player_size
     
			elif event.key == pygame.K_a:
				if x < player_size:
					x = 0
				else:
					x -= player_size
     
			elif event.key == pygame.K_d:
				if x > WIDTH-(2*player_size):
					x = WIDTH-player_size
				else:
					x += player_size
     
			player_pos = [x, y]
			player.update(player_pos[0], player_pos[1])

	#bg
	#screen.blit(backGround, (0, 0))
	screen.fill(BLACK)

	#score
	ScoreText = "Score:" + str(score)
	ScoreLabel = scoreFont.render(ScoreText, 1, WHITE)
	screen.blit(ScoreLabel, (WIDTH-((WIDTH/2)+125), HEIGHT-1150))
	score = update_enemy_positions(enemy_list, score)
 
	#speed
	SPEED = set_level(score, SPEED)
	
	#draw and drop enemies
	drop_enemies(enemy_list)
	#draw_enemies(enemy_list)
	drop_enemies(enemy_list)
	#draw_enemies(enemy_list)

 
 	#draw player
	#pygame.draw.rect(screen, BLUE, (player_pos[0], player_pos[1], player_size, player_size))
	player_group.draw(screen)
	
	#collision check
	if collision_check(enemy_list, player_pos):
		print(' ')
		print('Final score :', score)
		screen.fill(BLACK)
		screen.blit(ScoreLabel, (WIDTH-((WIDTH/2)+125), HEIGHT-1150))
		GameOverText = "Game Over"
		GameOverLabel = gameOverFont.render(GameOverText, 1, RED)
		screen.blit(GameOverLabel, (WIDTH-((WIDTH/2)+250), HEIGHT-750 ))
		end_game = True
	
 	#clock
	clock.tick(50)
 
	pygame.display.update()