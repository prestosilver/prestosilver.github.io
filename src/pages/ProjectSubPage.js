import "../index.css";
import projects from '../projects';
import { useParams } from "react-router-dom";
import ReactMarkdown from 'react-markdown';
import React, { useEffect, useState } from "react";
import BreadCrumbs from '../BreadCrumbs'

function GetProject() {
  const params = useParams();

  var param = params["project"];
  var name = projects.filter(({ short }) => short === param)[0].name;
  return name;
}

const PageComponent = ()=> {
  var project = GetProject();

  var file = projects.filter(({ name }) => name === project)[0].file;

  let [ content, setContent] = useState({md: ""});

  useEffect(()=> {
      fetch(file)
          .then((res) => res.text())
          .then((md) => {
              setContent({ md })
          })
  }, [])

  return (
    <div className="post">
      <ReactMarkdown children={content.md} transformImageUri={(src, alt, title) => process.env.PUBLIC_URL + src}/>
    </div>
  )
}

const ProjectSubPage = ({project = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        {GetProject()}
      </h1>
      <PageComponent />
    </div>
  </>
)

export default ProjectSubPage;
