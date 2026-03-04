if(Number(_root.check1._currentframe) != 4)
{
   s3.gotoAndStop(2);
}
if(Number(_root.score_sok) < 8)
{
   s1.gotoAndStop(2);
}
if(Number(_root.check2._currentframe) == 1)
{
   if(Number(_root.yongi._currentframe) == 3)
   {
      s2.gotoAndStop(2);
   }
}
if(Number(_root.check2._currentframe) == 2)
{
   if(Number(_root.yongi._currentframe) == 3 or Number(_root.yongi._currentframe) == 4)
   {
      s2.gotoAndStop(2);
   }
}
if(Number(_root.check2._currentframe) == 3)
{
   if(Number(_root.yongi._currentframe) == 2 or Number(_root.yongi._currentframe) == 4)
   {
      s2.gotoAndStop(2);
   }
}
