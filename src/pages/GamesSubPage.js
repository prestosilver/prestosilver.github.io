import "../index.css";
import games from '../projects';
import { useParams } from "react-router-dom";
import ReactMarkdown from 'react-markdown';
import React, { useEffect, useState } from "react";
import BreadCrumbs from '../BreadCrumbs'

function GetGame() {
  const params = useParams();

  var param = params["game"];
  var name = games.filter(({ short }) => short === param)[0].name;
  return name;
}

const PageComponent = () => {
  let [ content, setContent] = useState({md: ""});

  var game = GetGame();

  var file = games.filter(({ name }) => name === game)[0].file;
  
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

const GameSubPage = ({game = ""}) => (
  <>
    <BreadCrumbs />
    <div className="main">
      <h1>
        {GetGame()}
      </h1>
      <PageComponent />
    </div>
  </>
)

export default GameSubPage;
