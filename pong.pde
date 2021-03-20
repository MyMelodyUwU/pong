// Struct Variables                                              
int score = 0;
float cpuX = 425;
float cpuY = 175;
float userX = 50;
float userY = 50;
float circleX = 249;
float circleY = 249;
int moveUp = 0;
void setup(){
    size(500,500);
}
  
void draw(){
    background(0);
    userMove();
    cpuMove();
    rect(userX, userY, 10,150);
    rect(cpuX, cpuY, 10,150);
    circle(circleX,circleY,25);
}
void userMove(){
    userY = mouseY;
    if(userY >= 350){
        userY = 350;
    }
}
void cpuMove(){
    while(moveUp == 0) {
        cpuY++;
        if(cpuY == 350){
            moveUp = 1;
        }
    }
    while(moveUp == 1) {
        cpuY--;
        if(cpuY == 0){
            moveUp = 0;
        }
    }
}
