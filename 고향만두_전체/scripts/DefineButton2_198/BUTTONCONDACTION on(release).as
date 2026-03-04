on(release){
   red_card.gotoAndStop(1);
   if(Number(oil._currentframe) == 1)
   {
      oil.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(oil._currentframe) == 2)
   {
      oil.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
