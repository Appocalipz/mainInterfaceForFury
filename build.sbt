name := "MineCraft"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.7"

includeFilter in (Assets, LessKeys.less) := "*.less"

excludeFilter in (Assets, LessKeys.less) := "_*.less"

routesGenerator := InjectedRoutesGenerator

libraryDependencies ++= Seq(
  jdbc,
  cache,
  ws,
  specs2 % Test
)