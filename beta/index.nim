## This demo shows how you can develop your own stateful components with Karax.

import karax/vdom, karax/vstyles, karax/karax, karax/karaxdsl, karax/jdict, karax/jstrutils, karax/kdom
import strutils
import files/all

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
  
  Bottom = ref object of Vcomponent
    page: string
  
  Button = ref object of Vcomponent
    page: string

var
  GithubIcon: SocialImage
  DiscordIcon: SocialImage
  SteamIcon: SocialImage
  PlayIcon: SocialImage

  CarouselRef: Carousel
  BottomRef: Bottom
  DownButton: Button

const
  data = [
    SocialImageData(icon: "fa-brands fa-github",  link: "http://github.com/bob16795"),
    SocialImageData(icon: "fa-brands fa-itch-io", link: "http://prestosilver.itch.io/"),
    SocialImageData(icon: "fa-brands fa-steam-symbol", link: "https://store.steampowered.com/search/?developer=Prestosilver"),
    SocialImageData(icon: "fa-brands fa-google-play", link: "https://play.google.com/store/apps/dev?id=7954891124376186534&hl=en&gl=US"),
  ]
  labels: seq[cstring] = @[
    cstring"Links",
    cstring"Games",
    cstring"About"
  ]

proc renderImage(x: VComponent): VNode =
  var comp = x.SocialImage
  result = buildHtml(tdiv(class = "icon", style = style(StyleAttr.display, "inline"))):
    a(class = "resize", href = comp.link):
      italic(class = comp.icon)

template idx(i: int, total): int =
  ((i mod total) + total) mod total

proc loadUrl(url: string) =
  var loc = window.location.href
  window.location.replace(loc.split("#")[0] & "#" & url)
  BottomRef.page = "#" & url
  DownButton.page = "#" & url 
  CarouselRef.markDirty()
  BottomRef.markDirty()
  DownButton.markDirty()
  redraw()

proc load(self: Carousel, idx: int) =
  self.counter = idx
  loadUrl($self.list[idx(self.counter, len self.list)])

proc renderCarousel(x: VComponent): VNode =
  var self = x.Carousel
  
  return buildHtml(tdiv()):
    tdiv(class = "container"):
      tdiv(class = "flex-child"):
        button(class = "left icon resize", onclick = proc() = load(self, self.counter - 1)):
          italic(class = "fa-solid fa-angle-left")
      tdiv(class = "flex-child label"):
        text self.list[idx(self.counter, len self.list)]
      tdiv(class = "flex-child"):
        button(class = "right icon resize", onclick = proc() = load(self, self.counter + 1)):
          italic(class = "fa-solid fa-angle-right")

proc renderButton(x: VComponent): VNode =
  var self = x.Button
 
  echo self.page
  return buildHtml(tdiv()):
    if self.page in ["#Games", "#Games-List"]:
      tdiv(class = "center icons resize"):
        button(class = "icon b resize", onclick = proc() = loadUrl("Games-List")):
          italic(class = "fa-solid fa-angle-up")
    elif self.page in ["#About", "#About-List"]:
      tdiv(class = "center icons resize"):
        button(class = "icon a resize", onclick = proc() = loadUrl("About-List")):
          italic(class = "fa-solid fa-angle-up")

proc renderBottom(x: VComponent): VNode =
  var self = x.Bottom

  return buildHtml(tdiv()):
    if self.page == "#Games-List":
      tdiv(class = "card", style = style(StyleAttr.marginTop, "0%")):
        tdiv(style = style(StyleAttr.color, "#ffffff")):
          tdiv(class = "center title"):
            button(class = "icon", onclick = proc() = loadUrl("Games")):
              italic(class = "fa-solid fa-angle-down")
          tdiv(class = "scroll"):
            verbatim(FILES["games-list"])
    else:
      tdiv(class = "card", style = style(StyleAttr.marginTop, "100%")):
        tdiv(style = style(StyleAttr.color, "#ffffff")):
          tdiv(class = "center title"):
            button(class = "icon", onclick = proc() = loadUrl("Games")):
              italic(class = "fa-solid fa-angle-down")
          tdiv(class = "scroll"):
            verbatim(FILES["games-list"])
    if self.page == "#About-List":
      tdiv(class = "card", style = style(StyleAttr.marginTop, "0%")):
        tdiv(style = style(StyleAttr.color, "#ffffff")):
          tdiv(class = "center title"):
            button(class = "icon", onclick = proc() = loadUrl("About")):
              italic(class = "fa-solid fa-angle-down")
          tdiv(class = "scroll"):
            verbatim(FILES["about-list"])
    else:
      tdiv(class = "card", style = style(StyleAttr.marginTop, "100%")):
        tdiv(style = style(StyleAttr.color, "#ffffff")):
          tdiv(class = "center title"):
            button(class = "icon", onclick = proc() = loadUrl("About")):
              italic(class = "fa-solid fa-angle-down")
          tdiv(class = "scroll"):
            verbatim(FILES["about-list"])

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

proc bottom(nref: var Bottom, page: string): Bottom =
  if nref == nil:
    nref = newComponent(Bottom, renderBottom)
    nref.page = page
    return nref
  else:
    return nref

proc downButton(nref: var Button, page: string): Button =
  if nref == nil:
    nref = newComponent(Button, renderButton)
    nref.page = page
    return nref
  else:
    return nref

proc createDom(data: RouterData): VNode =
  var
    tmp: string = $data.hashPart
    currentPage = tmp.strip(chars = {'/'})
  
  if currentPage == "":
    currentPage = "#Links"

  var
    carouselIdx = case currentPage:
      of "#Links": 0
      of "#Games": 1
      of "#Games-List": 1
      of "#About": 2
      of "#About-List": 2
      else: 0

  document.title = case currentPage:
    of "#Links": "Prestosilver - Links"
    of "#Games": "Prestosilver - Games"
    of "#About": "Prestosilver - About"
    of "#Games-List": "Prestosilver - Games"
    of "#About-List": "Prestosilver - About"
    else: "Prestosilver"
    
  result = buildHtml(table):
    tdiv(style = style(StyleAttr.color, "#ffffff")):
      tdiv(class = "center title"):
        text "Prestosilver"
      if currentPage in ["#Links", "#Games", "#Games-List" , "#About", "#About-List"]:
        carousel(CarouselRef, carouselIdx)
      if currentPage == "#Links":
        tdiv(class = "center icons"):
          socialImage(GithubIcon, 0)
          socialImage(DiscordIcon, 1)
          socialImage(SteamIcon, 2)
          socialImage(PlayIcon, 3)
      elif currentPage in ["#Games", "#Games-List" , "#About", "#About-List"]:
        downButton(DownButton, currentPage)
      else:
        tdiv(class = "center"):
          tdiv(class = "label"):
            text "404"
        tdiv(class = "center icons"):
          button(class = "icon", onclick = proc() = loadUrl("Links")):
            italic(class = "fa-solid fa-angle-left")
      bottom(BottomRef, currentPage)

setRenderer createDom
