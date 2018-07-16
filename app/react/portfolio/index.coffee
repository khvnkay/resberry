import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import Experience from './experience'
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
            me education
          </Grid.Column>
        </Grid.Row>
        <Grid.Row>
          Experience
          <Experience />
        </Grid.Row>
       
      </Grid>
    </Segment>
export default PortfolioHome

     


  

