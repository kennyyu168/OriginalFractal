
public int n=20;
public void setup()
{
	size(500,500);
}
public void draw()
{

	frameRate(15);
	background(0);
	//translate(width/2,height/2);
	//rotate(PI/3.0);
	fractal(width/2,height/2,n);
	if(n<600)
		n=n+10;
	else		
		n=20;
}
public void fractal(float x, float y, float siz)
{
	if(siz<20)
	{
		fill(0);
		stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		strokeWeight(2);
		if(mousePressed==true)
			ellipse(x,y,siz,siz);
		else
		{
			rect(x,y,siz,siz);
			triangle(x-siz/2,y+siz,x,y,x+siz/2,y+siz);
		}		
	}
	else
	{
		fractal(x+siz/2,y,siz/2);
		fractal(x-siz/2,y,siz/2);
		fractal(x-siz/2,y-siz/2,siz/2.5);
		fractal(x+siz/2,y-siz/2,siz/2.5);
		fractal(x-siz/2,y+siz/2,siz/2.5);
		fractal(x+siz/2,y+siz/2,siz/2.5);
		fractal(x,y+siz/2,siz/2);
		fractal(x,y-siz/2,siz/2);
	}
}