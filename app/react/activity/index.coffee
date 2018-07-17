import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import Instagram from './instagram'
import * as _ from 'lodash'


class ActivityHome extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @
    console.log "test==="
    <Segment   vertical>
      <Grid container stackable verticalAlign='middle'>
        <Grid.Row>
          <Grid.Column width={8}>
            <Instagram />
          </Grid.Column>
         
        </Grid.Row>
      
      </Grid>
    </Segment>
export default ActivityHome

     


  

