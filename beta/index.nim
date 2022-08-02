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

proc renderCarousel(x: VComponent): VNode =
  var self = x.Carousel
  
  return buildHtml(tdiv()):
    tdiv(class = "container"):
      tdiv(class = "flex-child"):
        button(class = "icon"):
          text "<"
          proc onClick(v: Event, n: VNode) =
            self.counter -= 1
            markDirty(self)
            redraw()
      tdiv(class = "flex-child label"):
        text self.list[self.counter mod len self.list]
      tdiv(class = "flex-child"):
        button(class = "icon"):
          text ">"
          proc onClick(v: Event, n: VNode) =
            self.counter += 1
            markDirty(self)
            redraw()

proc carousel(nref: var Carousel): Carousel =
  if nref == nil:
    nref = newComponent(Carousel, renderCarousel)
    nref.list = labels
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

proc createDom(): VNode =
  result = buildHtml(table):
    tdiv(style = style(StyleAttr.color, "#ffffff")):
      tdiv(style = style(StyleAttr.color, "#ffffff")):
        tdiv(style = style(StyleAttr.fontSize, "10rem")):
          text "Prestosilver"
        carousel(CarouselRef)
        tdiv(class = "center icons"):
          socialImage(GithubIcon, 0)
          socialImage(DiscordIcon, 1)
    

setRenderer createDom
