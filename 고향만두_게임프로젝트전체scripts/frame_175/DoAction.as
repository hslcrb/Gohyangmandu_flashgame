stop();
if(Number(check2._currentframe) == 1)
{
   if(Number(yongi._currentframe) == 2 or Number(yongi._currentframe) == 4)
   {
      if(Number(check1._currentframe) == 4 and Number(score_sok) >= 8)
      {
         score.gotoAndStop(1);
         gotoAndPlay(177);
      }
      else
      {
         score.gotoAndStop(2);
      }
   }
   else if(Number(yongi._currentframe) == 3)
   {
      score.gotoAndStop(2);
   }
}
if(Number(check2._currentframe) == 2)
{
   if(Number(yongi._currentframe) == 2)
   {
      if(Number(check1._currentframe) == 4 and Number(score_sok) >= 8)
      {
         score.gotoAndStop(1);
         gotoAndPlay(177);
      }
      else
      {
         score.gotoAndStop(2);
      }
   }
   else
   {
      score.gotoAndStop(2);
   }
}
if(Number(check2._currentframe) == 3)
{
   if(Number(yongi._currentframe) == 3)
   {
      if(Number(check1._currentframe) == 4 and Number(score_sok) >= 8)
      {
         score.gotoAndStop(1);
         gotoAndPlay(177);
      }
      else
      {
         score.gotoAndStop(2);
      }
   }
   else
   {
      score.gotoAndStop(2);
   }
}
