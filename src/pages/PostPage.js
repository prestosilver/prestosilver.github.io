import projects from '../projects';
import '../index.css';
import { Link } from "react-router-dom";
import BreadCrumbs from '../BreadCrumbs'
import Frame from '../Frame';

const PostPage = () => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        Posts
      </h1>
      
      {projects
        .filter(({kind}) => kind === 'post')
        .map(({image, name, desc, short }, key) => (
        <Frame image={image} kind="post" link={short} title={name} desc={desc} key={key} />
      ))}
    </div>
  </>
)

export default PostPage;
