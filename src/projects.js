import p1 from "./pages/Images/p2.png";
import p2 from "./pages/Images/p1.png";
import p3 from "./pages/Images/p3.png";
import p4 from "./pages/Images/p4.png";
import p5 from "./pages/Images/p5.png";
import p6 from "./pages/Images/p6.png";
import p7 from "./pages/Images/p7.png";
import p11 from "./pages/Images/p11.png";
import p1text from "./pages/Content/hangover.md"
import p2text from "./pages/Content/markup.md"
import p3text from "./pages/Content/budwm.md"
import p4text from "./pages/Content/gin.md"
import p5text from "./pages/Content/slam.md"
import p6text from "./pages/Content/sandeee.md"
import p7text from "./pages/Content/budland.md"
import p8text from "./pages/Content/bamba.md"
import p9text from "./pages/Content/bamba2.md"
import p10text from "./pages/Content/bamba3.md"
import p11text from "./pages/Content/cloudyflight.md"

import g1 from "./pages/Images/g1.png";
import g2 from "./pages/Images/g2.png";
import g3 from "./pages/Images/g3.png";
import g4 from "./pages/Images/g4.png";
import g5 from "./pages/Images/g5.png";
import g6 from "./pages/Images/g6.png";
import g7 from "./pages/Images/g7.png";
import g1text from "./pages/Content/clicktolose.md"
import g2text from "./pages/Content/bugz.md"
import g3text from "./pages/Content/chesker.md"
import g4text from "./pages/Content/clicktoloseminus.md"
import g5text from "./pages/Content/ip.md"
import g6text from "./pages/Content/finale.md"
import g7text from "./pages/Content/darkmatter.md"

import b1text from "./pages/Content/posts/flashdrive-1.md"
import b2text from "./pages/Content/posts/organize-1.md"

const projects = [
    { short: "bamba-3", kind: 'project', image: null, name: "Bamba3 - The OP one", desc: "Remaking my language to learn more rust.", file: p10text },
    { short: "cloudyflight-1", kind: 'project', image: p11, name: "Cloudy flight", desc: "Cloud rendering to learn rust. How hard could it be. Spoiler: Hard.", file: p11text },
    { short: "darkmatter-1", kind: 'game', image: g7, name: "Dark Matter, Vanquish The Darkness With Your Light!", desc: "A shmup made for 1bit jam", file: g7text },
    { short: "bamba-2", kind: 'project', image: null, name: "Bamba2, A zig based programming language.", desc: "Another attempt at making a llvm based lang.", file: p9text },
    { short: "budland-1", kind: 'project', image: p7, name: "Budland, A Wayland window manager.", desc: "Budwm was too slow so Wayland + Zig.", file: p7text },
    { short: "bamba-1", kind: 'project', image: null, name: "Bamba, A zig based programming language.", desc: "Another attempt at making a llvm based lang.", file: p8text },
    { short: "sandeee-1", kind: 'game', image: p6, name: "Sandeee OS, a programming sandbox", desc: "I liked making programming lanugages so much I decided to make a game that revolves around it.", file: p6text },
    { short: "slam-1", kind: 'project', image: p5, name: "Slam lang", desc: "An Object Oriented Concatanative Programming language.", file: p5text },
    { short: "files-1", kind: 'post', image: null, name: "How I keep my linux filesystem organized to prevent losing files", desc: "I swear, it's not as boring as it sounds.", file: b2text },
    // { short: "flashdrive-1", kind: 'post', image: null, name: "Making a raspberry pi based smart flashdrive", desc: "A flashdrive that sorts its self, impossible? Ask buildroot.", file: b1text},
    { short: "bugz-1", kind: 'game', image: g2, name: "Bugz Bows and Curses", desc: "Bugz Bows and Curses is a procedurally generated rougelike revolving around completing Collections.", file: g2text },
    { short: "chesker-1", kind: 'game', image: g3, name: "Chesker", desc: "Chesker is a chess engine that supports more than chess", file: g3text },
    { short: "hangover-1", kind: 'project', image: p1, name: "Hangover", desc: "Hangover is a full rewrite of gin which uses OpenGl as the graphics backend.", file: p1text },
    { short: "ctl-2", kind: 'game', image: g4, name: "Click To Lose -", desc: "Click To Lose Minus was a remake of my first IDLE game.", file: g4text },
    { short: "finale-1", kind: 'game', image: g6, name: "The Grand Finale", desc: "The not so last game I will make.", file: g6text },
    { short: "gin-1", kind: 'project', image: p4, name: "Gin", desc: "Gin is a game engine written in nim, but the more I look back at it the more I realize it was just a graphics & sound library. Yes it managed the game loop but it didnt manage anything else, resulting in the", file: p4text },
    { short: "ip-1", kind: 'game', image: g5, name: "Infinite Progression", desc: "The G-Mod of Idle games, this allows for easy modding, in python and json. Never worry about finishing your current idle game, because this one never ends!", file: g5text },
    { short: "markup-1", kind: 'project', image: p2, name: "Markup", desc: "Markup was a document compiler which evolved quite a bit due to usage, written origonally in Bash, it was then ported to Python, and then finally nim. The latest version of markup compiled straigt to pdfs. Later in development I even added a plugin system, though limited it was nice.", file: p2text },
    { short: "budwm-1", kind: 'project', image: p3, name: "Budwm", desc: "Budwm is a heavily modified DWM build which relies on the usage of 4 containers", file: p3text },
    { short: "ctl-1", kind: 'game', image: g1, name: "Click To Lose", desc: "Click To Lose was my first IDLE game.", file: g1text },
]

export default projects;
