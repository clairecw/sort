 
int[] cheesesticks = new int[20];

int i, j;
 
int min;
int moving;
 
void setup () {
 
  size (500, 500);
 
  for (int k = 0; k < 20; k++) {
    cheesesticks[k] = (int)random(0, 30);
  }
  i = -1;
  j = 0;
}
 
void draw () {
 
  background(0); 
  if (j == 20 && i < 19) {
     i++;
     j = i + 1;
     min = cheesesticks[i];
  }
 
  if (j < 20) {
    if (cheesesticks[j] < min){
      min = cheesesticks[j];
      int temp = cheesesticks[i];
      cheesesticks[i] = cheesesticks[j];
      cheesesticks[j] = temp;
    }
	moving = j;
    j++;
  }
 
  background(255);
  fill(255, 0, 0);
  noStroke();
 
  int x = 10;
  
  for (int l = 0; l < cheesesticks.length; l++) {
    fill(255, 0, 0);
	if (l == moving) fill(160, 0, 200);
	rect(x, 10, 10, cheesesticks[l] * 10);
	x += 20;
  }
 
  fill(0);
  text("Selection Sort", 60, 410);
 
}