//struct varibles
int score = 0;
float cpuX = 425;
float cpuY = 175;
float userX = 50;
float userY = 50;
int circleX = 249;
int circleY = 249;
int moveUp = 0;
int playerPoints = 0;
int cpuPoints = 0;
int dirX = 1;
int dirY = 1;
int i = 0;
int j = 0;

void setup(){
    size(500,500);
}

void gameLogic(){
    if(playerPoints == 3){
        println("Player wins\n");
        exit();
    }else if(cpuPoints == 3){
        println("CPU wins\n");
        exit();
    }
}

void draw(){
    background(0);
	bgFunction();
	fill(255);
    gameLogic();
    userMove();
    cpuMove();
    ballMove();
    rect(userX, userY, 10,150);
    rect(cpuX, cpuY, 10,150);
    ellipse(circleX,circleY,24,24);
}
void bgFunction() {
	float greenColor = random(0,255);
	fill(0,greenColor,0);
	square(i,j,50);
	i = i + 50;
	if(i == width){
		j += j + 50;
		i = 0;
	}
}
void userMove(){
    userY = mouseY;
    if(userY >= 350){
        userY = 350;
    }
}
void cpuMove(){
    if(moveUp == 0) {
        cpuY++;
        if(cpuY == 350){
            moveUp = 1;
        }
    }
    if(moveUp == 1) {
        cpuY--;
        if(cpuY == 0){
            moveUp = 0;
        }
    }
}

void ballMove(){
    circleX -= dirX;
    circleY -= dirY;
    if (circleX > width || circleX < 0){
        dirX = dirX * -1; 
    }
    if (circleY > height || circleY < 0){
        dirY = dirY * -1;
    }
    if (circleX == userX) {
        dirX = dirX * -1;
    }

    if(circleX <= 50){
        cpuPoints++;
        println("CPU Points++");
        fill(255);
        text(playerPoints, 100, 100,100);
        circleX = 249;
        circleY = 249;
    }else if(circleX >= 450){
        playerPoints++;
        println("Player Points++");
        circleX = 249;
        circleY = 249;
    }
}
