on(release){
   red_card.gotoAndStop(1);
   if(Number(mayo._currentframe) == 1)
   {
      mayo.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
   }
   else if(Number(mayo._currentframe) == 2)
   {
      mayo.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
