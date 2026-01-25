package app

import ujson._


object Zadanie5 extends cask.MainRoutes {

  @cask.post("/count")
  def zliczanieLiczb(lista: cask.Request): ujson.Value = {
    val numbers = ujson.read(lista.text()).arr.map(_.num.toInt).toList

    val result = numbers.groupBy(identity).map { case (number, list) => (number.toString, Num(list.length)) }

    Obj.from(result)
  }

  initialize()
}