angular.module("starsApp").filter("range", ->
  (input, total) ->
    if total is 0
      []
    else if total is 1
      [1]
    else
      [1..total]
)
