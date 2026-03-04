on(release){
   red_card.gotoAndStop(1);
   if(Number(manle._currentframe) == 1)
   {
      manle.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(manle._currentframe) == 2)
   {
      manle.gotoAndStop(1);
      score_sok.prevFrame();
      score_sok.nextFrame();
      red.prevFrame();
   }
}
