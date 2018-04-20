'use strict';

angular.module('app')
    .controller('provinceController', [ '$rootScope', '$scope', '$http', '$state',
        function($rootScope, $scope, $http, $state) {
            $scope.title = '省会管理';
            $scope.param = { };
            $scope.loading = false;

            $scope.search = function () {
                $scope.loading = true;
                $.ajax({
                    type: 'PUT',
                    dataType: 'json',
                    contentType:'application/json;charset=UTF-8',
                    url : '/province/read/page',
                    data: angular.toJson($scope.param)
                }).then(function(result) {
                    $scope.loading = false;
                    if (result.code == 200) {
                        $scope.pageInfo = result;
                    } else {
                        $scope.msg = result.msg;
                    }
                    $scope.$apply();
                });
            }

            $scope.search();

            $scope.clearSearch = function() {
                $scope.param.keyword= null;
                $scope.search();
            }

            $scope.disableItem = function(id, enable) {
                this.item.enable = enable;//获取当前的记录信息并更新其enable的值
                $.ajax({
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json;charset=UTF-8',
                    url: '/province',
                    data: angular.toJson(this.item)
                }).then(function (result) {
                    if (result.code == 200) {
                        $state.reload();
                    } else {
                        //不执行任何操作
                    }
                });
            }

            // 翻页
            $scope.pagination = function (page) {
                $scope.param.pageNumber=page;
                $scope.search();
            };
        } ]);