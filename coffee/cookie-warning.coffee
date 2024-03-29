###
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2021-present Kaleidos INC
###

template = """
<cookie-warning style="display:none">
    <div class="center">
        <div class="text">
            <p class="title">
                Our site uses cookies to keep running.
            </p>
            <p>
                Our lawyer, who is one tough cookie, and is himself obsessed with cookies, wants you to know that Taiga uses cookies. He’s a simple-minded man, and requires obvious announcements like this. So here it is: our cookie policy, which you can read more about by <a target="_blank" href="{{::privacyPolicyUrl }}">clicking here</a>, is best summarized by the Cookie Monster himself: “C is for Cookie and Cookie is for me.”
            </p>
        </div>
        <a href="" title="close" class="close">
            <svg class="icon icon-close">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-close"></use>
            </svg>
        </a>
    </div>
</cookie-warning>
"""

CookieWarningDirective = ($compile, $config) ->
    setCookie = (cname, cvalue, exdays) ->
        d = new Date()
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000))
        expires = "expires=" + d.toUTCString()
        document.cookie = cname + "=" + cvalue + "; " + expires

    getCookie = (cname) ->
        name = cname + "="
        ca = document.cookie.split(';')

        for c in ca
            while (c.charAt(0) == ' ')
                c = c.substring(1)

            if (c.indexOf(name) != -1)
                return c.substring(name.length, c.length)

    link = ($scope, $el, $attrs) ->
        $scope.privacyPolicyUrl = $config.get("privacyPolicyUrl")

        cookieMsg = $compile($(template))($scope)

        $el.append(cookieMsg)

        if getCookie('cookieConsent') != '1'
            cookieMsg.show()

        $el.find('.close').on 'click', (e) ->
            e.preventDefault()

            cookieMsg.fadeOut('fast')
            setCookie('cookieConsent', 1, 730)

    return {
        restrict: "E"
        link: link
    }

module = angular.module('cookieWarningPlugin', [])
module.directive("body", ["$compile", "$tgConfig", CookieWarningDirective])
