import React, {Component} from 'react'
import docker from '/app/assets/img/skill_docker.png'
import js from '/app/assets/img/skill_js.png'
import aws from '/app/assets/img/skill_aws.png'
import node from '/app/assets/img/skill_node.png'
import react from '/app/assets/img/skill_react.png'
import { Image, List, Segment, Label, Header } from 'semantic-ui-react'


class Skill extends Component
  render: ->
    <div>
      <Header as='h2'>
        Skill
        <Header.Subheader>
          <Label as='a'>
            <Image avatar spaced='right' src={docker} />
            Elliot
          </Label>
          <Label as='a'>
            <img src={js} />
            Stevie
          </Label>
          <Label as='a'>
            <img src={aws} />
            Stevie
          </Label>
          <Label as='a'>
            <img src={node} />
            Stevie
          </Label>
          <Label as='a'>
            <img src={react} />
            Stevie
          </Label>     
        </Header.Subheader>
      </Header>
    

   
    </div>
        

export default Skill