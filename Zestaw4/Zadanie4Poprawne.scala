package app
object Zadanie4Poprawne extends cask.MainRoutes {
  /*
  @cask.get("/")
  def hello() =
    "Hello World!"

  @cask.post("/do-thing")
  def doThing(request: cask.Request) =
    request.text().reverse

  initialize()

   */


  def append(Position: Int, value: Int, list: Seq[Int]): Option[Seq[Int]] =
    if (Position < 0 || Position > list.length) None
    else Some(list.take(Position) ++ Seq(value) ++ list.drop(Position))

  @cask.post("/append")
  def endpoint(req: cask.Request): ujson.Value = {
    val json = ujson.read(req.text())
    val index = json("Position").num.toInt
    val value = json("value").num.toInt
    val list = json("list").arr.map(_.num.toInt).toSeq


    ujson.Arr.from(append(index, value, list).getOrElse(list))

  }
  initialize()
}