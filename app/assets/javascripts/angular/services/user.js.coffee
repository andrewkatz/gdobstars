userServices = angular.module("userServices", ["ngResource"])

userServices.factory("User", ["$resource", ($resource) ->
  $resource("users/:id.json", {id: "@id"})
])
