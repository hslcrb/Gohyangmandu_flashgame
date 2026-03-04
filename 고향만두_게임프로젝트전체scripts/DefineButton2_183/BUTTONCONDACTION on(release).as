on(release){
   red_card.gotoAndStop(1);
   if(Number(pepper._currentframe) == 1)
   {
      pepper.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
   }
   else if(Number(pepper._currentframe) == 2)
   {
      pepper.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
