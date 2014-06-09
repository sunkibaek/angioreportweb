'user strict'

app = angular.module('AngioReportApp', [])

app.controller 'MailCtrl', ['$scope', '$http', ($scope, $http) ->
  $scope.submit = () ->
    $scope.submitting = true

    data = {
      mailing_list: {
        email: $scope.email
      }
    }

    $http.post('/mailing_list', data)
      .success ->
        $scope.submitSuccess = true
      .error ->
        $scope.submitFail = true
]