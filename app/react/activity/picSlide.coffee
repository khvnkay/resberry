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

require '/app/assets/css/base.css'
require '/app/assets/css/slider.css'
class PicSlide extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @
    <div className="demo-1">
      <div className="content">
        <div className="pieces-slider">
          <div className="pieces-slider__slide">
            <img className="pieces-slider__image" src={js} alt=""></img>
            <h2 className="pieces-slider__text">Status Quo</h2>
          </div>
          <div className="pieces-slider__slide">
            <img className="pieces-slider__image" src={node} alt=""></img>
            <h2 className="pieces-slider__text">Amphibia</h2>
          </div>
          <div className="pieces-slider__slide">
            <img className="pieces-slider__image" src={aws} alt=""></img>
            <h2 className="pieces-slider__text">Love Letters</h2>
          </div>
          <div className="pieces-slider__slide">
            <img className="pieces-slider__image" src={react} alt=""></img>
            <h2 className="pieces-slider__text">Green Flight</h2>
          </div>
          <div className="pieces-slider__slide">
            <img className="pieces-slider__image" src={docker} alt=""></img>
            <h2 className="pieces-slider__text">Fun Fun Run</h2>
          </div>
          <canvas className="pieces-slider__canvas"></canvas>
          <button className="pieces-slider__button pieces-slider__button--prev">prev</button>
          <button className="pieces-slider__button pieces-slider__button--next">next</button>
        </div>
      </div>
  </div>
export default PicSlide

     


  

