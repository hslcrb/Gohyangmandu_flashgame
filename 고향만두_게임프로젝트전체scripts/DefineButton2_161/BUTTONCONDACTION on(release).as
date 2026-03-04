on(release){
   red_card.gotoAndStop(1);
   if(Number(pig._currentframe) == 1)
   {
      pig.gotoAndStop(2);
      score_sok.nextFrame();
      score_sok = Number(score_sok) + 1;
      red.nextFrame();
   }
   else if(Number(pig._currentframe) == 2)
   {
      pig.gotoAndStop(1);
      score_sok.prevFrame();
      red.prevFrame();
   }
}
