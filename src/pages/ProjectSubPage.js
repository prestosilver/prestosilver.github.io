import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';

const ProjectSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <PageComponent filter="project"/>
    </div>
  </>
)


export default ProjectSubPage;
