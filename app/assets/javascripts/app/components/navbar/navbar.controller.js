'use strict';

class NavbarController {
  constructor($location) {
      this.activePage = $location.path();
      this.setPage = function (n) {
        this.activePage = n == 1 ? '/' : '/employees';
      }
  }

}

angular.module('ngSpaApp')
  .controller('NavbarController', NavbarController);