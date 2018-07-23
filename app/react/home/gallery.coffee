import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import {  Image, Button, Grid, Header }  from 'semantic-ui-react'
import Gallery from 'react-photo-gallery';
import p1 from '/app/assets/img/home/image-1.png'
import p2 from '/app/assets/img/home/image-2.png'
import p3 from '/app/assets/img/home/image-3.png'
import p4 from '/app/assets/img/home/image-4.png'
import p5 from '/app/assets/img/home/image-5.png'
import p6 from '/app/assets/img/home/image-6.png'
import p7 from '/app/assets/img/home/image-7.png'
import p8 from '/app/assets/img/home/image-8.png'
import p9 from '/app/assets/img/home/image-9.png'
require '/app/assets/css/gallery-home.css'
import { SortableContainer, SortableElement, arrayMove } from 'react-sortable-hoc'
import Photo from './photo';
photos = [
  { src: p9 , width: 4, height: 3 },
  { src: p8, width: 1, height: 1 },
  { src: p7, width: 1, height: 1 },
  { src: p6, width: 3, height: 4 },
  { src: p5, width: 3, height: 4 },
  { src: p4, width: 3, height: 4 },
  { src: p3, width: 4, height: 3 },
  { src: p2, width: 4, height: 3 },
  { src: p1, width: 4, height: 3 }
]

SortablePhoto = SortableElement(Photo)
SortableGallery = SortableContainer(({photos}) =>
  <Gallery photos={photos} ImageComponent={SortablePhoto}/>)
class GalleryCard extends Component
  constructor: (props) ->
    super(props)

    @state = 
      photos: photos
  render: ->
    me = @
    console.log me,"--me"
    <div className="center-grid">
      <SortableGallery axis={"xy"} photos={me.state.photos} onSortEnd={({oldIndex, newIndex})->
        me.setState
          photos: arrayMove(me.state.photos, oldIndex, newIndex)
       } />
    </div>
export default connect()(GalleryCard)