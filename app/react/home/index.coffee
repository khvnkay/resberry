import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import homepic  from '/app/assets/img/home1.png'
import Social from '../components/socials'
import GridPhoto from './grid'


import * as _ from 'lodash'


class Home extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @

    <div>



      <GridPhoto />
    </div>
export default Home

     


  

