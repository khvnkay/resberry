import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import Gallery from 'react-photo-gallery';
import docker from '/app/assets/img/skill_docker.png'
import js from '/app/assets/img/skill_js.png'
import aws from '/app/assets/img/skill_aws.png'
import node from '/app/assets/img/skill_node.png'
import react from '/app/assets/img/skill_react.png'
import { Card, Icon, Button, Header, Image } from 'semantic-ui-react'
require '/app/assets/css/img-zoom.css'

import * as _ from 'lodash'


class Article extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @
    <div className="item-zoom">
      <div className="zoom">
        <Image src={react} size='big'  />
        <div className="item-overlay top"></div>
      </div>
    </div>
export default Article

     


  

