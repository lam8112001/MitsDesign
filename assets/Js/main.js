function  changeProductList(type , element){
    let tabs = document.getElementsByClassName('header__sort-item')
    for(i=0 ; i <tabs.length ; i++) {
        tabs[i].style.background = '#fff'

    }
  element.style.background = '#fdc830';
  document.getElementById(type).style.display = 'block'
  switch (type) {
    case 'trend':
    
      document.getElementById('new').style.display = 'none'
      document.getElementById('bestsell').style.display = 'none'
      break;
    case 'new':
       
        document.getElementById('trend').style.display = 'none'
        document.getElementById('bestsell').style.display = 'none'
        break;
    case 'bestsell':
          
          document.getElementById('new').style.display = 'none'
          document.getElementById('new').style.display = 'none'
          break;
    
  }

  
}