angular.module("starsApp").controller("NominationCtrl", ["$scope", "$timeout", "Nomination", ($scope, $timeout, Nomination) ->
  $scope.nominations = []
  $scope.lastId = 0

  $scope.updateNominations = ->
    nominations = Nomination.query(->
      if nominations.length > 0
        for i in [0..nominations.length-1]
          nomination = nominations[i]
          $scope.nominations.push(nomination) if nomination.id > $scope.lastId

        if $scope.nominations.length is 0
          $scope.lastId = 0
        else
          $scope.lastId = $scope.nominations[$scope.nominations.length - 1].id

      $timeout ( -> $scope.updateNominations() ), 1000
    )

  $scope.shiftNominations = (nomination) ->
    $.post("/nominations/fail", { id: nomination.id })
    $scope.nominations.shift()

  $scope.secondNomination = (nomination) ->
    $.post("/nominations/second", { id: nomination.id })
    $scope.nominations = _.without($scope.nominations, nomination)

  $scope.updateNominations()
])
