on(release){
   red_card.gotoAndStop(1);
   if(Number(dubu._currentframe) == 1)
   {
      dubu.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(dubu._currentframe) == 2)
   {
      dubu.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
