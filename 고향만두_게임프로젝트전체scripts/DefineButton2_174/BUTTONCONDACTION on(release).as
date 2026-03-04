on(release){
   red_card.gotoAndStop(1);
   if(Number(cheese._currentframe) == 1)
   {
      cheese.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
   }
   else if(Number(cheese._currentframe) == 2)
   {
      cheese.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
