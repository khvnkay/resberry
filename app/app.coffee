import React,{ Component }      from 'react'
import { connect } from 'react-redux'
import logo                            from "/home/krongkan/Works/resberry/app/assets/img/logo.png"
import { 
  Responsive, 
  Visibility, 
  Segment, 
  Menu , 
  Container,
  Image,

  Button }  from 'semantic-ui-react'
import homepic  from '/home/krongkan/Works/resberry/app/assets/img/home1.png'
import * as _ from 'lodash'
import Routes from './Routes'
import { Link, withRouter } from 'react-router-dom'
import HomepageHeading                      from './react/homePageHeading'



class App extends Component

  constructor: (props) ->
    super(props)
    @state = {
      activeItem: 'Home'
      fixed: false
      minHeight: 0
    }
  handleItemClick: (e) =>
    console.log e,"-=-="
    me =@ 
    me.setState
      activeItem: e

  color:(color)->
    if color
      'green'
    else
      'black'
  childProps: ->
    childProps =
      isAuthenticated: true
  render:(children) ->
    console.log "-1234"
    me = @
    { fixed } = me.state
    activeItem = (_.get me, 'state.activeItem')
    <div>
      <Visibility once={false} onBottomPassed={()->

        console.log "=="
        me.setState 
          fixed:true }  onBottomPassedReverse={()->
            me.setState
              fixed: false
            }>
        <Segment inverted  textAlign='center' style={{ minHeight: me.state.minHeight, padding: '1em 0em' }} vertical>
          <Menu 
            fixed={if me.state.fixed then  'top'}
            inverted={!me.state.fixed}
            pointing={!me.state.fixed}
            secondary={!me.state.fixed}
            size='small'
            >
            <Container>
              <Menu.Menu position='right'>
                <Menu.Item name='home' >
                  <Link  to="/"> 
                    Home
                  </Link>
                </Menu.Item>
                <Menu.Item name='activity' >
                  <Link  to="/activity"> 
                    Activity
                  </Link>
                </Menu.Item>
                
                <Menu.Item name='portfolio' >
                  <Link  to="/portfolio"> 
                    Portfolio
                  </Link>
                </Menu.Item>
                <Menu.Item name='blog' >
                  <Link  to="/blog"> 
                    Blog
                  </Link>
                </Menu.Item>
              </Menu.Menu>
            </Container>
          </Menu>
        </Segment>
      </Visibility>
      <Routes    />
      #cann't change menu to tranparent becuase this is semantic multi page not bootstrap one page
    </div>


  

export default withRouter(App)