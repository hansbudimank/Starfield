class Star{
  float x;
  float y;
  float z;
  
  float pz;
  
   Star(){
     x= random(-15,15);
     y= random(-15,15);
     z= random(width/2);
     pz=z;
   } //<>//
   
   void update(){
     z=z-speed;
     if(z<1){
       z= random(width/2);

       pz=z;
     }
   }
   void show(){
   fill(255);
   noStroke();
   float sx=map(x/z,0,1,0,width);
   float sy=map(y/z,0,1,0,height);

   float r=map(z,0,width,2,0);
   ellipse(sx,sy,r,r);
   
   float px=map(x/pz,0,1,0,width);
   float py=map(y/pz,0,1,0,height);
   
   stroke(255);
   line(px,py,sx,sy);
   }
}
