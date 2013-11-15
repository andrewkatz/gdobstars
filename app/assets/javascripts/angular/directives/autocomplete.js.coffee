# angular.module("starsApp").directive "autocomplete", ($timeout) ->
#   (scope, element, attrs) ->
#     element.autocomplete(
#       source: (a = _.map(scope[attrs.uiItems], ((u) -> u.name)); console.log(a); a)
#       select: ->
#         $timeout ( -> element.trigger("input") ), 0
#     )
