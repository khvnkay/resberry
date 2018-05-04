import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import { Container, Header, Button, Icon }  from 'semantic-ui-react'


class HomepageHeading extends Component
  render: ->
    me = @
    <Container text>
      <Header
        as='h1'
        content='Imagine-a-Company'
        inverted
      />
      <Header
        as='h2'
        content='Do whatever you want when you want to.'
        inverted
      />
      <Button primary size='huge'>
        Get Started
        <Icon name='right arrow' />
      </Button>
    </Container>

export default connect()(HomepageHeading)