package app

object Zadanie1 extends cask.MainRoutes{


  /*
//1 sposób
  @cask.postJson("/sum")
  def sumLists(List1: Seq[Int],List2: Seq[Int],List3: Seq[Int]): ujson.Value= {
    val sum = List1.zip(List2).zip(List3).map {
      case ((a, b), c) => a + b + c
    }
    //ujson.Obj("Suma" -> sum)
     ujson.Obj("Suma" -> ujson.Arr(sum.map(a => ujson.Num(a)).toSeq*))

  }



/*
drugi sposób bo z pierwszym miałem kilka probleów ale teraz powinno byc wszytsko ok
  @cask.postJson("/sum")
 def sumLists(data: ujson.Value): ujson.Obj= {
   val List1 = data("List1").arr.map(_.num.toInt)
   val List2 = data("List2").arr.map(_.num.toInt)
   val List3 = data("List3").arr.map(_.num.toInt)

   val sum = List1.zip(List2).zip(List3).map {
     case ((a, b), c) => a + b + c
   }
   // ujson.Obj("Suma" -> ujson.Arr(sum.map(ujson.Num(_)).toSeq*))
    ujson.Obj("Suma" -> ujson.Arr(sum.map(a => ujson.Num(a)).toSeq*))

 }



  //funckaj dod testowanai lokalnie czy funkcje dizałaj poprawnie
  @cask.getJson("/testSum")
  def testSumList(): ujson.Value ={
     val data1 = Seq(1,2,3)
     val data2 = Seq(1,2,3)
     val data3 = Seq(1,2,3)
     sumLists(data1,data2,data3)
  }
  @cask.getJson("/testHead")
  def testSetHEad(): ujson.Value = {
    val head = 4
    val List = Seq(1,2,3)
    setHead(List,head)
  }

 */

  @cask.postJson("/setHead")
  def setHead(data: ujson.Value): ujson.Arr={
    val List = data("List").arr.map(_.num.toInt)
    val Head = data("Head").num.toInt
    val listWithHead  = Head +: List
    //ujson.Arr(listWithHead.map(ujson.Num(_)).toSeq*)
    ujson.Arr(listWithHead.map(a => ujson.Num(a)).toSeq*)
  }

*/
  initialize()
}
