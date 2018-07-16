import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import {  Image, Button, Grid, Header }  from 'semantic-ui-react'

class AboutMe extends Component
  render: ->
    me = @
    <Header as='h3'>About Me
      <Header.Subheader>
        The idea is to pass the data in the props into 
        the components and to render with dc within the 
        ... div gets re-rendered and thereby removes children
         (asynchr attached chart) ... Widgets are created/ removed using react-grid-layout which creates an ...
       i am using dc.js (2.0.0-beta.32) for several bar charts, which may happen to</Header.Subheader>
    </Header>

export default connect()(AboutMe)