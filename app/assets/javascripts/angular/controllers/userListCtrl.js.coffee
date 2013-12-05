angular.module("starsApp").controller("UserListCtrl", ["$scope", "$timeout", "User", ($scope, $timeout, User) ->
  $scope.updateUsers = ->
    User.query( (users) ->
      $scope.users = users
      autocompleteInput = $("#nominateUserInput")
      autocompleteInput.autocomplete(
        source: _.map(users, ((u) -> u.name))
        select: ( -> $timeout(( -> autocompleteInput.trigger("input")), 0) )
      )
      autocompleteInput.autocomplete("widget").insertAfter(autocompleteInput)
      $timeout ( -> $scope.updateUsers() ), 1000
    )

  $scope.nominate = ->
    receiver_id = _.find($scope.users, (u) -> u.name.toLowerCase() == $scope.nominatedUser.toLowerCase() )

    unless receiver_id
      alert("User doesn't exist bro")
      return

    receiver_id = receiver_id.id

    $.post("/nominations", { nomination: { receiver_id: receiver_id, action: "Star nomination for", reason: $scope.nominatedReason } })

  $scope.updateUsers()
])
