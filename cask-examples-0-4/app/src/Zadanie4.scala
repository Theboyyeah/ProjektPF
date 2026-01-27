package app

object Zadanie4 extends cask.MainRoutes {

  @cask.postJson("/AppendZadanie4")
  def appendZadanie4(Position: Int,List: Seq[Int],value: Int): ujson.Value ={
    val result = if (Position < 0 || Position > List.length) None
    else Some(List.take(Position) ++ Seq(value) ++ List.drop(Position))

   // ujson.Arr(result.map(a => ujson.Num(a)).toSeq*)
    result match



  }



}


