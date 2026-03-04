on(release){
   red_card.gotoAndStop(1);
   if(Number(jang._currentframe) == 1)
   {
      jang.gotoAndStop(2);
      sok_0.gotoAndStop(3);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
   }
   else if(Number(jang._currentframe) == 2)
   {
      jang.gotoAndStop(1);
      sok_0.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
