on(release){
   if(Number(yongi._currentframe) == 1)
   {
      nextFrame();
      yongi.gotoAndStop(2);
      w.gotoAndStop(2);
   }
   else if(Number(yongi._currentframe) > 1)
   {
      yongi.gotoAndStop(2);
      w.gotoAndStop(2);
   }
   l_1._y = 102.5;
   l_2._y = 114.2;
   l_3._y = 127.1;
   z_1._y = 102.5;
   z_2._y = 114.2;
   z_3._y = 120;
   d_1._y = 120;
   d_2._y = 120;
   d_3._y = 89.8;
}
