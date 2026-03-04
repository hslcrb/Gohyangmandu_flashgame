on(release){
   if(Number(yongi._currentframe) == 1)
   {
      nextFrame();
      yongi.gotoAndStop(3);
      w.gotoAndStop(1);
   }
   else if(Number(yongi._currentframe) > 1)
   {
      yongi.gotoAndStop(3);
      w.gotoAndStop(1);
   }
   l_1._y = 132.5;
   l_2._y = 144.2;
   l_3._y = 157.1;
   z_1._y = 132.5;
   z_2._y = 144.2;
   z_3._y = 157.1;
   d_1._y = 159.7;
   d_2._y = 158.7;
   d_3._y = 124.7;
}
