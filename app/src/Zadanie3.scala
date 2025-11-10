package app

import app.Zadanie1.initialize

object Zadanie3 extends cask.MainRoutes{

  @cask.postJson("/usuwanie")
  def usuwanie(data: ujson.Value): ujson.Value = {
    val lista = data("List").arr.map(_.num.toInt).toList

    val wynik: List[Int] = lista match {
      case Seq() => Nil
      case _ +: reszta => reszta.toList
    }


    ujson.Obj("Wynik usuwania elemntu z listy" -> ujson.Arr(wynik.map(a => ujson.Num(a)).toSeq *))
  }

  /*
  def usuwanie[A](lista: Seq[A]): List[A] = lista match {
    case Seq() => Nil
    case _+: resztaListy => resztaListy.toList
    }

   */



  initialize()


}
