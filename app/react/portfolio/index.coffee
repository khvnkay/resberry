import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import Experience from './experience'
import Skill from './skill'
import Education from './education'
import LayoutComponent                      from '../layoutComponent'
import * as _ from 'lodash'


class PortfolioHome extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @

    <Segment   vertical>
      <Grid container stackable verticalAlign='middle'>
        <Grid.Row>
          <Grid.Column width={8}>
          </Grid.Column>
        </Grid.Row>
        <Grid.Row>
          <Education />
        </Grid.Row>
        <Grid.Row>
          <Experience />
        </Grid.Row>
       <Grid.Row>
        <Skill />
       </Grid.Row>
      </Grid>
    </Segment>
export default PortfolioHome

     


  

