on(release){
   red_card.gotoAndStop(1);
   if(Number(egg._currentframe) == 1)
   {
      egg.gotoAndStop(2);
      score_sok.prevFrame();
      score_sok = Number(score_sok) - 1;
      red.nextFrame();
   }
   else if(Number(egg._currentframe) == 2)
   {
      egg.gotoAndStop(1);
      score_sok.nextFrame();
      red.prevFrame();
   }
}
