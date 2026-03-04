on(release){
   red_card.gotoAndStop(1);
   if(Number(mandu.m._currentframe) == 1)
   {
      mandu.m.play();
      doari.play();
      sok_1.s.play();
      check2.gotoAndStop(1);
   }
   else if(Number(mandu.m._currentframe) > 1)
   {
      doari.gotoAndStop(7);
      zuguri.gotoAndStop(1);
      long.gotoAndStop(1);
      check2.gotoAndStop(1);
      sok_1.s.play();
   }
}
