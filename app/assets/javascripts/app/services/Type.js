function Type($resource) {
  var Type = $resource('/api/v1/types/:id', { id: '@id' }, {
    update: {
      method: 'PUT'
    }
  });

  return Type
}

playedOut
  .factory('Type', Type)
