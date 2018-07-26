import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import Story from './story'
import Article from './article'
import * as _ from 'lodash'

class BlogHome extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @
    <div>
      <Segment   vertical>
        <Header as='h3' style={{ fontSize: '2em' }}>BlogHome</Header>

        <Grid container stackable verticalAlign='middle'>
          <Grid.Row>
            <Grid.Column width={8}>
            </Grid.Column>
            <Grid.Column floated='right' width={6}>
              <Image
                bordered
                rounded
                size='large'
              />
            </Grid.Column>
          </Grid.Row>
          <Story />
          <Story />
        </Grid>
        <Header as='h3' style={{ fontSize: '2em' }}>Article</Header>
        <Grid container stackable verticalAlign='middle'>
          <Grid.Row>
            <Grid.Column width={8}>
            </Grid.Column>
            <Grid.Column floated='right' width={6}>
              <Image
                bordered
                rounded
                size='large'
              />
            </Grid.Column>
          </Grid.Row>
          <Article />
          <Article />
          <Article />
          <Article />
        </Grid>

      </Segment>

    </div>
export default BlogHome

     


  

