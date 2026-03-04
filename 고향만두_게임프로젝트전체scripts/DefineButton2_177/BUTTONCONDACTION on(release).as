on(release){
   red_card.gotoAndStop(1);
   if(Number(bigpa._currentframe) == 1)
   {
      bigpa.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(bigpa._currentframe) == 2)
   {
      bigpa.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
