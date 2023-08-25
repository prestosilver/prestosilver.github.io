import '../index.css';
import projects from '../projects';
import { Link } from "react-router-dom";
import BreadCrumbs from '../BreadCrumbs'
import Frame from '../Frame';

const HomePage = () => (
  <>
    <BreadCrumbs />
    <div className="main">
      <div className="main-center">
        <h1>
          Prestosilver
        </h1>
        <div className="frame-container-noanim">
          <div className="frame-body">
            <h1>
              About
            </h1>
            <p>
              I am a CS major who loves to program. I have many small projects that I work on in my free time, these include games, software, and tools.
              I am fluent in writing in Zig, Nim, Python, Html, CSS, C, Cpp, C#, x86asm, z80asm, Markdown, GDScript, and Slam.
              I also have experience in Forth, Javascript, GLSL, Ruby, Rust, Lua and TS.
              I plan to learn Cobol, Haskell, and GoLang in the future.
              There are many hobbies I enjoy including Crochet, Book binding, Bowling, Papercraft, Doodling, and Sewing.
            </p>
          </div>
        </div>
        <h1>
          Recent
        </h1>
        {projects
          .map(({image, name, desc, kind, short }, key) => (
          <Frame image={image} kind={kind} link={short} title={name} desc={desc} key={key} />
        ))}
      </div>
    </div>
  </>
)

export default HomePage;
