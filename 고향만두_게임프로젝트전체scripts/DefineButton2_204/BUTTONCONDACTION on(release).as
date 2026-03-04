on(release){
   red_card.gotoAndStop(1);
   if(Number(ong._currentframe) == 1)
   {
      ong.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
      if(Number(sok_0._currentframe) == 1)
      {
         sok_0.gotoAndStop(4);
      }
   }
   else if(Number(ong._currentframe) == 2)
   {
      ong.gotoAndStop(1);
      sok_0.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
