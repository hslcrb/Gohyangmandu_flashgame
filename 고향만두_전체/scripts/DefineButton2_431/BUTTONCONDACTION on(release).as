on(release){
   red_card.gotoAndStop(1);
   if(Number(mandu.m._currentframe) == 1)
   {
      mandu.m.play();
      zuguri.play();
      check2.gotoAndStop(2);
      sok_1.s.play();
   }
   else if(Number(mandu.m._currentframe) > 1)
   {
      zuguri.gotoAndStop(7);
      long.gotoAndStop(1);
      doari.gotoAndStop(1);
      check2.gotoAndStop(2);
      sok_1.s.play();
   }
}
