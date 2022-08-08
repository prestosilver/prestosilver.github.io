import tables

export tables

const
  FILES* = {
    "games-list": staticRead("games-list.html"),
    "about-list": staticRead("school-list.html"),
  }.toTable()
