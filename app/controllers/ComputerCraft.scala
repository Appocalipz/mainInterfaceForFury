package controllers

import play.api.mvc._

class ComputerCraft extends Controller {
  def get (id: String, index: String) = Action {
    val lines = scala.io.Source.fromFile("assets/get/"+id+"/"+index+".lua").mkString("\n")
    Ok(views.html.index())
  }
}




