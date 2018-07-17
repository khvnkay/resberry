import React, {Component} from 'react'
import angs from '/app/assets/img/port_ang.png'
import seagate from '/app/assets/img/port_seagte.png'
import { Image, List, Segment, Header } from 'semantic-ui-react'


class Experience extends Component
  render: ->
    <div>
      <Header>Experience </Header>
      <List animated size='huge' verticalAlign='middle'>
        <List.Item>
          <Segment padded>
            <Image avatar src={angs} />
            <List.Content>
              <List.Header>Helen</List.Header>
              <List.Description>
                Last seen watching{' '}
                <a>
                  <b>Arrested Development</b>
                </a>{' '}
                just now. i love oioioio ooo oo oo oo o o o o o oo o  o
              </List.Description>
            </List.Content>
          </Segment>
        </List.Item>
        <List.Item>
          <Segment padded>
            <Image avatar src={seagate} />
            <List.Content>
              <List.Header></List.Header>
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
          <Segment padded>
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
    </div>


export default Experience