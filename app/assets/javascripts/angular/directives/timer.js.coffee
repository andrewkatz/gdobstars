angular.module("starsApp").directive "timer", ($timeout) ->
  updateTimer = (element, minutes, seconds) ->
    if minutes < 1 && seconds < 1
      $(element).find(".text").addClass "done"
      return

    if seconds < 1
      minutes--
      seconds = 59
    else
      seconds--

    secondString = seconds.toString()
    secondString = "0" + secondString if seconds < 10
    $(element).find(".time-remaining").html(minutes + ":" + secondString)

    $timeout ( -> updateTimer(element, minutes, seconds) ), 1000

  restrict: "E"

  replace: true

  scope:
    nId: "@"
    nType: "@"
    nReceiver: "@"
    nExpire: "@"
    nReason: "@"
    nUpdateFn: "&"
    nSecondFn: "&"

  template: '''
    <div class="panel panel-info nomination-panel">
      <div class="panel-body">
        <strong>
          {{ nType }} {{ nReceiver }}
        </strong>
        {{ nReason }}
        <span class="pull-right">
          <span class="time-remaining"></span>
          <button type="button" class="btn" ng-click="second()">+1</button>
        </span>
      </div>
    </div>
  '''

  link: (scope, element, attr) ->
    scope.$watch "nExpire", (nExpire) ->
      scope.second = ->
        scope.nSecondFn()

      duration = Date.parse(nExpire) - Date.now()

      $timeout ( ->
        scope.nUpdateFn()
      ), duration

      minutes = Math.floor(duration / 1000 / 60)
      seconds = Math.floor((duration / 1000) % 60)
      updateTimer(element, minutes, seconds)
