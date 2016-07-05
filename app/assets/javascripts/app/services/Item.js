function Item($resource) {
  var Item = $resource('/api/v1/items/:id', { id: '@id' }, {
    update: {
      method: 'PUT'
    }
  });
  
  return Item
}

playedOut
  .factory('Item', Item)
