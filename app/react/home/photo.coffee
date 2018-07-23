import React from 'react';

imgStyle =
  display: 'block'

cont =
  backgroundColor: '#eee'
  cursor: 'pointer'
  overflow: 'hidden'
  float: 'left'
  position: 'relative'
  width: '200px'
  height: '200px'


export default ({ photo, margin}) =>
  render: ->
    <div style={{ margin, width: photo.width, ...cont }}>
      <img style={{ ...imgStyle }} {...photo} />
    </div>
  
