import "../index.css";
import BreadCrumbs from '../BreadCrumbs';
import PageComponent from '../PageComponent';



const PostSubPage = ({post = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <PageComponent filter="post"/>
    </div>
  </>
)

export default PostSubPage;
