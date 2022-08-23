import projects from '../projects';
import '../index.css';
import { Link } from "react-router-dom";
import BreadCrumbs from '../BreadCrumbs'
import Frame from '../Frame';

const GamePage = () => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        Games
      </h1>
      
      {projects
        .filter(({kind}) => kind === 'game')
        .map(({image, name, desc, short }, key) => (
        <Frame image={image} kind="game" link={short} title={name} desc={desc} key={key} />
      ))}
    </div>
  </>
)

export default GamePage;
