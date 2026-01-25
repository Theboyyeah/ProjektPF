package app

// bibliotka do zamiennia wygodniejszego obiektów sakli na json
import upickle.default._

object Zadanie5 extends cask.MainRoutes{

  @cask.postJson("/Mapa")
  def zliczLiczbyWliscie(lista: List[Int]) = {
    val listaRead = read[List[Int]](listaRead)

    val result = listaRead.groupBy(identity).map { case (k, v) => k -> v.size }
    write(result)

  }



 initialize()



}
