on(release){
   if(Number(long._currentframe) == 1 and Number(zuguri._currentframe) == 1 and Number(doari._currentframe) == 1)
   {
      red_card.gotoAndPlay(2);
      stop();
   }
   else
   {
      play();
   }
}
