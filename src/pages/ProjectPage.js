import projects from '../projects';
import '../index.css';
import { Link } from "react-router-dom";
import BreadCrumbs from '../BreadCrumbs'
import Frame from '../Frame';

const ProjectPage = () => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        Projects
      </h1>
      
      {projects
        .filter(({kind}) => kind === 'project')
        .map(({image, name, desc, short }, key) => (
        <Frame image={image} kind="project" link={short} title={name} desc={desc} key={key} />
      ))}
    </div>
  </>
)

export default ProjectPage;
