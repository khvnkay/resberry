import React,{ Component }      from 'react'
import { connect } from 'react-redux'
import HomepageHeading                      from './homePageHeading'
import LayoutComponent                      from './layoutComponent'
import PortfolioHome                      from './portfolio/index'
import Home                      from './home/index'
import BlogHome                      from './blog/index'
import ActivityHome                      from './activity/index'
import logo                            from "/home/krongkan/Works/resberry/app/assets/img/logo.png"
import { BrowserRouter as Router, Route, Switch, Link } from 'react-router-dom'
import { 
  Responsive, 
  Visibility, 
  Segment, 
  Menu , 
  Container,
  Image,

  Button }  from 'semantic-ui-react'


class MenuBar extends Component

  constructor: (props) ->
    super(props)
    @state = {
      activeItem: 'Home'
    }
  handleItemClick: (e) =>
    console.log e,"-=-="
    me =@ 
    me.setState
      activeItem: e
  hideFixedMenu: () => 
    console.log "=w=s="
    me =@
    me.setState
      fixed: false
  showFixedMenu: =>
    console.log "-=-=23"
    me.setState 
      fixed:true


  color:(color)->
    if color
      'green'
    else
      'black'

 
  render:(children) ->
    me = @
    console.log me.state
    { fixed } = me.state
    activeItem = (_.get me, 'state.activeItem')
    <Router>
      <div>
        <Visibility once={false} onBottomPassed={ ()->
            me.showFixedMenu()} onBottomPassedReverse={()->me.hideFixedMenu()}>
          <Segment  textAlign='center' style={{ minHeight: 700, padding: '1em 0em' }} vertical>
            <Menu 
              fixed={fixed? 'top' : null}
              inverted={!me.state.fixed}
              pointing={!me.state.fixed}
              secondary={!me.state.fixed}
              size='large'
              >
              <Menu.Item name='home'  
                  active={activeItem is 'home'} 
                  style={backgroundColor: me.color(activeItem is 'home')} 
                  as={Link} to='/'  
                  onClick={()->
                    me.setState 
                      activeItem: 'home' } />
              <Menu.Item name='portfolio'   
                active={activeItem is 'portfolio'} 
                style={backgroundColor: me.color(activeItem is 'portfolio')} 
                as={Link} to='/portfolio'  
                onClick={()->
                    me.setState 
                      activeItem: 'Portfolio'}/>
              <Menu.Item name='blog'  
                active={activeItem is 'blog'} 
                style={backgroundColor: me.color(activeItem is 'blog')} 
                as={Link} to='/blog'    
                onClick={()->
                    me.setState
                      activeItem: 'blog'} />
            </Menu>
            <Route exact path="/home" component={Home}/>
            <Route exact path="/portfolio" component={PortfolioHome}/>
            <Route exact path="/blog" component={BlogHome}/>
          </Segment>
        </Visibility>
      </div>
    </Router>

export default MenuBar