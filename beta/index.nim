## This demo shows how you can develop your own stateful components with Karax.

import karax/vdom, karax/vstyles, karax/karax, karax/karaxdsl, karax/jdict, karax/jstrutils, karax/kdom

type
  SocialImageData = object
    icon: string
    link: string

  SocialImage = ref object of VComponent
    icon: string
    link: string

  Carousel = ref object of Vcomponent
    list: seq[cstring]
    counter: int

var
  GithubIcon: SocialImage
  DiscordIcon: SocialImage
  CarouselRef: Carousel

const
  data = [
    SocialImageData(icon: "fa-brands fa-github",  link: "http://github.com/bob16795"),
    SocialImageData(icon: "fa-brands fa-itch-io", link: "http://prestosilver.itch.io/"),
  ]
  labels: seq[cstring] = @[
    cstring"Links",
    cstring"Games"
  ]

proc renderImage(x: VComponent): VNode =
  var comp = x.SocialImage
  result = buildHtml(tdiv(class = "icon", style = style(StyleAttr.display, "inline"))):
    a(href = comp.link):
      italic(class = comp.icon)

template idx(i: int, total): int =
  ((i mod total) + total) mod total

proc load(self: Carousel, idx: int) =
  self.counter += 1
  var loc = window.location.href
  window.location.replace(loc.split("#")[0] & "#" & self.list[idx(self.counter, len self.list)])
  markDirty(self)
  redraw()

proc renderCarousel(x: VComponent): VNode =
  var self = x.Carousel
  
  return buildHtml(tdiv()):
    tdiv(class = "container"):
      tdiv(class = "flex-child"):
        button(class = "left icon", onclick = proc() = load(self, self.counter - 1)):
          italic(class = "fa-solid fa-angle-left")
      tdiv(class = "flex-child label"):
        text self.list[idx(self.counter, len self.list)]
      tdiv(class = "flex-child"):
        button(class = "right icon", onclick = proc() = load(self, self.counter + 1)):
          italic(class = "fa-solid fa-angle-right")

proc carousel(nref: var Carousel, idx: int): Carousel =
  if nref == nil:
    nref = newComponent(Carousel, renderCarousel)
    nref.list = labels
    nref.counter = idx
    return nref
  else:
    return nref

proc socialImage(nref: var SocialImage, id: int): SocialImage =
  if nref == nil:
    nref = newComponent(SocialImage, renderImage)
    nref.icon = data[id].icon
    nref.link = data[id].link
    return nref
  else:
    return nref

proc createDom(data: RouterData): VNode =
  var
    currentPage = "root"
    carouselIdx = 0
  if data.hashPart.startsWith("#Games"):
    currentPage = "games"
    carouselIdx = 1
  if data.hashPart.startsWith("#Links"):
    currentPage = "root"
    carouselIdx = 0
    
  result = buildHtml(table):
    tdiv(style = style(StyleAttr.color, "#ffffff")):
      tdiv(style = style(StyleAttr.color, "#ffffff")):
        tdiv(class = "center title"):
          text "Prestosilver"
        carousel(CarouselRef, carouselIdx)
        if currentPage == "root":
          tdiv(class = "center icons"):
            socialImage(GithubIcon, 0)
            socialImage(DiscordIcon, 1)
        if currentPage == "games":
          tdiv(class = "center icons"):
            socialImage(GithubIcon, 0)
  

setRenderer createDom
