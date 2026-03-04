on(release){
   red_card.gotoAndStop(1);
   if(Number(bechu._currentframe) == 1)
   {
      bechu.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(bechu._currentframe) == 2)
   {
      bechu.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
