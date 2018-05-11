import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { Menu, Icon, Grid, Header , Image, Button, Visibility, Container }  from 'semantic-ui-react'
import * as _ from 'lodash'


class Social extends Component
  constructor: (props) ->
    super props
    @state =
      overlayFixed: false
  fixedOverlayStyle = 
    overlayStyle: null
    position: 'fixed'
    top: '80px'
    zIndex: 10
  fixedMenuStyle = 
    backgroundColor: '#fff'
    border: '1px solid #ddd'
    boxShadow: '0px 3px 5px rgba(0, 0, 0, 0.2)'

  overlayStyle = 
    float: 'left'
    margin: '0em 3em 1em 0em'
  
  overlayMenuStyle = 
    position: 'relative'
    left: 0
    transition: 'left 0.5s ease'
  stickOverlay:() ->
    console.log "=====test" 
    @setState
      overlayFixed: true

  stickTopMenu: () -> 
    @setState
      menuFixed: true

  unStickOverlay: () ->
    console.log "123456" 
    @setState
      overlayFixed: false

  unStickTopMenu: () -> 
    @setState
      menuFixed: false
 
  
  handleOverlayRef: (c) -> 
    { overlayRect } = @state
    me =@
    if (!overlayRect) 
      @setState
        overlayRect: 
          _.pick(c.getBoundingClientRect(), 'height', 'width')
  fixedOverlayMenuStyle = 
    overlayMenuStyle: null
    left: '800px'
  render: ->
    
    me = @
    { menuFixed, overlayFixed, overlayRect } = me.state
    <Container>
      <Visibility
        offset={80}
        once={false}
        onTopPassed={()-> me.stickOverlay()}
        onTopVisible={()-> me.unStickOverlay()}
      />
      <div
        ref={(e)=> me.handleOverlayRef(e)}
        style={
          if overlayFixed
            fixedOverlayStyle
          else
            overlayStyle
          }
        >
        <Menu
          icon='labeled'
          style={
                if overlayFixed 
                  fixedOverlayMenuStyle
                else 
                  overlayMenuStyle}
          vertical>
          <Menu.Item>
            <Icon name='twitter' />
           Twitter
          </Menu.Item>
          <Menu.Item >
            <Icon name='facebook' />
           Share
          </Menu.Item>
          <Menu.Item>
            <Icon name='mail' />
           Email
          </Menu.Item>
        </Menu>
      </div>
    </Container>
export default Social
