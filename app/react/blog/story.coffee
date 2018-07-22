import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import Gallery from 'react-photo-gallery';
import docker from '/app/assets/img/skill_docker.png'
import js from '/app/assets/img/skill_js.png'
import aws from '/app/assets/img/skill_aws.png'
import node from '/app/assets/img/skill_node.png'
import react from '/app/assets/img/skill_react.png'
import { Card, Icon, Button } from 'semantic-ui-react'
require '/app/assets/css/blog.css'

import * as _ from 'lodash'

async = require('async')
extra = (
  <a>
    <Icon name='user' />
    16 Friends
    <Button>Read More </Button>
  </a>
)
class Story extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @
    <div className="blog-card">
      <Card
        image={node}
        header='Elliot Baker'
        meta='Friend'
        href='#card-example-link-card'
        description='Elliot is a sound engineer living in Nashville who enjoys playing guitar and hanging with his cat.'
        extra={extra}
      />
    </div>
export default Story

     


  

