/*
I dette eksempel bevæger cirklen sig vertikalt på skærmen. 
Når den når kanten af vinduet, ændrer den retning og fortsætter i den modsatte retning. 
Der kan eksperimentere med værdierne for at ændre hastigheden, størrelsen på cirklen eller tilføje y-bevægelse for at gøre øvelsen mere interessant.
*/

int posX = 100;  // Placering x. Værdien er startposition
int posY = 100;  // Placering y. Værdien er startposition
int speedX = 2;  // Hastighed i x-retning (Pixel/frame)

void setup() {
  size(400, 400);
}

void draw() {
  background(255); // Hvid baggrund (Når der kun er en værdi, så er det i grå skala 0-255)
  ellipse(posX, posY, 50, 50); // Tegn en cirkel
  posX = posX + speedX;  // Opdater x-position baseret på hastighed
  if (posX > width - 25){// Check for kollision med højre kant
    speedX = -speedX;    // Ændr retning og hastighed
    posX = width - 25;   // Flyt cirklen væk fra kanten for at undgå konstant kollision
  }else if (posX < 25){  // Check for kollision med venstre kant
    speedX = -speedX;    // Ændr retning og hastighed
    posX = 25;           // Flyt cirklen væk fra kanten for at undgå konstant kollision
  }
}
