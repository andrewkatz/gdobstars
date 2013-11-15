nominationServices = angular.module("nominationServices", ["ngResource"])

nominationServices.factory("Nomination", ["$resource", ($resource) ->
  $resource("nominations/:id.json", {id: "@id"})
])
