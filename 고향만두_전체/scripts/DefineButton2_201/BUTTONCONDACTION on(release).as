on(release){
   red_card.gotoAndStop(1);
   if(Number(ace._currentframe) == 1)
   {
      ace.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
      if(Number(sok_0._currentframe) == 1)
      {
         sok_0.gotoAndStop(2);
      }
   }
   else if(Number(ace._currentframe) == 2)
   {
      ace.gotoAndStop(1);
      sok_0.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
