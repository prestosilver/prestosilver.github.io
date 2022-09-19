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
              I am a CS major who develops games as a hobby. I enjoy programming, and have many small projects that I work on in my free time.
              There are many hobbies I enjoy including Coding, Crochet, Book binding, Bowling, Papercraft, Doodling, Sewing, and Eating. 
              I also consider myself to be fluent in writing in Nim, Python, Html, CSS, C, Cpp, and C#.
            </p>
          </div>
        </div>
        <div className="frame-container-noanim">
          <div className="frame-body">
            <h1>
              Contact
            </h1>
            <p className="center">
              <a href="mailto:prestosilver.ptp@gmail.com">Email</a><br/>
              <a href="https://prestosilver.itch.io">Itch</a><br/>
              <a href="https://discord.com/invite/vrVVXktmfV">discord</a><br/>
              <a href="https://ko-fi.com/bob16795">Ko-Fi</a><br/>
              <a href="https://www.youtube.com/channel/UCn3KTSGb3DbbGlS3hYGmsTA">Youtube</a><br/>
              <a href="https://github.com/bob16795">Github</a><br/>
              <a href="https://play.google.com/store/apps/dev?id=7954891124376186534">Google Play</a><br/>
              <a href="https://store.steampowered.com/dev/presosilver">Steam</a><br/>
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
