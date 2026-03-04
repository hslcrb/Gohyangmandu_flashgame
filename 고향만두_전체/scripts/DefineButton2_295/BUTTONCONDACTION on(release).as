on(release){
   if(Number(garu._currentframe) == 1 or Number(water._currentframe) == 1)
   {
      red_card.gotoAndPlay(2);
      stop();
   }
   else
   {
      play();
   }
}
