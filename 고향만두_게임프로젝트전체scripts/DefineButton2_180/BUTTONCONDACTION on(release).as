on(release){
   red_card.gotoAndStop(1);
   if(Number(yangpa._currentframe) == 1)
   {
      yangpa.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(yangpa._currentframe) == 2)
   {
      yangpa.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
