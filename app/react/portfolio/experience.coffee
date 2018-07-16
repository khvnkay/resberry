import React, {Component} from 'react'
import { Image, List, Segment } from 'semantic-ui-react'


class Experience extends Component
  render: ->
    <List animated size='huge' verticalAlign='middle'>
      <List.Item>
        <Segment padded>Very padded content.
          <Image avatar src='/images/avatar/small/helen.jpg' />
          <List.Content>
            <List.Header>Helen</List.Header>
            <List.Description>
              Last seen watching{' '}
              <a>
                <b>Arrested Development</b>
              </a>{' '}
              just now.
            </List.Description>
           
          </List.Content>
        </Segment>
        
      </List.Item>
      <List.Item>
        <Segment padded>Very padded content.
          <List.Content>
            <List.Header><Image avatar src='/images/avatar/small/helen.jpg' /></List.Header>
            <List.Description>
            Last seen watching{' '}
            <a>
              <b>Arrested Development</b>
            </a>{' '}
            just now.
          </List.Description>
          </List.Content>
        </Segment>
      </List.Item>
      <List.Item>
        <Segment padded>Very padded content.
          <Image avatar src='/images/avatar/small/helen.jpg' />
          <List.Content>
            <List.Header>Helen</List.Header>
            <List.Description>
              Last seen watching{' '}
              <a>
                <b>Arrested Development</b>
              </a>{' '}
              just now.
            </List.Description>
          </List.Content>
        </Segment>
      </List.Item>
    </List>


export default Experience