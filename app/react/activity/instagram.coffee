import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import Gallery from 'react-photo-gallery';
import docker from '/app/assets/img/skill_docker.png'
import js from '/app/assets/img/skill_js.png'
import aws from '/app/assets/img/skill_aws.png'
import node from '/app/assets/img/skill_node.png'
import react from '/app/assets/img/skill_react.png'

import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'

import * as _ from 'lodash'

photos = [
  { src: docker, width: 4, height: 3 },
  { src: js, width: 1, height: 1 },
  { src: aws, width: 3, height: 4 },
  { src: node, width: 3, height: 4 },
  { src: react, width: 3, height: 4 },
  { src: 'https://source.unsplash.com/NQSWvyVRIJk/800x599', width: 4, height: 3 },
  { src: 'https://source.unsplash.com/zh7GEuORbUw/600x799', width: 3, height: 4 },
  { src: 'https://source.unsplash.com/PpOHJezOalU/800x599', width: 4, height: 3 },
  { src: 'https://source.unsplash.com/I1ASdgphUH4/800x599', width: 4, height: 3 }
]

class Instagram extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @

    <div>
       <Gallery photos={photos} />
    </div>
export default Instagram

     


  

