public void setup(){
	size(700,700);
	rectMode(CENTER);
}
public void draw(){
	background(0);
	myFractal(350,350,350);
}
public void myFractal(int x, int y, int siz){
	//draw a rectangle centered at (x,y) of "size" siz
	rect(x,y,siz,siz);
	if(siz > 10)
	{
		myFractal(x-siz/2,y-siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y-siz/2,siz/2);
	}
}
