import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import {  Image, Button, Grid, Header }  from 'semantic-ui-react'
require '/app/assets/css/gallery-home.css'
class AboutMe extends Component
  render: ->
    me = @
    <div className="about-me">
      <Header as='h3'>About Me
        <Header.Subheader>
          MY NAME IS KRONGKAN MADJAROEUNSUK AND MY NICKNAME IS YA , IM' 24 YEAR OLD, THIS IS FIRST WEBSITE TO EXPIRE ABOUT ME 
          ,I TRY TO BE PERFECTLY FOR MYSELF.I HOPE YOU LIKE MY WEB LIKE ME,
          </Header.Subheader>
      </Header>
    </div>

export default connect()(AboutMe)