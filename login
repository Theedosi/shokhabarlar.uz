/*
 AngularJS v1.2.9
 (c) 2010-2014 Google, Inc. http://angularjs.org
 License: MIT
*/
(function(Z, Q, r) {
    'use strict';
    function F(b) {
        return function() {
            var a = arguments[0], c, a = "[" + (b ? b + ":" : "") + a + "] http://errors.angularjs.org/1.2.9/" + (b ? b + "/" : "") + a;
            for (c = 1; c < arguments.length; c++)
                a = a + (1 == c ? "?" : "&") + "p" + (c - 1) + "=" + encodeURIComponent("function" == typeof arguments[c] ? arguments[c].toString().replace(/ \{[\s\S]*$/, "") : "undefined" == typeof arguments[c] ? "undefined" : "string" != typeof arguments[c] ? JSON.stringify(arguments[c]) : arguments[c]);
            return Error(a)
        }
    }
    function rb(b) {
        if (null == b || Aa(b))
            return !1;
        var a = b.length;
        return 1 === b.nodeType && a ? !0 : D(b) || K(b) || 0 === a || "number" === typeof a && 0 < a && a - 1 in b
    }
    function q(b, a, c) {
        var d;
        if (b)
            if (L(b))
                for (d in b)
                    "prototype" == d || ("length" == d || "name" == d || b.hasOwnProperty && !b.hasOwnProperty(d)) || a.call(c, b[d], d);
            else if (b.forEach && b.forEach !== q)
                b.forEach(a, c);
            else if (rb(b))
                for (d = 0; d < b.length; d++)
                    a.call(c, b[d], d);
            else
                for (d in b)
                    b.hasOwnProperty(d) && a.call(c, b[d], d);
        return b
    }
    function Pb(b) {
        var a = [], c;
        for (c in b)
            b.hasOwnProperty(c) && a.push(c);
        return a.sort()
    }
    function Pc(b, a, c) {
        for (var d = Pb(b), e = 0; e < d.length; e++)
            a.call(c, b[d[e]], d[e]);
        return d
    }
    function Qb(b) {
        return function(a, c) {
            b(c, a)
        }
    }
    function Za() {
        for (var b = ka.length, a; b; ) {
            b--;
            a = ka[b].charCodeAt(0);
            if (57 == a)
                return ka[b] = "A",
                ka.join("");
            if (90 == a)
                ka[b] = "0";
            else
                return ka[b] = String.fromCharCode(a + 1),
                ka.join("")
        }
        ka.unshift("0");
        return ka.join("")
    }
    function Rb(b, a) {
        a ? b.$$hashKey = a : delete b.$$hashKey
    }
    function t(b) {
        var a = b.$$hashKey;
        q(arguments, function(a) {
            a !== b && q(a, function(a, c) {
                b[c] = a
            })
        });
        Rb(b, a);
        return b
    }
    function S(b) {
        return parseInt(b, 10)
    }
    function Sb(b, a) {
        return t(new (t(function() {}, {
            prototype: b
        })), a)
    }
    function w() {}
    function Ba(b) {
        return b
    }
    function $(b) {
        return function() {
            return b
        }
    }
    function z(b) {
        return "undefined" === typeof b
    }
    function B(b) {
        return "undefined" !== typeof b
    }
    function X(b) {
        return null != b && "object" === typeof b
    }
    function D(b) {
        return "string" === typeof b
    }
    function sb(b) {
        return "number" === typeof b
    }
    function La(b) {
        return "[object Date]" === $a.call(b)
    }
    function K(b) {
        return "[object Array]" === $a.call(b)
    }
    function L(b) {
        return "function" === typeof b
    }
    function ab(b) {
        return "[object RegExp]" === $a.call(b)
    }
    function Aa(b) {
        return b && b.document && b.location && b.alert && b.setInterval
    }
    function Qc(b) {
        return !(!b || !(b.nodeName || b.on && b.find))
    }
    function Rc(b, a, c) {
        var d = [];
        q(b, function(b, g, f) {
            d.push(a.call(c, b, g, f))
        });
        return d
    }
    function bb(b, a) {
        if (b.indexOf)
            return b.indexOf(a);
        for (var c = 0; c < b.length; c++)
            if (a === b[c])
                return c;
        return -1
    }
    function Ma(b, a) {
        var c = bb(b, a);
        0 <= c && b.splice(c, 1);
        return a
    }
    function aa(b, a) {
        if (Aa(b) || b && b.$evalAsync && b.$watch)
            throw Na("cpws");
        if (a) {
            if (b === a)
                throw Na("cpi");
            if (K(b))
                for (var c = a.length = 0; c < b.length; c++)
                    a.push(aa(b[c]));
            else {
                c = a.$$hashKey;
                q(a, function(b, c) {
                    delete a[c]
                });
                for (var d in b)
                    a[d] = aa(b[d]);
                Rb(a, c)
            }
        } else
            (a = b) && (K(b) ? a = aa(b, []) : La(b) ? a = new Date(b.getTime()) : ab(b) ? a = RegExp(b.source) : X(b) && (a = aa(b, {})));
        return a
    }
    function Tb(b, a) {
        a = a || {};
        for (var c in b)
            b.hasOwnProperty(c) && ("$" !== c.charAt(0) && "$" !== c.charAt(1)) && (a[c] = b[c]);
        return a
    }
    function ua(b, a) {
        if (b === a)
            return !0;
        if (null === b || null === a)
            return !1;
        if (b !== b && a !== a)
            return !0;
        var c = typeof b, d;
        if (c == typeof a && "object" == c)
            if (K(b)) {
                if (!K(a))
                    return !1;
                if ((c = b.length) == a.length) {
                    for (d = 0; d < c; d++)
                        if (!ua(b[d], a[d]))
                            return !1;
                    return !0
                }
            } else {
                if (La(b))
                    return La(a) && b.getTime() == a.getTime();
                if (ab(b) && ab(a))
                    return b.toString() == a.toString();
                if (b && b.$evalAsync && b.$watch || a && a.$evalAsync && a.$watch || Aa(b) || Aa(a) || K(a))
                    return !1;
                c = {};
                for (d in b)
                    if ("$" !== d.charAt(0) && !L(b[d])) {
                        if (!ua(b[d], a[d]))
                            return !1;
                        c[d] = !0
                    }
                for (d in a)
                    if (!c.hasOwnProperty(d) && "$" !== d.charAt(0) && a[d] !== r && !L(a[d]))
                        return !1;
                return !0
            }
        return !1
    }
    function Ub() {
        return Q.securityPolicy && Q.securityPolicy.isActive || Q.querySelector && !(!Q.querySelector("[ng-csp]") && !Q.querySelector("[data-ng-csp]"))
    }
    function cb(b, a) {
        var c = 2 < arguments.length ? va.call(arguments, 2) : [];
        return !L(a) || a instanceof RegExp ? a : c.length ? function() {
            return arguments.length ? a.apply(b, c.concat(va.call(arguments, 0))) : a.apply(b, c)
        }
        : function() {
            return arguments.length ? a.apply(b, arguments) : a.call(b)
        }
    }
    function Sc(b, a) {
        var c = a;
        "string" === typeof b && "$" === b.charAt(0) ? c = r : Aa(a) ? c = "$WINDOW" : a && Q === a ? c = "$DOCUMENT" : a && (a.$evalAsync && a.$watch) && (c = "$SCOPE");
        return c
    }
    function qa(b, a) {
        return "undefined" === typeof b ? r : JSON.stringify(b, Sc, a ? "  " : null)
    }
    function Vb(b) {
        return D(b) ? JSON.parse(b) : b
    }
    function Oa(b) {
        "function" === typeof b ? b = !0 : b && 0 !== b.length ? (b = x("" + b),
        b = !("f" == b || "0" == b || "false" == b || "no" == b || "n" == b || "[]" == b)) : b = !1;
        return b
    }
    function ga(b) {
        b = A(b).clone();
        try {
            b.empty()
        } catch (a) {}
        var c = A("<div>").append(b).html();
        try {
            return 3 === b[0].nodeType ? x(c) : c.match(/^(<[^>]+>)/)[1].replace(/^<([\w\-]+)/, function(a, b) {
                return "<" + x(b)
            })
        } catch (d) {
            return x(c)
        }
    }
    function Wb(b) {
        try {
            return decodeURIComponent(b)
        } catch (a) {}
    }
    function Xb(b) {
        var a = {}, c, d;
        q((b || "").split("&"), function(b) {
            b && (c = b.split("="),
            d = Wb(c[0]),
            B(d) && (b = B(c[1]) ? Wb(c[1]) : !0,
            a[d] ? K(a[d]) ? a[d].push(b) : a[d] = [a[d], b] : a[d] = b))
        });
        return a
    }
    function Yb(b) {
        var a = [];
        q(b, function(b, d) {
            K(b) ? q(b, function(b) {
                a.push(wa(d, !0) + (!0 === b ? "" : "=" + wa(b, !0)))
            }) : a.push(wa(d, !0) + (!0 === b ? "" : "=" + wa(b, !0)))
        });
        return a.length ? a.join("&") : ""
    }
    function tb(b) {
        return wa(b, !0).replace(/%26/gi, "&").replace(/%3D/gi, "=").replace(/%2B/gi, "+")
    }
    function wa(b, a) {
        return encodeURIComponent(b).replace(/%40/gi, "@").replace(/%3A/gi, ":").replace(/%24/g, "$").replace(/%2C/gi, ",").replace(/%20/g, a ? "%20" : "+")
    }
    function Tc(b, a) {
        function c(a) {
            a && d.push(a)
        }
        var d = [b], e, g, f = ["ng:app", "ng-app", "x-ng-app", "data-ng-app"], h = /\sng[:\-]app(:\s*([\w\d_]+);?)?\s/;
        q(f, function(a) {
            f[a] = !0;
            c(Q.getElementById(a));
            a = a.replace(":", "\\:");
            b.querySelectorAll && (q(b.querySelectorAll("." + a), c),
            q(b.querySelectorAll("." + a + "\\:"), c),
            q(b.querySelectorAll("[" + a + "]"), c))
        });
        q(d, function(a) {
            if (!e) {
                var b = h.exec(" " + a.className + " ");
                b ? (e = a,
                g = (b[2] || "").replace(/\s+/g, ",")) : q(a.attributes, function(b) {
                    !e && f[b.name] && (e = a,
                    g = b.value)
                })
            }
        });
        e && a(e, g ? [g] : [])
    }
    function Zb(b, a) {
        var c = function() {
            b = A(b);
            if (b.injector()) {
                var c = b[0] === Q ? "document" : ga(b);
                throw Na("btstrpd", c);
            }
            a = a || [];
            a.unshift(["$provide", function(a) {
                a.value("$rootElement", b)
            }
            ]);
            a.unshift("ng");
            c = $b(a);
            c.invoke(["$rootScope", "$rootElement", "$compile", "$injector", "$animate", function(a, b, c, d, e) {
                a.$apply(function() {
                    b.data("$injector", d);
                    c(b)(a)
                })
            }
            ]);
            return c
        }
          , d = /^NG_DEFER_BOOTSTRAP!/;
        if (Z && !d.test(Z.name))
            return c();
        Z.name = Z.name.replace(d, "");
        Ca.resumeBootstrap = function(b) {
            q(b, function(b) {
                a.push(b)
            });
            c()
        }
    }
    function db(b, a) {
        a = a || "_";
        return b.replace(Uc, function(b, d) {
            return (d ? a : "") + b.toLowerCase()
        })
    }
    function ub(b, a, c) {
        if (!b)
            throw Na("areq", a || "?", c || "required");
        return b
    }
    function Pa(b, a, c) {
        c && K(b) && (b = b[b.length - 1]);
        ub(L(b), a, "not a function, got " + (b && "object" == typeof b ? b.constructor.name || "Object" : typeof b));
        return b
    }
    function xa(b, a) {
        if ("hasOwnProperty" === b)
            throw Na("badname", a);
    }
    function vb(b, a, c) {
        if (!a)
            return b;
        a = a.split(".");
        for (var d, e = b, g = a.length, f = 0; f < g; f++)
            d = a[f],
            b && (b = (e = b)[d]);
        return !c && L(b) ? cb(e, b) : b
    }
    function wb(b) {
        var a = b[0];
        b = b[b.length - 1];
        if (a === b)
            return A(a);
        var c = [a];
        do {
            a = a.nextSibling;
            if (!a)
                break;
            c.push(a)
        } while (a !== b);
        return A(c)
    }
    function Vc(b) {
        var a = F("$injector")
          , c = F("ng");
        b = b.angular || (b.angular = {});
        b.$$minErr = b.$$minErr || F;
        return b.module || (b.module = function() {
            var b = {};
            return function(e, g, f) {
                if ("hasOwnProperty" === e)
                    throw c("badname", "module");
                g && b.hasOwnProperty(e) && (b[e] = null);
                return b[e] || (b[e] = function() {
                    function b(a, d, e) {
                        return function() {
                            c[e || "push"]([a, d, arguments]);
                            return n
                        }
                    }
                    if (!g)
                        throw a("nomod", e);
                    var c = []
                      , d = []
                      , l = b("$injector", "invoke")
                      , n = {
                        _invokeQueue: c,
                        _runBlocks: d,
                        requires: g,
                        name: e,
                        provider: b("$provide", "provider"),
                        factory: b("$provide", "factory"),
                        service: b("$provide", "service"),
                        value: b("$provide", "value"),
                        constant: b("$provide", "constant", "unshift"),
                        animation: b("$animateProvider", "register"),
                        filter: b("$filterProvider", "register"),
                        controller: b("$controllerProvider", "register"),
                        directive: b("$compileProvider", "directive"),
                        config: l,
                        run: function(a) {
                            d.push(a);
                            return this
                        }
                    };
                    f && l(f);
                    return n
                }())
            }
        }())
    }
    function Qa(b) {
        return b.replace(Wc, function(a, b, d, e) {
            return e ? d.toUpperCase() : d
        }).replace(Xc, "Moz$1")
    }
    function xb(b, a, c, d) {
        function e(b) {
            var e = c && b ? [this.filter(b)] : [this], m = a, k, l, n, p, s, C;
            if (!d || null != b)
                for (; e.length; )
                    for (k = e.shift(),
                    l = 0,
                    n = k.length; l < n; l++)
                        for (p = A(k[l]),
                        m ? p.triggerHandler("$destroy") : m = !m,
                        s = 0,
                        p = (C = p.children()).length; s < p; s++)
                            e.push(Da(C[s]));
            return g.apply(this, arguments)
        }
        var g = Da.fn[b]
          , g = g.$original || g;
        e.$original = g;
        Da.fn[b] = e
    }
    function O(b) {
        if (b instanceof O)
            return b;
        if (!(this instanceof O)) {
            if (D(b) && "<" != b.charAt(0))
                throw yb("nosel");
            return new O(b)
        }
        if (D(b)) {
            var a = Q.createElement("div");
            a.innerHTML = "<div>&#160;</div>" + b;
            a.removeChild(a.firstChild);
            zb(this, a.childNodes);
            A(Q.createDocumentFragment()).append(this)
        } else
            zb(this, b)
    }
    function Ab(b) {
        return b.cloneNode(!0)
    }
    function Ea(b) {
        ac(b);
        var a = 0;
        for (b = b.childNodes || []; a < b.length; a++)
            Ea(b[a])
    }
    function bc(b, a, c, d) {
        if (B(d))
            throw yb("offargs");
        var e = la(b, "events");
        la(b, "handle") && (z(a) ? q(e, function(a, c) {
            Bb(b, c, a);
            delete e[c]
        }) : q(a.split(" "), function(a) {
            z(c) ? (Bb(b, a, e[a]),
            delete e[a]) : Ma(e[a] || [], c)
        }))
    }
    function ac(b, a) {
        var c = b[eb]
          , d = Ra[c];
        d && (a ? delete Ra[c].data[a] : (d.handle && (d.events.$destroy && d.handle({}, "$destroy"),
        bc(b)),
        delete Ra[c],
        b[eb] = r))
    }
    function la(b, a, c) {
        var d = b[eb]
          , d = Ra[d || -1];
        if (B(c))
            d || (b[eb] = d = ++Yc,
            d = Ra[d] = {}),
            d[a] = c;
        else
            return d && d[a]
    }
    function cc(b, a, c) {
        var d = la(b, "data")
          , e = B(c)
          , g = !e && B(a)
          , f = g && !X(a);
        d || f || la(b, "data", d = {});
        if (e)
            d[a] = c;
        else if (g) {
            if (f)
                return d && d[a];
            t(d, a)
        } else
            return d
    }
    function Cb(b, a) {
        return b.getAttribute ? -1 < (" " + (b.getAttribute("class") || "") + " ").replace(/[\n\t]/g, " ").indexOf(" " + a + " ") : !1
    }
    function Db(b, a) {
        a && b.setAttribute && q(a.split(" "), function(a) {
            b.setAttribute("class", ba((" " + (b.getAttribute("class") || "") + " ").replace(/[\n\t]/g, " ").replace(" " + ba(a) + " ", " ")))
        })
    }
    function Eb(b, a) {
        if (a && b.setAttribute) {
            var c = (" " + (b.getAttribute("class") || "") + " ").replace(/[\n\t]/g, " ");
            q(a.split(" "), function(a) {
                a = ba(a);
                -1 === c.indexOf(" " + a + " ") && (c += a + " ")
            });
            b.setAttribute("class", ba(c))
        }
    }
    function zb(b, a) {
        if (a) {
            a = a.nodeName || !B(a.length) || Aa(a) ? [a] : a;
            for (var c = 0; c < a.length; c++)
                b.push(a[c])
        }
    }
    function dc(b, a) {
        return fb(b, "$" + (a || "ngController") + "Controller")
    }
    function fb(b, a, c) {
        b = A(b);
        9 == b[0].nodeType && (b = b.find("html"));
        for (a = K(a) ? a : [a]; b.length; ) {
            for (var d = 0, e = a.length; d < e; d++)
                if ((c = b.data(a[d])) !== r)
                    return c;
            b = b.parent()
        }
    }
    function ec(b) {
        for (var a = 0, c = b.childNodes; a < c.length; a++)
            Ea(c[a]);
        for (; b.firstChild; )
            b.removeChild(b.firstChild)
    }
    function fc(b, a) {
        var c = gb[a.toLowerCase()];
        return c && gc[b.nodeName] && c
    }
    function Zc(b, a) {
        var c = function(c, e) {
            c.preventDefault || (c.preventDefault = function() {
                c.returnValue = !1
            }
            );
            c.stopPropagation || (c.stopPropagation = function() {
                c.cancelBubble = !0
            }
            );
            c.target || (c.target = c.srcElement || Q);
            if (z(c.defaultPrevented)) {
                var g = c.preventDefault;
                c.preventDefault = function() {
                    c.defaultPrevented = !0;
                    g.call(c)
                }
                ;
                c.defaultPrevented = !1
            }
            c.isDefaultPrevented = function() {
                return c.defaultPrevented || !1 === c.returnValue
            }
            ;
            var f = Tb(a[e || c.type] || []);
            q(f, function(a) {
                a.call(b, c)
            });
            8 >= M ? (c.preventDefault = null,
            c.stopPropagation = null,
            c.isDefaultPrevented = null) : (delete c.preventDefault,
            delete c.stopPropagation,
            delete c.isDefaultPrevented)
        };
        c.elem = b;
        return c
    }
    function Fa(b) {
        var a = typeof b, c;
        "object" == a && null !== b ? "function" == typeof (c = b.$$hashKey) ? c = b.$$hashKey() : c === r && (c = b.$$hashKey = Za()) : c = b;
        return a + ":" + c
    }
    function Sa(b) {
        q(b, this.put, this)
    }
    function hc(b) {
        var a, c;
        "function" == typeof b ? (a = b.$inject) || (a = [],
        b.length && (c = b.toString().replace($c, ""),
        c = c.match(ad),
        q(c[1].split(bd), function(b) {
            b.replace(cd, function(b, c, d) {
                a.push(d)
            })
        })),
        b.$inject = a) : K(b) ? (c = b.length - 1,
        Pa(b[c], "fn"),
        a = b.slice(0, c)) : Pa(b, "fn", !0);
        return a
    }
    function $b(b) {
        function a(a) {
            return function(b, c) {
                if (X(b))
                    q(b, Qb(a));
                else
                    return a(b, c)
            }
        }
        function c(a, b) {
            xa(a, "service");
            if (L(b) || K(b))
                b = n.instantiate(b);
            if (!b.$get)
                throw Ta("pget", a);
            return l[a + h] = b
        }
        function d(a, b) {
            return c(a, {
                $get: b
            })
        }
        function e(a) {
            var b = [], c, d, g, h;
            q(a, function(a) {
                if (!k.get(a)) {
                    k.put(a, !0);
                    try {
                        if (D(a))
                            for (c = Ua(a),
                            b = b.concat(e(c.requires)).concat(c._runBlocks),
                            d = c._invokeQueue,
                            g = 0,
                            h = d.length; g < h; g++) {
                                var f = d[g]
                                  , m = n.get(f[0]);
                                m[f[1]].apply(m, f[2])
                            }
                        else
                            L(a) ? b.push(n.invoke(a)) : K(a) ? b.push(n.invoke(a)) : Pa(a, "module")
                    } catch (s) {
                        throw K(a) && (a = a[a.length - 1]),
                        s.message && (s.stack && -1 == s.stack.indexOf(s.message)) && (s = s.message + "\n" + s.stack),
                        Ta("modulerr", a, s.stack || s.message || s);
                    }
                }
            });
            return b
        }
        function g(a, b) {
            function c(d) {
                if (a.hasOwnProperty(d)) {
                    if (a[d] === f)
                        throw Ta("cdep", m.join(" <- "));
                    return a[d]
                }
                try {
                    return m.unshift(d),
                    a[d] = f,
                    a[d] = b(d)
                } catch (e) {
                    throw a[d] === f && delete a[d],
                    e;
                } finally {
                    m.shift()
                }
            }
            function d(a, b, e) {
                var g = [], h = hc(a), f, k, m;
                k = 0;
                for (f = h.length; k < f; k++) {
                    m = h[k];
                    if ("string" !== typeof m)
                        throw Ta("itkn", m);
                    g.push(e && e.hasOwnProperty(m) ? e[m] : c(m))
                }
                a.$inject || (a = a[f]);
                return a.apply(b, g)
            }
            return {
                invoke: d,
                instantiate: function(a, b) {
                    var c = function() {}, e;
                    c.prototype = (K(a) ? a[a.length - 1] : a).prototype;
                    c = new c;
                    e = d(a, c, b);
                    return X(e) || L(e) ? e : c
                },
                get: c,
                annotate: hc,
                has: function(b) {
                    return l.hasOwnProperty(b + h) || a.hasOwnProperty(b)
                }
            }
        }
        var f = {}
          , h = "Provider"
          , m = []
          , k = new Sa
          , l = {
            $provide: {
                provider: a(c),
                factory: a(d),
                service: a(function(a, b) {
                    return d(a, ["$injector", function(a) {
                        return a.instantiate(b)
                    }
                    ])
                }),
                value: a(function(a, b) {
                    return d(a, $(b))
                }),
                constant: a(function(a, b) {
                    xa(a, "constant");
                    l[a] = b;
                    p[a] = b
                }),
                decorator: function(a, b) {
                    var c = n.get(a + h)
                      , d = c.$get;
                    c.$get = function() {
                        var a = s.invoke(d, c);
                        return s.invoke(b, null, {
                            $delegate: a
                        })
                    }
                }
            }
        }
          , n = l.$injector = g(l, function() {
            throw Ta("unpr", m.join(" <- "));
        })
          , p = {}
          , s = p.$injector = g(p, function(a) {
            a = n.get(a + h);
            return s.invoke(a.$get, a)
        });
        q(e(b), function(a) {
            s.invoke(a || w)
        });
        return s
    }
    function dd() {
        var b = !0;
        this.disableAutoScrolling = function() {
            b = !1
        }
        ;
        this.$get = ["$window", "$location", "$rootScope", function(a, c, d) {
            function e(a) {
                var b = null;
                q(a, function(a) {
                    b || "a" !== x(a.nodeName) || (b = a)
                });
                return b
            }
            function g() {
                var b = c.hash(), d;
                b ? (d = f.getElementById(b)) ? d.scrollIntoView() : (d = e(f.getElementsByName(b))) ? d.scrollIntoView() : "top" === b && a.scrollTo(0, 0) : a.scrollTo(0, 0)
            }
            var f = a.document;
            b && d.$watch(function() {
                return c.hash()
            }, function() {
                d.$evalAsync(g)
            });
            return g
        }
        ]
    }
    function ed(b, a, c, d) {
        function e(a) {
            try {
                a.apply(null, va.call(arguments, 1))
            } finally {
                if (C--,
                0 === C)
                    for (; y.length; )
                        try {
                            y.pop()()
                        } catch (b) {
                            c.error(b)
                        }
            }
        }
        function g(a, b) {
            (function T() {
                q(E, function(a) {
                    a()
                });
                u = b(T, a)
            }
            )()
        }
        function f() {
            v = null;
            R != h.url() && (R = h.url(),
            q(ha, function(a) {
                a(h.url())
            }))
        }
        var h = this
          , m = a[0]
          , k = b.location
          , l = b.history
          , n = b.setTimeout
          , p = b.clearTimeout
          , s = {};
        h.isMock = !1;
        var C = 0
          , y = [];
        h.$$completeOutstandingRequest = e;
        h.$$incOutstandingRequestCount = function() {
            C++
        }
        ;
        h.notifyWhenNoOutstandingRequests = function(a) {
            q(E, function(a) {
                a()
            });
            0 === C ? a() : y.push(a)
        }
        ;
        var E = [], u;
        h.addPollFn = function(a) {
            z(u) && g(100, n);
            E.push(a);
            return a
        }
        ;
        var R = k.href
          , H = a.find("base")
          , v = null;
        h.url = function(a, c) {
            k !== b.location && (k = b.location);
            l !== b.history && (l = b.history);
            if (a) {
                if (R != a)
                    return R = a,
                    d.history ? c ? l.replaceState(null, "", a) : (l.pushState(null, "", a),
                    H.attr("href", H.attr("href"))) : (v = a,
                    c ? k.replace(a) : k.href = a),
                    h
            } else
                return v || k.href.replace(/%27/g, "'")
        }
        ;
        var ha = []
          , N = !1;
        h.onUrlChange = function(a) {
            if (!N) {
                if (d.history)
                    A(b).on("popstate", f);
                if (d.hashchange)
                    A(b).on("hashchange", f);
                else
                    h.addPollFn(f);
                N = !0
            }
            ha.push(a);
            return a
        }
        ;
        h.baseHref = function() {
            var a = H.attr("href");
            return a ? a.replace(/^(https?\:)?\/\/[^\/]*/, "") : ""
        }
        ;
        var V = {}
          , J = ""
          , ca = h.baseHref();
        h.cookies = function(a, b) {
            var d, e, g, h;
            if (a)
                b === r ? m.cookie = escape(a) + "=;path=" + ca + ";expires=Thu, 01 Jan 1970 00:00:00 GMT" : D(b) && (d = (m.cookie = escape(a) + "=" + escape(b) + ";path=" + ca).length + 1,
                4096 < d && c.warn("Cookie '" + a + "' possibly not set or overflowed because it was too large (" + d + " > 4096 bytes)!"));
            else {
                if (m.cookie !== J)
                    for (J = m.cookie,
                    d = J.split("; "),
                    V = {},
                    g = 0; g < d.length; g++)
                        e = d[g],
                        h = e.indexOf("="),
                        0 < h && (a = unescape(e.substring(0, h)),
                        V[a] === r && (V[a] = unescape(e.substring(h + 1))));
                return V
            }
        }
        ;
        h.defer = function(a, b) {
            var c;
            C++;
            c = n(function() {
                delete s[c];
                e(a)
            }, b || 0);
            s[c] = !0;
            return c
        }
        ;
        h.defer.cancel = function(a) {
            return s[a] ? (delete s[a],
            p(a),
            e(w),
            !0) : !1
        }
    }
    function fd() {
        this.$get = ["$window", "$log", "$sniffer", "$document", function(b, a, c, d) {
            return new ed(b,d,a,c)
        }
        ]
    }
    function gd() {
        this.$get = function() {
            function b(b, d) {
                function e(a) {
                    a != n && (p ? p == a && (p = a.n) : p = a,
                    g(a.n, a.p),
                    g(a, n),
                    n = a,
                    n.n = null)
                }
                function g(a, b) {
                    a != b && (a && (a.p = b),
                    b && (b.n = a))
                }
                if (b in a)
                    throw F("$cacheFactory")("iid", b);
                var f = 0
                  , h = t({}, d, {
                    id: b
                })
                  , m = {}
                  , k = d && d.capacity || Number.MAX_VALUE
                  , l = {}
                  , n = null
                  , p = null;
                return a[b] = {
                    put: function(a, b) {
                        var c = l[a] || (l[a] = {
                            key: a
                        });
                        e(c);
                        if (!z(b))
                            return a in m || f++,
                            m[a] = b,
                            f > k && this.remove(p.key),
                            b
                    },
                    get: function(a) {
                        var b = l[a];
                        if (b)
                            return e(b),
                            m[a]
                    },
                    remove: function(a) {
                        var b = l[a];
                        b && (b == n && (n = b.p),
                        b == p && (p = b.n),
                        g(b.n, b.p),
                        delete l[a],
                        delete m[a],
                        f--)
                    },
                    removeAll: function() {
                        m = {};
                        f = 0;
                        l = {};
                        n = p = null
                    },
                    destroy: function() {
                        l = h = m = null;
                        delete a[b]
                    },
                    info: function() {
                        return t({}, h, {
                            size: f
                        })
                    }
                }
            }
            var a = {};
            b.info = function() {
                var b = {};
                q(a, function(a, e) {
                    b[e] = a.info()
                });
                return b
            }
            ;
            b.get = function(b) {
                return a[b]
            }
            ;
            return b
        }
    }
    function hd() {
        this.$get = ["$cacheFactory", function(b) {
            return b("templates")
        }
        ]
    }
    function jc(b, a) {
        var c = {}
          , d = "Directive"
          , e = /^\s*directive\:\s*([\d\w\-_]+)\s+(.*)$/
          , g = /(([\d\w\-_]+)(?:\:([^;]+))?;?)/
          , f = /^(on[a-z]+|formaction)$/;
        this.directive = function m(a, e) {
            xa(a, "directive");
            D(a) ? (ub(e, "directiveFactory"),
            c.hasOwnProperty(a) || (c[a] = [],
            b.factory(a + d, ["$injector", "$exceptionHandler", function(b, d) {
                var e = [];
                q(c[a], function(c, g) {
                    try {
                        var f = b.invoke(c);
                        L(f) ? f = {
                            compile: $(f)
                        } : !f.compile && f.link && (f.compile = $(f.link));
                        f.priority = f.priority || 0;
                        f.index = g;
                        f.name = f.name || a;
                        f.require = f.require || f.controller && f.name;
                        f.restrict = f.restrict || "A";
                        e.push(f)
                    } catch (m) {
                        d(m)
                    }
                });
                return e
            }
            ])),
            c[a].push(e)) : q(a, Qb(m));
            return this
        }
        ;
        this.aHrefSanitizationWhitelist = function(b) {
            return B(b) ? (a.aHrefSanitizationWhitelist(b),
            this) : a.aHrefSanitizationWhitelist()
        }
        ;
        this.imgSrcSanitizationWhitelist = function(b) {
            return B(b) ? (a.imgSrcSanitizationWhitelist(b),
            this) : a.imgSrcSanitizationWhitelist()
        }
        ;
        this.$get = ["$injector", "$interpolate", "$exceptionHandler", "$http", "$templateCache", "$parse", "$controller", "$rootScope", "$document", "$sce", "$animate", "$$sanitizeUri", function(a, b, l, n, p, s, C, y, E, u, R, H) {
            function v(a, b, c, d, e) {
                a instanceof A || (a = A(a));
                q(a, function(b, c) {
                    3 == b.nodeType && b.nodeValue.match(/\S+/) && (a[c] = A(b).wrap("<span></span>").parent()[0])
                });
                var g = N(a, b, a, c, d, e);
                ha(a, "ng-scope");
                return function(b, c, d) {
                    ub(b, "scope");
                    var e = c ? Ga.clone.call(a) : a;
                    q(d, function(a, b) {
                        e.data("$" + b + "Controller", a)
                    });
                    d = 0;
                    for (var f = e.length; d < f; d++) {
                        var m = e[d].nodeType;
                        1 !== m && 9 !== m || e.eq(d).data("$scope", b)
                    }
                    c && c(e, b);
                    g && g(b, e, e);
                    return e
                }
            }
            function ha(a, b) {
                try {
                    a.addClass(b)
                } catch (c) {}
            }
            function N(a, b, c, d, e, g) {
                function f(a, c, d, e) {
                    var g, k, s, l, n, p, I;
                    g = c.length;
                    var C = Array(g);
                    for (n = 0; n < g; n++)
                        C[n] = c[n];
                    I = n = 0;
                    for (p = m.length; n < p; I++)
                        k = C[I],
                        c = m[n++],
                        g = m[n++],
                        s = A(k),
                        c ? (c.scope ? (l = a.$new(),
                        s.data("$scope", l)) : l = a,
                        (s = c.transclude) || !e && b ? c(g, l, k, d, V(a, s || b)) : c(g, l, k, d, e)) : g && g(a, k.childNodes, r, e)
                }
                for (var m = [], k, s, l, n, p = 0; p < a.length; p++)
                    k = new Fb,
                    s = J(a[p], [], k, 0 === p ? d : r, e),
                    (g = s.length ? ia(s, a[p], k, b, c, null, [], [], g) : null) && g.scope && ha(A(a[p]), "ng-scope"),
                    k = g && g.terminal || !(l = a[p].childNodes) || !l.length ? null : N(l, g ? g.transclude : b),
                    m.push(g, k),
                    n = n || g || k,
                    g = null;
                return n ? f : null
            }
            function V(a, b) {
                return function(c, d, e) {
                    var g = !1;
                    c || (c = a.$new(),
                    g = c.$$transcluded = !0);
                    d = b(c, d, e);
                    if (g)
                        d.on("$destroy", cb(c, c.$destroy));
                    return d
                }
            }
            function J(a, b, c, d, f) {
                var k = c.$attr, m;
                switch (a.nodeType) {
                case 1:
                    T(b, ma(Ha(a).toLowerCase()), "E", d, f);
                    var s, l, n;
                    m = a.attributes;
                    for (var p = 0, C = m && m.length; p < C; p++) {
                        var y = !1
                          , R = !1;
                        s = m[p];
                        if (!M || 8 <= M || s.specified) {
                            l = s.name;
                            n = ma(l);
                            W.test(n) && (l = db(n.substr(6), "-"));
                            var v = n.replace(/(Start|End)$/, "");
                            n === v + "Start" && (y = l,
                            R = l.substr(0, l.length - 5) + "end",
                            l = l.substr(0, l.length - 6));
                            n = ma(l.toLowerCase());
                            k[n] = l;
                            c[n] = s = ba(s.value);
                            fc(a, n) && (c[n] = !0);
                            S(a, b, s, n);
                            T(b, n, "A", d, f, y, R)
                        }
                    }
                    a = a.className;
                    if (D(a) && "" !== a)
                        for (; m = g.exec(a); )
                            n = ma(m[2]),
                            T(b, n, "C", d, f) && (c[n] = ba(m[3])),
                            a = a.substr(m.index + m[0].length);
                    break;
                case 3:
                    F(b, a.nodeValue);
                    break;
                case 8:
                    try {
                        if (m = e.exec(a.nodeValue))
                            n = ma(m[1]),
                            T(b, n, "M", d, f) && (c[n] = ba(m[2]))
                    } catch (E) {}
                }
                b.sort(z);
                return b
            }
            function ca(a, b, c) {
                var d = []
                  , e = 0;
                if (b && a.hasAttribute && a.hasAttribute(b)) {
                    do {
                        if (!a)
                            throw ja("uterdir", b, c);
                        1 == a.nodeType && (a.hasAttribute(b) && e++,
                        a.hasAttribute(c) && e--);
                        d.push(a);
                        a = a.nextSibling
                    } while (0 < e)
                } else
                    d.push(a);
                return A(d)
            }
            function P(a, b, c) {
                return function(d, e, g, f, m) {
                    e = ca(e[0], b, c);
                    return a(d, e, g, f, m)
                }
            }
            function ia(a, c, d, e, g, f, m, n, p) {
                function y(a, b, c, d) {
                    if (a) {
                        c && (a = P(a, c, d));
                        a.require = G.require;
                        if (H === G || G.$$isolateScope)
                            a = kc(a, {
                                isolateScope: !0
                            });
                        m.push(a)
                    }
                    if (b) {
                        c && (b = P(b, c, d));
                        b.require = G.require;
                        if (H === G || G.$$isolateScope)
                            b = kc(b, {
                                isolateScope: !0
                            });
                        n.push(b)
                    }
                }
                function R(a, b, c) {
                    var d, e = "data", g = !1;
                    if (D(a)) {
                        for (; "^" == (d = a.charAt(0)) || "?" == d; )
                            a = a.substr(1),
                            "^" == d && (e = "inheritedData"),
                            g = g || "?" == d;
                        d = null;
                        c && "data" === e && (d = c[a]);
                        d = d || b[e]("$" + a + "Controller");
                        if (!d && !g)
                            throw ja("ctreq", a, da);
                    } else
                        K(a) && (d = [],
                        q(a, function(a) {
                            d.push(R(a, b, c))
                        }));
                    return d
                }
                function E(a, e, g, f, p) {
                    function y(a, b) {
                        var c;
                        2 > arguments.length && (b = a,
                        a = r);
                        z && (c = ca);
                        return p(a, b, c)
                    }
                    var I, v, N, u, P, J, ca = {}, hb;
                    I = c === g ? d : Tb(d, new Fb(A(g),d.$attr));
                    v = I.$$element;
                    if (H) {
                        var T = /^\s*([@=&])(\??)\s*(\w*)\s*$/;
                        f = A(g);
                        J = e.$new(!0);
                        ia && ia === H.$$originalDirective ? f.data("$isolateScope", J) : f.data("$isolateScopeNoTemplate", J);
                        ha(f, "ng-isolate-scope");
                        q(H.scope, function(a, c) {
                            var d = a.match(T) || [], g = d[3] || c, f = "?" == d[2], d = d[1], m, l, n, p;
                            J.$$isolateBindings[c] = d + g;
                            switch (d) {
                            case "@":
                                I.$observe(g, function(a) {
                                    J[c] = a
                                });
                                I.$$observers[g].$$scope = e;
                                I[g] && (J[c] = b(I[g])(e));
                                break;
                            case "=":
                                if (f && !I[g])
                                    break;
                                l = s(I[g]);
                                p = l.literal ? ua : function(a, b) {
                                    return a === b
                                }
                                ;
                                n = l.assign || function() {
                                    m = J[c] = l(e);
                                    throw ja("nonassign", I[g], H.name);
                                }
                                ;
                                m = J[c] = l(e);
                                J.$watch(function() {
                                    var a = l(e);
                                    p(a, J[c]) || (p(a, m) ? n(e, a = J[c]) : J[c] = a);
                                    return m = a
                                }, null, l.literal);
                                break;
                            case "&":
                                l = s(I[g]);
                                J[c] = function(a) {
                                    return l(e, a)
                                }
                                ;
                                break;
                            default:
                                throw ja("iscp", H.name, c, a);
                            }
                        })
                    }
                    hb = p && y;
                    V && q(V, function(a) {
                        var b = {
                            $scope: a === H || a.$$isolateScope ? J : e,
                            $element: v,
                            $attrs: I,
                            $transclude: hb
                        }, c;
                        P = a.controller;
                        "@" == P && (P = I[a.name]);
                        c = C(P, b);
                        ca[a.name] = c;
                        z || v.data("$" + a.name + "Controller", c);
                        a.controllerAs && (b.$scope[a.controllerAs] = c)
                    });
                    f = 0;
                    for (N = m.length; f < N; f++)
                        try {
                            u = m[f],
                            u(u.isolateScope ? J : e, v, I, u.require && R(u.require, v, ca), hb)
                        } catch (G) {
                            l(G, ga(v))
                        }
                    f = e;
                    H && (H.template || null === H.templateUrl) && (f = J);
                    a && a(f, g.childNodes, r, p);
                    for (f = n.length - 1; 0 <= f; f--)
                        try {
                            u = n[f],
                            u(u.isolateScope ? J : e, v, I, u.require && R(u.require, v, ca), hb)
                        } catch (B) {
                            l(B, ga(v))
                        }
                }
                p = p || {};
                var N = -Number.MAX_VALUE, u, V = p.controllerDirectives, H = p.newIsolateScopeDirective, ia = p.templateDirective;
                p = p.nonTlbTranscludeDirective;
                for (var T = !1, z = !1, t = d.$$element = A(c), G, da, U, F = e, O, M = 0, na = a.length; M < na; M++) {
                    G = a[M];
                    var Va = G.$$start
                      , S = G.$$end;
                    Va && (t = ca(c, Va, S));
                    U = r;
                    if (N > G.priority)
                        break;
                    if (U = G.scope)
                        u = u || G,
                        G.templateUrl || (x("new/isolated scope", H, G, t),
                        X(U) && (H = G));
                    da = G.name;
                    !G.templateUrl && G.controller && (U = G.controller,
                    V = V || {},
                    x("'" + da + "' controller", V[da], G, t),
                    V[da] = G);
                    if (U = G.transclude)
                        T = !0,
                        G.$$tlb || (x("transclusion", p, G, t),
                        p = G),
                        "element" == U ? (z = !0,
                        N = G.priority,
                        U = ca(c, Va, S),
                        t = d.$$element = A(Q.createComment(" " + da + ": " + d[da] + " ")),
                        c = t[0],
                        ib(g, A(va.call(U, 0)), c),
                        F = v(U, e, N, f && f.name, {
                            nonTlbTranscludeDirective: p
                        })) : (U = A(Ab(c)).contents(),
                        t.empty(),
                        F = v(U, e));
                    if (G.template)
                        if (x("template", ia, G, t),
                        ia = G,
                        U = L(G.template) ? G.template(t, d) : G.template,
                        U = Y(U),
                        G.replace) {
                            f = G;
                            U = A("<div>" + ba(U) + "</div>").contents();
                            c = U[0];
                            if (1 != U.length || 1 !== c.nodeType)
                                throw ja("tplrt", da, "");
                            ib(g, t, c);
                            na = {
                                $attr: {}
                            };
                            U = J(c, [], na);
                            var W = a.splice(M + 1, a.length - (M + 1));
                            H && ic(U);
                            a = a.concat(U).concat(W);
                            B(d, na);
                            na = a.length
                        } else
                            t.html(U);
                    if (G.templateUrl)
                        x("template", ia, G, t),
                        ia = G,
                        G.replace && (f = G),
                        E = w(a.splice(M, a.length - M), t, d, g, F, m, n, {
                            controllerDirectives: V,
                            newIsolateScopeDirective: H,
                            templateDirective: ia,
                            nonTlbTranscludeDirective: p
                        }),
                        na = a.length;
                    else if (G.compile)
                        try {
                            O = G.compile(t, d, F),
                            L(O) ? y(null, O, Va, S) : O && y(O.pre, O.post, Va, S)
                        } catch (Z) {
                            l(Z, ga(t))
                        }
                    G.terminal && (E.terminal = !0,
                    N = Math.max(N, G.priority))
                }
                E.scope = u && !0 === u.scope;
                E.transclude = T && F;
                return E
            }
            function ic(a) {
                for (var b = 0, c = a.length; b < c; b++)
                    a[b] = Sb(a[b], {
                        $$isolateScope: !0
                    })
            }
            function T(b, e, g, f, k, s, n) {
                if (e === k)
                    return null;
                k = null;
                if (c.hasOwnProperty(e)) {
                    var p;
                    e = a.get(e + d);
                    for (var C = 0, y = e.length; C < y; C++)
                        try {
                            p = e[C],
                            (f === r || f > p.priority) && -1 != p.restrict.indexOf(g) && (s && (p = Sb(p, {
                                $$start: s,
                                $$end: n
                            })),
                            b.push(p),
                            k = p)
                        } catch (v) {
                            l(v)
                        }
                }
                return k
            }
            function B(a, b) {
                var c = b.$attr
                  , d = a.$attr
                  , e = a.$$element;
                q(a, function(d, e) {
                    "$" != e.charAt(0) && (b[e] && (d += ("style" === e ? ";" : " ") + b[e]),
                    a.$set(e, d, !0, c[e]))
                });
                q(b, function(b, g) {
                    "class" == g ? (ha(e, b),
                    a["class"] = (a["class"] ? a["class"] + " " : "") + b) : "style" == g ? (e.attr("style", e.attr("style") + ";" + b),
                    a.style = (a.style ? a.style + ";" : "") + b) : "$" == g.charAt(0) || a.hasOwnProperty(g) || (a[g] = b,
                    d[g] = c[g])
                })
            }
            function w(a, b, c, d, e, g, f, m) {
                var k = [], s, l, C = b[0], y = a.shift(), v = t({}, y, {
                    templateUrl: null,
                    transclude: null,
                    replace: null,
                    $$originalDirective: y
                }), R = L(y.templateUrl) ? y.templateUrl(b, c) : y.templateUrl;
                b.empty();
                n.get(u.getTrustedResourceUrl(R), {
                    cache: p
                }).success(function(n) {
                    var p, E;
                    n = Y(n);
                    if (y.replace) {
                        n = A("<div>" + ba(n) + "</div>").contents();
                        p = n[0];
                        if (1 != n.length || 1 !== p.nodeType)
                            throw ja("tplrt", y.name, R);
                        n = {
                            $attr: {}
                        };
                        ib(d, b, p);
                        var u = J(p, [], n);
                        X(y.scope) && ic(u);
                        a = u.concat(a);
                        B(c, n)
                    } else
                        p = C,
                        b.html(n);
                    a.unshift(v);
                    s = ia(a, p, c, e, b, y, g, f, m);
                    q(d, function(a, c) {
                        a == p && (d[c] = b[0])
                    });
                    for (l = N(b[0].childNodes, e); k.length; ) {
                        n = k.shift();
                        E = k.shift();
                        var H = k.shift()
                          , ha = k.shift()
                          , u = b[0];
                        E !== C && (u = Ab(p),
                        ib(H, A(E), u));
                        E = s.transclude ? V(n, s.transclude) : ha;
                        s(l, n, u, d, E)
                    }
                    k = null
                }).error(function(a, b, c, d) {
                    throw ja("tpload", d.url);
                });
                return function(a, b, c, d, e) {
                    k ? (k.push(b),
                    k.push(c),
                    k.push(d),
                    k.push(e)) : s(l, b, c, d, e)
                }
            }
            function z(a, b) {
                var c = b.priority - a.priority;
                return 0 !== c ? c : a.name !== b.name ? a.name < b.name ? -1 : 1 : a.index - b.index
            }
            function x(a, b, c, d) {
                if (b)
                    throw ja("multidir", b.name, c.name, a, ga(d));
            }
            function F(a, c) {
                var d = b(c, !0);
                d && a.push({
                    priority: 0,
                    compile: $(function(a, b) {
                        var c = b.parent()
                          , e = c.data("$binding") || [];
                        e.push(d);
                        ha(c.data("$binding", e), "ng-binding");
                        a.$watch(d, function(a) {
                            b[0].nodeValue = a
                        })
                    })
                })
            }
            function O(a, b) {
                if ("srcdoc" == b)
                    return u.HTML;
                var c = Ha(a);
                if ("xlinkHref" == b || "FORM" == c && "action" == b || "IMG" != c && ("src" == b || "ngSrc" == b))
                    return u.RESOURCE_URL
            }
            function S(a, c, d, e) {
                var g = b(d, !0);
                if (g) {
                    if ("multiple" === e && "SELECT" === Ha(a))
                        throw ja("selmulti", ga(a));
                    c.push({
                        priority: 100,
                        compile: function() {
                            return {
                                pre: function(c, d, m) {
                                    d = m.$$observers || (m.$$observers = {});
                                    if (f.test(e))
                                        throw ja("nodomevents");
                                    if (g = b(m[e], !0, O(a, e)))
                                        m[e] = g(c),
                                        (d[e] || (d[e] = [])).$$inter = !0,
                                        (m.$$observers && m.$$observers[e].$$scope || c).$watch(g, function(a, b) {
                                            "class" === e && a != b ? m.$updateClass(a, b) : m.$set(e, a)
                                        })
                                }
                            }
                        }
                    })
                }
            }
            function ib(a, b, c) {
                var d = b[0], e = b.length, g = d.parentNode, f, m;
                if (a)
                    for (f = 0,
                    m = a.length; f < m; f++)
                        if (a[f] == d) {
                            a[f++] = c;
                            m = f + e - 1;
                            for (var k = a.length; f < k; f++,
                            m++)
                                m < k ? a[f] = a[m] : delete a[f];
                            a.length -= e - 1;
                            break
                        }
                g && g.replaceChild(c, d);
                a = Q.createDocumentFragment();
                a.appendChild(d);
                c[A.expando] = d[A.expando];
                d = 1;
                for (e = b.length; d < e; d++)
                    g = b[d],
                    A(g).remove(),
                    a.appendChild(g),
                    delete b[d];
                b[0] = c;
                b.length = 1
            }
            function kc(a, b) {
                return t(function() {
                    return a.apply(null, arguments)
                }, a, b)
            }
            var Fb = function(a, b) {
                this.$$element = a;
                this.$attr = b || {}
            };
            Fb.prototype = {
                $normalize: ma,
                $addClass: function(a) {
                    a && 0 < a.length && R.addClass(this.$$element, a)
                },
                $removeClass: function(a) {
                    a && 0 < a.length && R.removeClass(this.$$element, a)
                },
                $updateClass: function(a, b) {
                    this.$removeClass(lc(b, a));
                    this.$addClass(lc(a, b))
                },
                $set: function(a, b, c, d) {
                    var e = fc(this.$$element[0], a);
                    e && (this.$$element.prop(a, b),
                    d = e);
                    this[a] = b;
                    d ? this.$attr[a] = d : (d = this.$attr[a]) || (this.$attr[a] = d = db(a, "-"));
                    e = Ha(this.$$element);
                    if ("A" === e && "href" === a || "IMG" === e && "src" === a)
                        this[a] = b = H(b, "src" === a);
                    !1 !== c && (null === b || b === r ? this.$$element.removeAttr(d) : this.$$element.attr(d, b));
                    (c = this.$$observers) && q(c[a], function(a) {
                        try {
                            a(b)
                        } catch (c) {
                            l(c)
                        }
                    })
                },
                $observe: function(a, b) {
                    var c = this
                      , d = c.$$observers || (c.$$observers = {})
                      , e = d[a] || (d[a] = []);
                    e.push(b);
                    y.$evalAsync(function() {
                        e.$$inter || b(c[a])
                    });
                    return b
                }
            };
            var da = b.startSymbol()
              , na = b.endSymbol()
              , Y = "{{" == da || "}}" == na ? Ba : function(a) {
                return a.replace(/\{\{/g, da).replace(/}}/g, na)
            }
              , W = /^ngAttr[A-Z]/;
            return v
        }
        ]
    }
    function ma(b) {
        return Qa(b.replace(id, ""))
    }
    function lc(b, a) {
        var c = ""
          , d = b.split(/\s+/)
          , e = a.split(/\s+/)
          , g = 0;
        a: for (; g < d.length; g++) {
            for (var f = d[g], h = 0; h < e.length; h++)
                if (f == e[h])
                    continue a;
            c += (0 < c.length ? " " : "") + f
        }
        return c
    }
    function jd() {
        var b = {}
          , a = /^(\S+)(\s+as\s+(\w+))?$/;
        this.register = function(a, d) {
            xa(a, "controller");
            X(a) ? t(b, a) : b[a] = d
        }
        ;
        this.$get = ["$injector", "$window", function(c, d) {
            return function(e, g) {
                var f, h, m;
                D(e) && (f = e.match(a),
                h = f[1],
                m = f[3],
                e = b.hasOwnProperty(h) ? b[h] : vb(g.$scope, h, !0) || vb(d, h, !0),
                Pa(e, h, !0));
                f = c.instantiate(e, g);
                if (m) {
                    if (!g || "object" != typeof g.$scope)
                        throw F("$controller")("noscp", h || e.name, m);
                    g.$scope[m] = f
                }
                return f
            }
        }
        ]
    }
    function kd() {
        this.$get = ["$window", function(b) {
            return A(b.document)
        }
        ]
    }
    function ld() {
        this.$get = ["$log", function(b) {
            return function(a, c) {
                b.error.apply(b, arguments)
            }
        }
        ]
    }
    function mc(b) {
        var a = {}, c, d, e;
        if (!b)
            return a;
        q(b.split("\n"), function(b) {
            e = b.indexOf(":");
            c = x(ba(b.substr(0, e)));
            d = ba(b.substr(e + 1));
            c && (a[c] = a[c] ? a[c] + (", " + d) : d)
        });
        return a
    }
    function nc(b) {
        var a = X(b) ? b : r;
        return function(c) {
            a || (a = mc(b));
            return c ? a[x(c)] || null : a
        }
    }
    function oc(b, a, c) {
        if (L(c))
            return c(b, a);
        q(c, function(c) {
            b = c(b, a)
        });
        return b
    }
    function md() {
        var b = /^\s*(\[|\{[^\{])/
          , a = /[\}\]]\s*$/
          , c = /^\)\]\}',?\n/
          , d = {
            "Content-Type": "application/json;charset=utf-8"
        }
          , e = this.defaults = {
            transformResponse: [function(d) {
                D(d) && (d = d.replace(c, ""),
                b.test(d) && a.test(d) && (d = Vb(d)));
                return d
            }
            ],
            transformRequest: [function(a) {
                return X(a) && "[object File]" !== $a.call(a) ? qa(a) : a
            }
            ],
            headers: {
                common: {
                    Accept: "application/json, text/plain, */*"
                },
                post: aa(d),
                put: aa(d),
                patch: aa(d)
            },
            xsrfCookieName: "XSRF-TOKEN",
            xsrfHeaderName: "X-XSRF-TOKEN"
        }
          , g = this.interceptors = []
          , f = this.responseInterceptors = [];
        this.$get = ["$httpBackend", "$browser", "$cacheFactory", "$rootScope", "$q", "$injector", function(a, b, c, d, n, p) {
            function s(a) {
                function c(a) {
                    var b = t({}, a, {
                        data: oc(a.data, a.headers, d.transformResponse)
                    });
                    return 200 <= a.status && 300 > a.status ? b : n.reject(b)
                }
                var d = {
                    transformRequest: e.transformRequest,
                    transformResponse: e.transformResponse
                }
                  , g = function(a) {
                    function b(a) {
                        var c;
                        q(a, function(b, d) {
                            L(b) && (c = b(),
                            null != c ? a[d] = c : delete a[d])
                        })
                    }
                    var c = e.headers, d = t({}, a.headers), g, f, c = t({}, c.common, c[x(a.method)]);
                    b(c);
                    b(d);
                    a: for (g in c) {
                        a = x(g);
                        for (f in d)
                            if (x(f) === a)
                                continue a;
                        d[g] = c[g]
                    }
                    return d
                }(a);
                t(d, a);
                d.headers = g;
                d.method = Ia(d.method);
                (a = Gb(d.url) ? b.cookies()[d.xsrfCookieName || e.xsrfCookieName] : r) && (g[d.xsrfHeaderName || e.xsrfHeaderName] = a);
                var f = [function(a) {
                    g = a.headers;
                    var b = oc(a.data, nc(g), a.transformRequest);
                    z(a.data) && q(g, function(a, b) {
                        "content-type" === x(b) && delete g[b]
                    });
                    z(a.withCredentials) && !z(e.withCredentials) && (a.withCredentials = e.withCredentials);
                    return C(a, b, g).then(c, c)
                }
                , r]
                  , h = n.when(d);
                for (q(u, function(a) {
                    (a.request || a.requestError) && f.unshift(a.request, a.requestError);
                    (a.response || a.responseError) && f.push(a.response, a.responseError)
                }); f.length; ) {
                    a = f.shift();
                    var k = f.shift()
                      , h = h.then(a, k)
                }
                h.success = function(a) {
                    h.then(function(b) {
                        a(b.data, b.status, b.headers, d)
                    });
                    return h
                }
                ;
                h.error = function(a) {
                    h.then(null, function(b) {
                        a(b.data, b.status, b.headers, d)
                    });
                    return h
                }
                ;
                return h
            }
            function C(b, c, g) {
                function f(a, b, c) {
                    u && (200 <= a && 300 > a ? u.put(r, [a, b, mc(c)]) : u.remove(r));
                    m(b, a, c);
                    d.$$phase || d.$apply()
                }
                function m(a, c, d) {
                    c = Math.max(c, 0);
                    (200 <= c && 300 > c ? p.resolve : p.reject)({
                        data: a,
                        status: c,
                        headers: nc(d),
                        config: b
                    })
                }
                function k() {
                    var a = bb(s.pendingRequests, b);
                    -1 !== a && s.pendingRequests.splice(a, 1)
                }
                var p = n.defer(), C = p.promise, u, q, r = y(b.url, b.params);
                s.pendingRequests.push(b);
                C.then(k, k);
                (b.cache || e.cache) && (!1 !== b.cache && "GET" == b.method) && (u = X(b.cache) ? b.cache : X(e.cache) ? e.cache : E);
                if (u)
                    if (q = u.get(r),
                    B(q)) {
                        if (q.then)
                            return q.then(k, k),
                            q;
                        K(q) ? m(q[1], q[0], aa(q[2])) : m(q, 200, {})
                    } else
                        u.put(r, C);
                z(q) && a(b.method, r, c, f, g, b.timeout, b.withCredentials, b.responseType);
                return C
            }
            function y(a, b) {
                if (!b)
                    return a;
                var c = [];
                Pc(b, function(a, b) {
                    null === a || z(a) || (K(a) || (a = [a]),
                    q(a, function(a) {
                        X(a) && (a = qa(a));
                        c.push(wa(b) + "=" + wa(a))
                    }))
                });
                return a + (-1 == a.indexOf("?") ? "?" : "&") + c.join("&")
            }
            var E = c("$http")
              , u = [];
            q(g, function(a) {
                u.unshift(D(a) ? p.get(a) : p.invoke(a))
            });
            q(f, function(a, b) {
                var c = D(a) ? p.get(a) : p.invoke(a);
                u.splice(b, 0, {
                    response: function(a) {
                        return c(n.when(a))
                    },
                    responseError: function(a) {
                        return c(n.reject(a))
                    }
                })
            });
            s.pendingRequests = [];
            (function(a) {
                q(arguments, function(a) {
                    s[a] = function(b, c) {
                        return s(t(c || {}, {
                            method: a,
                            url: b
                        }))
                    }
                })
            }
            )("get", "delete", "head", "jsonp");
            (function(a) {
                q(arguments, function(a) {
                    s[a] = function(b, c, d) {
                        return s(t(d || {}, {
                            method: a,
                            url: b,
                            data: c
                        }))
                    }
                })
            }
            )("post", "put");
            s.defaults = e;
            return s
        }
        ]
    }
    function nd(b) {
        return 8 >= M && "patch" === x(b) ? new ActiveXObject("Microsoft.XMLHTTP") : new Z.XMLHttpRequest
    }
    function od() {
        this.$get = ["$browser", "$window", "$document", function(b, a, c) {
            return pd(b, nd, b.defer, a.angular.callbacks, c[0])
        }
        ]
    }
    function pd(b, a, c, d, e) {
        function g(a, b) {
            var c = e.createElement("script")
              , d = function() {
                c.onreadystatechange = c.onload = c.onerror = null;
                e.body.removeChild(c);
                b && b()
            };
            c.type = "text/javascript";
            c.src = a;
            M && 8 >= M ? c.onreadystatechange = function() {
                /loaded|complete/.test(c.readyState) && d()
            }
            : c.onload = c.onerror = function() {
                d()
            }
            ;
            e.body.appendChild(c);
            return d
        }
        var f = -1;
        return function(e, m, k, l, n, p, s, C) {
            function y() {
                u = f;
                H && H();
                v && v.abort()
            }
            function E(a, d, e, g) {
                r && c.cancel(r);
                H = v = null;
                d = 0 === d ? e ? 200 : 404 : d;
                a(1223 == d ? 204 : d, e, g);
                b.$$completeOutstandingRequest(w)
            }
            var u;
            b.$$incOutstandingRequestCount();
            m = m || b.url();
            if ("jsonp" == x(e)) {
                var R = "_" + (d.counter++).toString(36);
                d[R] = function(a) {
                    d[R].data = a
                }
                ;
                var H = g(m.replace("JSON_CALLBACK", "angular.callbacks." + R), function() {
                    d[R].data ? E(l, 200, d[R].data) : E(l, u || -2);
                    d[R] = Ca.noop
                })
            } else {
                var v = a(e);
                v.open(e, m, !0);
                q(n, function(a, b) {
                    B(a) && v.setRequestHeader(b, a)
                });
                v.onreadystatechange = function() {
                    if (v && 4 == v.readyState) {
                        var a = null
                          , b = null;
                        u !== f && (a = v.getAllResponseHeaders(),
                        b = "response"in v ? v.response : v.responseText);
                        E(l, u || v.status, b, a)
                    }
                }
                ;
                s && (v.withCredentials = !0);
                C && (v.responseType = C);
                v.send(k || null)
            }
            if (0 < p)
                var r = c(y, p);
            else
                p && p.then && p.then(y)
        }
    }
    function qd() {
        var b = "{{"
          , a = "}}";
        this.startSymbol = function(a) {
            return a ? (b = a,
            this) : b
        }
        ;
        this.endSymbol = function(b) {
            return b ? (a = b,
            this) : a
        }
        ;
        this.$get = ["$parse", "$exceptionHandler", "$sce", function(c, d, e) {
            function g(g, k, l) {
                for (var n, p, s = 0, C = [], y = g.length, E = !1, u = []; s < y; )
                    -1 != (n = g.indexOf(b, s)) && -1 != (p = g.indexOf(a, n + f)) ? (s != n && C.push(g.substring(s, n)),
                    C.push(s = c(E = g.substring(n + f, p))),
                    s.exp = E,
                    s = p + h,
                    E = !0) : (s != y && C.push(g.substring(s)),
                    s = y);
                (y = C.length) || (C.push(""),
                y = 1);
                if (l && 1 < C.length)
                    throw pc("noconcat", g);
                if (!k || E)
                    return u.length = y,
                    s = function(a) {
                        try {
                            for (var b = 0, c = y, f; b < c; b++)
                                "function" == typeof (f = C[b]) && (f = f(a),
                                f = l ? e.getTrusted(l, f) : e.valueOf(f),
                                null === f || z(f) ? f = "" : "string" != typeof f && (f = qa(f))),
                                u[b] = f;
                            return u.join("")
                        } catch (h) {
                            a = pc("interr", g, h.toString()),
                            d(a)
                        }
                    }
                    ,
                    s.exp = g,
                    s.parts = C,
                    s
            }
            var f = b.length
              , h = a.length;
            g.startSymbol = function() {
                return b
            }
            ;
            g.endSymbol = function() {
                return a
            }
            ;
            return g
        }
        ]
    }
    function rd() {
        this.$get = ["$rootScope", "$window", "$q", function(b, a, c) {
            function d(d, f, h, m) {
                var k = a.setInterval
                  , l = a.clearInterval
                  , n = c.defer()
                  , p = n.promise
                  , s = 0
                  , C = B(m) && !m;
                h = B(h) ? h : 0;
                p.then(null, null, d);
                p.$$intervalId = k(function() {
                    n.notify(s++);
                    0 < h && s >= h && (n.resolve(s),
                    l(p.$$intervalId),
                    delete e[p.$$intervalId]);
                    C || b.$apply()
                }, f);
                e[p.$$intervalId] = n;
                return p
            }
            var e = {};
            d.cancel = function(a) {
                return a && a.$$intervalId in e ? (e[a.$$intervalId].reject("canceled"),
                clearInterval(a.$$intervalId),
                delete e[a.$$intervalId],
                !0) : !1
            }
            ;
            return d
        }
        ]
    }
    function sd() {
        this.$get = function() {
            return {
                id: "en-us",
                NUMBER_FORMATS: {
                    DECIMAL_SEP: ".",
                    GROUP_SEP: ",",
                    PATTERNS: [{
                        minInt: 1,
                        minFrac: 0,
                        maxFrac: 3,
                        posPre: "",
                        posSuf: "",
                        negPre: "-",
                        negSuf: "",
                        gSize: 3,
                        lgSize: 3
                    }, {
                        minInt: 1,
                        minFrac: 2,
                        maxFrac: 2,
                        posPre: "\u00a4",
                        posSuf: "",
                        negPre: "(\u00a4",
                        negSuf: ")",
                        gSize: 3,
                        lgSize: 3
                    }],
                    CURRENCY_SYM: "$"
                },
                DATETIME_FORMATS: {
                    MONTH: "January February March April May June July August September October November December".split(" "),
                    SHORTMONTH: "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec".split(" "),
                    DAY: "Sunday Monday Tuesday Wednesday Thursday Friday Saturday".split(" "),
                    SHORTDAY: "Sun Mon Tue Wed Thu Fri Sat".split(" "),
                    AMPMS: ["AM", "PM"],
                    medium: "MMM d, y h:mm:ss a",
                    "short": "M/d/yy h:mm a",
                    fullDate: "EEEE, MMMM d, y",
                    longDate: "MMMM d, y",
                    mediumDate: "MMM d, y",
                    shortDate: "M/d/yy",
                    mediumTime: "h:mm:ss a",
                    shortTime: "h:mm a"
                },
                pluralCat: function(b) {
                    return 1 === b ? "one" : "other"
                }
            }
        }
    }
    function qc(b) {
        b = b.split("/");
        for (var a = b.length; a--; )
            b[a] = tb(b[a]);
        return b.join("/")
    }
    function rc(b, a, c) {
        b = ya(b, c);
        a.$$protocol = b.protocol;
        a.$$host = b.hostname;
        a.$$port = S(b.port) || td[b.protocol] || null
    }
    function sc(b, a, c) {
        var d = "/" !== b.charAt(0);
        d && (b = "/" + b);
        b = ya(b, c);
        a.$$path = decodeURIComponent(d && "/" === b.pathname.charAt(0) ? b.pathname.substring(1) : b.pathname);
        a.$$search = Xb(b.search);
        a.$$hash = decodeURIComponent(b.hash);
        a.$$path && "/" != a.$$path.charAt(0) && (a.$$path = "/" + a.$$path)
    }
    function oa(b, a) {
        if (0 === a.indexOf(b))
            return a.substr(b.length)
    }
    function Wa(b) {
        var a = b.indexOf("#");
        return -1 == a ? b : b.substr(0, a)
    }
    function Hb(b) {
        return b.substr(0, Wa(b).lastIndexOf("/") + 1)
    }
    function tc(b, a) {
        this.$$html5 = !0;
        a = a || "";
        var c = Hb(b);
        rc(b, this, b);
        this.$$parse = function(a) {
            var e = oa(c, a);
            if (!D(e))
                throw Ib("ipthprfx", a, c);
            sc(e, this, b);
            this.$$path || (this.$$path = "/");
            this.$$compose()
        }
        ;
        this.$$compose = function() {
            var a = Yb(this.$$search)
              , b = this.$$hash ? "#" + tb(this.$$hash) : "";
            this.$$url = qc(this.$$path) + (a ? "?" + a : "") + b;
            this.$$absUrl = c + this.$$url.substr(1)
        }
        ;
        this.$$rewrite = function(d) {
            var e;
            if ((e = oa(b, d)) !== r)
                return d = e,
                (e = oa(a, e)) !== r ? c + (oa("/", e) || e) : b + d;
            if ((e = oa(c, d)) !== r)
                return c + e;
            if (c == d + "/")
                return c
        }
    }
    function Jb(b, a) {
        var c = Hb(b);
        rc(b, this, b);
        this.$$parse = function(d) {
            var e = oa(b, d) || oa(c, d)
              , e = "#" == e.charAt(0) ? oa(a, e) : this.$$html5 ? e : "";
            if (!D(e))
                throw Ib("ihshprfx", d, a);
            sc(e, this, b);
            d = this.$$path;
            var g = /^\/?.*?:(\/.*)/;
            0 === e.indexOf(b) && (e = e.replace(b, ""));
            g.exec(e) || (d = (e = g.exec(d)) ? e[1] : d);
            this.$$path = d;
            this.$$compose()
        }
        ;
        this.$$compose = function() {
            var c = Yb(this.$$search)
              , e = this.$$hash ? "#" + tb(this.$$hash) : "";
            this.$$url = qc(this.$$path) + (c ? "?" + c : "") + e;
            this.$$absUrl = b + (this.$$url ? a + this.$$url : "")
        }
        ;
        this.$$rewrite = function(a) {
            if (Wa(b) == Wa(a))
                return a
        }
    }
    function uc(b, a) {
        this.$$html5 = !0;
        Jb.apply(this, arguments);
        var c = Hb(b);
        this.$$rewrite = function(d) {
            var e;
            if (b == Wa(d))
                return d;
            if (e = oa(c, d))
                return b + a + e;
            if (c === d + "/")
                return c
        }
    }
    function jb(b) {
        return function() {
            return this[b]
        }
    }
    function vc(b, a) {
        return function(c) {
            if (z(c))
                return this[b];
            this[b] = a(c);
            this.$$compose();
            return this
        }
    }
    function ud() {
        var b = ""
          , a = !1;
        this.hashPrefix = function(a) {
            return B(a) ? (b = a,
            this) : b
        }
        ;
        this.html5Mode = function(b) {
            return B(b) ? (a = b,
            this) : a
        }
        ;
        this.$get = ["$rootScope", "$browser", "$sniffer", "$rootElement", function(c, d, e, g) {
            function f(a) {
                c.$broadcast("$locationChangeSuccess", h.absUrl(), a)
            }
            var h, m = d.baseHref(), k = d.url();
            a ? (m = k.substring(0, k.indexOf("/", k.indexOf("//") + 2)) + (m || "/"),
            e = e.history ? tc : uc) : (m = Wa(k),
            e = Jb);
            h = new e(m,"#" + b);
            h.$$parse(h.$$rewrite(k));
            g.on("click", function(a) {
                if (!a.ctrlKey && !a.metaKey && 2 != a.which) {
                    for (var b = A(a.target); "a" !== x(b[0].nodeName); )
                        if (b[0] === g[0] || !(b = b.parent())[0])
                            return;
                    var e = b.prop("href");
                    X(e) && "[object SVGAnimatedString]" === e.toString() && (e = ya(e.animVal).href);
                    var f = h.$$rewrite(e);
                    e && (!b.attr("target") && f && !a.isDefaultPrevented()) && (a.preventDefault(),
                    f != d.url() && (h.$$parse(f),
                    c.$apply(),
                    Z.angular["ff-684208-preventDefault"] = !0))
                }
            });
            h.absUrl() != k && d.url(h.absUrl(), !0);
            d.onUrlChange(function(a) {
                h.absUrl() != a && (c.$evalAsync(function() {
                    var b = h.absUrl();
                    h.$$parse(a);
                    c.$broadcast("$locationChangeStart", a, b).defaultPrevented ? (h.$$parse(b),
                    d.url(b)) : f(b)
                }),
                c.$$phase || c.$digest())
            });
            var l = 0;
            c.$watch(function() {
                var a = d.url()
                  , b = h.$$replace;
                l && a == h.absUrl() || (l++,
                c.$evalAsync(function() {
                    c.$broadcast("$locationChangeStart", h.absUrl(), a).defaultPrevented ? h.$$parse(a) : (d.url(h.absUrl(), b),
                    f(a))
                }));
                h.$$replace = !1;
                return l
            });
            return h
        }
        ]
    }
    function vd() {
        var b = !0
          , a = this;
        this.debugEnabled = function(a) {
            return B(a) ? (b = a,
            this) : b
        }
        ;
        this.$get = ["$window", function(c) {
            function d(a) {
                a instanceof Error && (a.stack ? a = a.message && -1 === a.stack.indexOf(a.message) ? "Error: " + a.message + "\n" + a.stack : a.stack : a.sourceURL && (a = a.message + "\n" + a.sourceURL + ":" + a.line));
                return a
            }
            function e(a) {
                var b = c.console || {}
                  , e = b[a] || b.log || w;
                a = !1;
                try {
                    a = !!e.apply
                } catch (m) {}
                return a ? function() {
                    var a = [];
                    q(arguments, function(b) {
                        a.push(d(b))
                    });
                    return e.apply(b, a)
                }
                : function(a, b) {
                    e(a, null == b ? "" : b)
                }
            }
            return {
                log: e("log"),
                info: e("info"),
                warn: e("warn"),
                error: e("error"),
                debug: function() {
                    var c = e("debug");
                    return function() {
                        b && c.apply(a, arguments)
                    }
                }()
            }
        }
        ]
    }
    function ea(b, a) {
        if ("constructor" === b)
            throw za("isecfld", a);
        return b
    }
    function Xa(b, a) {
        if (b) {
            if (b.constructor === b)
                throw za("isecfn", a);
            if (b.document && b.location && b.alert && b.setInterval)
                throw za("isecwindow", a);
            if (b.children && (b.nodeName || b.on && b.find))
                throw za("isecdom", a);
        }
        return b
    }
    function kb(b, a, c, d, e) {
        e = e || {};
        a = a.split(".");
        for (var g, f = 0; 1 < a.length; f++) {
            g = ea(a.shift(), d);
            var h = b[g];
            h || (h = {},
            b[g] = h);
            b = h;
            b.then && e.unwrapPromises && (ra(d),
            "$$v"in b || function(a) {
                a.then(function(b) {
                    a.$$v = b
                })
            }(b),
            b.$$v === r && (b.$$v = {}),
            b = b.$$v)
        }
        g = ea(a.shift(), d);
        return b[g] = c
    }
    function wc(b, a, c, d, e, g, f) {
        ea(b, g);
        ea(a, g);
        ea(c, g);
        ea(d, g);
        ea(e, g);
        return f.unwrapPromises ? function(f, m) {
            var k = m && m.hasOwnProperty(b) ? m : f, l;
            if (null == k)
                return k;
            (k = k[b]) && k.then && (ra(g),
            "$$v"in k || (l = k,
            l.$$v = r,
            l.then(function(a) {
                l.$$v = a
            })),
            k = k.$$v);
            if (!a)
                return k;
            if (null == k)
                return r;
            (k = k[a]) && k.then && (ra(g),
            "$$v"in k || (l = k,
            l.$$v = r,
            l.then(function(a) {
                l.$$v = a
            })),
            k = k.$$v);
            if (!c)
                return k;
            if (null == k)
                return r;
            (k = k[c]) && k.then && (ra(g),
            "$$v"in k || (l = k,
            l.$$v = r,
            l.then(function(a) {
                l.$$v = a
            })),
            k = k.$$v);
            if (!d)
                return k;
            if (null == k)
                return r;
            (k = k[d]) && k.then && (ra(g),
            "$$v"in k || (l = k,
            l.$$v = r,
            l.then(function(a) {
                l.$$v = a
            })),
            k = k.$$v);
            if (!e)
                return k;
            if (null == k)
                return r;
            (k = k[e]) && k.then && (ra(g),
            "$$v"in k || (l = k,
            l.$$v = r,
            l.then(function(a) {
                l.$$v = a
            })),
            k = k.$$v);
            return k
        }
        : function(g, f) {
            var k = f && f.hasOwnProperty(b) ? f : g;
            if (null == k)
                return k;
            k = k[b];
            if (!a)
                return k;
            if (null == k)
                return r;
            k = k[a];
            if (!c)
                return k;
            if (null == k)
                return r;
            k = k[c];
            if (!d)
                return k;
            if (null == k)
                return r;
            k = k[d];
            return e ? null == k ? r : k = k[e] : k
        }
    }
    function wd(b, a) {
        ea(b, a);
        return function(a, d) {
            return null == a ? r : (d && d.hasOwnProperty(b) ? d : a)[b]
        }
    }
    function xd(b, a, c) {
        ea(b, c);
        ea(a, c);
        return function(c, e) {
            if (null == c)
                return r;
            c = (e && e.hasOwnProperty(b) ? e : c)[b];
            return null == c ? r : c[a]
        }
    }
    function xc(b, a, c) {
        if (Kb.hasOwnProperty(b))
            return Kb[b];
        var d = b.split("."), e = d.length, g;
        if (a.unwrapPromises || 1 !== e)
            if (a.unwrapPromises || 2 !== e)
                if (a.csp)
                    g = 6 > e ? wc(d[0], d[1], d[2], d[3], d[4], c, a) : function(b, g) {
                        var f = 0, h;
                        do
                            h = wc(d[f++], d[f++], d[f++], d[f++], d[f++], c, a)(b, g),
                            g = r,
                            b = h;
                        while (f < e);
                        return h
                    }
                    ;
                else {
                    var f = "var p;\n";
                    q(d, function(b, d) {
                        ea(b, c);
                        f += "if(s == null) return undefined;\ns=" + (d ? "s" : '((k&&k.hasOwnProperty("' + b + '"))?k:s)') + '["' + b + '"];\n' + (a.unwrapPromises ? 'if (s && s.then) {\n pw("' + c.replace(/(["\r\n])/g, "\\$1") + '");\n if (!("$$v" in s)) {\n p=s;\n p.$$v = undefined;\n p.then(function(v) {p.$$v=v;});\n}\n s=s.$$v\n}\n' : "")
                    });
                    var f = f + "return s;"
                      , h = new Function("s","k","pw",f);
                    h.toString = $(f);
                    g = a.unwrapPromises ? function(a, b) {
                        return h(a, b, ra)
                    }
                    : h
                }
            else
                g = xd(d[0], d[1], c);
        else
            g = wd(d[0], c);
        "hasOwnProperty" !== b && (Kb[b] = g);
        return g
    }
    function yd() {
        var b = {}
          , a = {
            csp: !1,
            unwrapPromises: !1,
            logPromiseWarnings: !0
        };
        this.unwrapPromises = function(b) {
            return B(b) ? (a.unwrapPromises = !!b,
            this) : a.unwrapPromises
        }
        ;
        this.logPromiseWarnings = function(b) {
            return B(b) ? (a.logPromiseWarnings = b,
            this) : a.logPromiseWarnings
        }
        ;
        this.$get = ["$filter", "$sniffer", "$log", function(c, d, e) {
            a.csp = d.csp;
            ra = function(b) {
                a.logPromiseWarnings && !yc.hasOwnProperty(b) && (yc[b] = !0,
                e.warn("[$parse] Promise found in the expression `" + b + "`. Automatic unwrapping of promises in Angular expressions is deprecated."))
            }
            ;
            return function(d) {
                var e;
                switch (typeof d) {
                case "string":
                    if (b.hasOwnProperty(d))
                        return b[d];
                    e = new Lb(a);
                    e = (new Ya(e,c,a)).parse(d, !1);
                    "hasOwnProperty" !== d && (b[d] = e);
                    return e;
                case "function":
                    return d;
                default:
                    return w
                }
            }
        }
        ]
    }
    function zd() {
        this.$get = ["$rootScope", "$exceptionHandler", function(b, a) {
            return Ad(function(a) {
                b.$evalAsync(a)
            }, a)
        }
        ]
    }
    function Ad(b, a) {
        function c(a) {
            return a
        }
        function d(a) {
            return f(a)
        }
        var e = function() {
            var h = [], m, k;
            return k = {
                resolve: function(a) {
                    if (h) {
                        var c = h;
                        h = r;
                        m = g(a);
                        c.length && b(function() {
                            for (var a, b = 0, d = c.length; b < d; b++)
                                a = c[b],
                                m.then(a[0], a[1], a[2])
                        })
                    }
                },
                reject: function(a) {
                    k.resolve(f(a))
                },
                notify: function(a) {
                    if (h) {
                        var c = h;
                        h.length && b(function() {
                            for (var b, d = 0, e = c.length; d < e; d++)
                                b = c[d],
                                b[2](a)
                        })
                    }
                },
                promise: {
                    then: function(b, g, f) {
                        var k = e()
                          , C = function(d) {
                            try {
                                k.resolve((L(b) ? b : c)(d))
                            } catch (e) {
                                k.reject(e),
                                a(e)
                            }
                        }
                          , y = function(b) {
                            try {
                                k.resolve((L(g) ? g : d)(b))
                            } catch (c) {
                                k.reject(c),
                                a(c)
                            }
                        }
                          , E = function(b) {
                            try {
                                k.notify((L(f) ? f : c)(b))
                            } catch (d) {
                                a(d)
                            }
                        };
                        h ? h.push([C, y, E]) : m.then(C, y, E);
                        return k.promise
                    },
                    "catch": function(a) {
                        return this.then(null, a)
                    },
                    "finally": function(a) {
                        function b(a, c) {
                            var d = e();
                            c ? d.resolve(a) : d.reject(a);
                            return d.promise
                        }
                        function d(e, g) {
                            var f = null;
                            try {
                                f = (a || c)()
                            } catch (h) {
                                return b(h, !1)
                            }
                            return f && L(f.then) ? f.then(function() {
                                return b(e, g)
                            }, function(a) {
                                return b(a, !1)
                            }) : b(e, g)
                        }
                        return this.then(function(a) {
                            return d(a, !0)
                        }, function(a) {
                            return d(a, !1)
                        })
                    }
                }
            }
        }
          , g = function(a) {
            return a && L(a.then) ? a : {
                then: function(c) {
                    var d = e();
                    b(function() {
                        d.resolve(c(a))
                    });
                    return d.promise
                }
            }
        }
          , f = function(c) {
            return {
                then: function(g, f) {
                    var l = e();
                    b(function() {
                        try {
                            l.resolve((L(f) ? f : d)(c))
                        } catch (b) {
                            l.reject(b),
                            a(b)
                        }
                    });
                    return l.promise
                }
            }
        };
        return {
            defer: e,
            reject: f,
            when: function(h, m, k, l) {
                var n = e(), p, s = function(b) {
                    try {
                        return (L(m) ? m : c)(b)
                    } catch (d) {
                        return a(d),
                        f(d)
                    }
                }, C = function(b) {
                    try {
                        return (L(k) ? k : d)(b)
                    } catch (c) {
                        return a(c),
                        f(c)
                    }
                }, y = function(b) {
                    try {
                        return (L(l) ? l : c)(b)
                    } catch (d) {
                        a(d)
                    }
                };
                b(function() {
                    g(h).then(function(a) {
                        p || (p = !0,
                        n.resolve(g(a).then(s, C, y)))
                    }, function(a) {
                        p || (p = !0,
                        n.resolve(C(a)))
                    }, function(a) {
                        p || n.notify(y(a))
                    })
                });
                return n.promise
            },
            all: function(a) {
                var b = e()
                  , c = 0
                  , d = K(a) ? [] : {};
                q(a, function(a, e) {
                    c++;
                    g(a).then(function(a) {
                        d.hasOwnProperty(e) || (d[e] = a,
                        --c || b.resolve(d))
                    }, function(a) {
                        d.hasOwnProperty(e) || b.reject(a)
                    })
                });
                0 === c && b.resolve(d);
                return b.promise
            }
        }
    }
    function Bd() {
        var b = 10
          , a = F("$rootScope")
          , c = null;
        this.digestTtl = function(a) {
            arguments.length && (b = a);
            return b
        }
        ;
        this.$get = ["$injector", "$exceptionHandler", "$parse", "$browser", function(d, e, g, f) {
            function h() {
                this.$id = Za();
                this.$$phase = this.$parent = this.$$watchers = this.$$nextSibling = this.$$prevSibling = this.$$childHead = this.$$childTail = null;
                this["this"] = this.$root = this;
                this.$$destroyed = !1;
                this.$$asyncQueue = [];
                this.$$postDigestQueue = [];
                this.$$listeners = {};
                this.$$listenerCount = {};
                this.$$isolateBindings = {}
            }
            function m(b) {
                if (p.$$phase)
                    throw a("inprog", p.$$phase);
                p.$$phase = b
            }
            function k(a, b) {
                var c = g(a);
                Pa(c, b);
                return c
            }
            function l(a, b, c) {
                do
                    a.$$listenerCount[c] -= b,
                    0 === a.$$listenerCount[c] && delete a.$$listenerCount[c];
                while (a = a.$parent)
            }
            function n() {}
            h.prototype = {
                constructor: h,
                $new: function(a) {
                    a ? (a = new h,
                    a.$root = this.$root,
                    a.$$asyncQueue = this.$$asyncQueue,
                    a.$$postDigestQueue = this.$$postDigestQueue) : (a = function() {}
                    ,
                    a.prototype = this,
                    a = new a,
                    a.$id = Za());
                    a["this"] = a;
                    a.$$listeners = {};
                    a.$$listenerCount = {};
                    a.$parent = this;
                    a.$$watchers = a.$$nextSibling = a.$$childHead = a.$$childTail = null;
                    a.$$prevSibling = this.$$childTail;
                    this.$$childHead ? this.$$childTail = this.$$childTail.$$nextSibling = a : this.$$childHead = this.$$childTail = a;
                    return a
                },
                $watch: function(a, b, d) {
                    var e = k(a, "watch")
                      , g = this.$$watchers
                      , f = {
                        fn: b,
                        last: n,
                        get: e,
                        exp: a,
                        eq: !!d
                    };
                    c = null;
                    if (!L(b)) {
                        var h = k(b || w, "listener");
                        f.fn = function(a, b, c) {
                            h(c)
                        }
                    }
                    if ("string" == typeof a && e.constant) {
                        var m = f.fn;
                        f.fn = function(a, b, c) {
                            m.call(this, a, b, c);
                            Ma(g, f)
                        }
                    }
                    g || (g = this.$$watchers = []);
                    g.unshift(f);
                    return function() {
                        Ma(g, f);
                        c = null
                    }
                },
                $watchCollection: function(a, b) {
                    var c = this, d, e, f = 0, h = g(a), m = [], k = {}, l = 0;
                    return this.$watch(function() {
                        e = h(c);
                        var a, b;
                        if (X(e))
                            if (rb(e))
                                for (d !== m && (d = m,
                                l = d.length = 0,
                                f++),
                                a = e.length,
                                l !== a && (f++,
                                d.length = l = a),
                                b = 0; b < a; b++)
                                    d[b] !== e[b] && (f++,
                                    d[b] = e[b]);
                            else {
                                d !== k && (d = k = {},
                                l = 0,
                                f++);
                                a = 0;
                                for (b in e)
                                    e.hasOwnProperty(b) && (a++,
                                    d.hasOwnProperty(b) ? d[b] !== e[b] && (f++,
                                    d[b] = e[b]) : (l++,
                                    d[b] = e[b],
                                    f++));
                                if (l > a)
                                    for (b in f++,
                                    d)
                                        d.hasOwnProperty(b) && !e.hasOwnProperty(b) && (l--,
                                        delete d[b])
                            }
                        else
                            d !== e && (d = e,
                            f++);
                        return f
                    }, function() {
                        b(e, d, c)
                    })
                },
                $digest: function() {
                    var d, f, g, h, k = this.$$asyncQueue, l = this.$$postDigestQueue, q, v, r = b, N, V = [], J, A, P;
                    m("$digest");
                    c = null;
                    do {
                        v = !1;
                        for (N = this; k.length; ) {
                            try {
                                P = k.shift(),
                                P.scope.$eval(P.expression)
                            } catch (B) {
                                p.$$phase = null,
                                e(B)
                            }
                            c = null
                        }
                        a: do {
                            if (h = N.$$watchers)
                                for (q = h.length; q--; )
                                    try {
                                        if (d = h[q])
                                            if ((f = d.get(N)) !== (g = d.last) && !(d.eq ? ua(f, g) : "number" == typeof f && "number" == typeof g && isNaN(f) && isNaN(g)))
                                                v = !0,
                                                c = d,
                                                d.last = d.eq ? aa(f) : f,
                                                d.fn(f, g === n ? f : g, N),
                                                5 > r && (J = 4 - r,
                                                V[J] || (V[J] = []),
                                                A = L(d.exp) ? "fn: " + (d.exp.name || d.exp.toString()) : d.exp,
                                                A += "; newVal: " + qa(f) + "; oldVal: " + qa(g),
                                                V[J].push(A));
                                            else if (d === c) {
                                                v = !1;
                                                break a
                                            }
                                    } catch (t) {
                                        p.$$phase = null,
                                        e(t)
                                    }
                            if (!(h = N.$$childHead || N !== this && N.$$nextSibling))
                                for (; N !== this && !(h = N.$$nextSibling); )
                                    N = N.$parent
                        } while (N = h);
                        if ((v || k.length) && !r--)
                            throw p.$$phase = null,
                            a("infdig", b, qa(V));
                    } while (v || k.length);
                    for (p.$$phase = null; l.length; )
                        try {
                            l.shift()()
                        } catch (z) {
                            e(z)
                        }
                },
                $destroy: function() {
                    if (!this.$$destroyed) {
                        var a = this.$parent;
                        this.$broadcast("$destroy");
                        this.$$destroyed = !0;
                        this !== p && (q(this.$$listenerCount, cb(null, l, this)),
                        a.$$childHead == this && (a.$$childHead = this.$$nextSibling),
                        a.$$childTail == this && (a.$$childTail = this.$$prevSibling),
                        this.$$prevSibling && (this.$$prevSibling.$$nextSibling = this.$$nextSibling),
                        this.$$nextSibling && (this.$$nextSibling.$$prevSibling = this.$$prevSibling),
                        this.$parent = this.$$nextSibling = this.$$prevSibling = this.$$childHead = this.$$childTail = null)
                    }
                },
                $eval: function(a, b) {
                    return g(a)(this, b)
                },
                $evalAsync: function(a) {
                    p.$$phase || p.$$asyncQueue.length || f.defer(function() {
                        p.$$asyncQueue.length && p.$digest()
                    });
                    this.$$asyncQueue.push({
                        scope: this,
                        expression: a
                    })
                },
                $$postDigest: function(a) {
                    this.$$postDigestQueue.push(a)
                },
                $apply: function(a) {
                    try {
                        return m("$apply"),
                        this.$eval(a)
                    } catch (b) {
                        e(b)
                    } finally {
                        p.$$phase = null;
                        try {
                            p.$digest()
                        } catch (c) {
                            throw e(c),
                            c;
                        }
                    }
                },
                $on: function(a, b) {
                    var c = this.$$listeners[a];
                    c || (this.$$listeners[a] = c = []);
                    c.push(b);
                    var d = this;
                    do
                        d.$$listenerCount[a] || (d.$$listenerCount[a] = 0),
                        d.$$listenerCount[a]++;
                    while (d = d.$parent);
                    var e = this;
                    return function() {
                        c[bb(c, b)] = null;
                        l(e, 1, a)
                    }
                },
                $emit: function(a, b) {
                    var c = [], d, f = this, g = !1, h = {
                        name: a,
                        targetScope: f,
                        stopPropagation: function() {
                            g = !0
                        },
                        preventDefault: function() {
                            h.defaultPrevented = !0
                        },
                        defaultPrevented: !1
                    }, m = [h].concat(va.call(arguments, 1)), k, l;
                    do {
                        d = f.$$listeners[a] || c;
                        h.currentScope = f;
                        k = 0;
                        for (l = d.length; k < l; k++)
                            if (d[k])
                                try {
                                    d[k].apply(null, m)
                                } catch (p) {
                                    e(p)
                                }
                            else
                                d.splice(k, 1),
                                k--,
                                l--;
                        if (g)
                            break;
                        f = f.$parent
                    } while (f);
                    return h
                },
                $broadcast: function(a, b) {
                    for (var c = this, d = this, f = {
                        name: a,
                        targetScope: this,
                        preventDefault: function() {
                            f.defaultPrevented = !0
                        },
                        defaultPrevented: !1
                    }, g = [f].concat(va.call(arguments, 1)), h, k; c = d; ) {
                        f.currentScope = c;
                        d = c.$$listeners[a] || [];
                        h = 0;
                        for (k = d.length; h < k; h++)
                            if (d[h])
                                try {
                                    d[h].apply(null, g)
                                } catch (m) {
                                    e(m)
                                }
                            else
                                d.splice(h, 1),
                                h--,
                                k--;
                        if (!(d = c.$$listenerCount[a] && c.$$childHead || c !== this && c.$$nextSibling))
                            for (; c !== this && !(d = c.$$nextSibling); )
                                c = c.$parent
                    }
                    return f
                }
            };
            var p = new h;
            return p
        }
        ]
    }
    function Cd() {
        var b = /^\s*(https?|ftp|mailto|tel|file):/
          , a = /^\s*(https?|ftp|file):|data:image\//;
        this.aHrefSanitizationWhitelist = function(a) {
            return B(a) ? (b = a,
            this) : b
        }
        ;
        this.imgSrcSanitizationWhitelist = function(b) {
            return B(b) ? (a = b,
            this) : a
        }
        ;
        this.$get = function() {
            return function(c, d) {
                var e = d ? a : b, g;
                if (!M || 8 <= M)
                    if (g = ya(c).href,
                    "" !== g && !g.match(e))
                        return "unsafe:" + g;
                return c
            }
        }
    }
    function Dd(b) {
        if ("self" === b)
            return b;
        if (D(b)) {
            if (-1 < b.indexOf("***"))
                throw sa("iwcard", b);
            b = b.replace(/([-()\[\]{}+?*.$\^|,:#<!\\])/g, "\\$1").replace(/\x08/g, "\\x08").replace("\\*\\*", ".*").replace("\\*", "[^:/.?&;]*");
            return RegExp("^" + b + "$")
        }
        if (ab(b))
            return RegExp("^" + b.source + "$");
        throw sa("imatcher");
    }
    function zc(b) {
        var a = [];
        B(b) && q(b, function(b) {
            a.push(Dd(b))
        });
        return a
    }
    function Ed() {
        this.SCE_CONTEXTS = fa;
        var b = ["self"]
          , a = [];
        this.resourceUrlWhitelist = function(a) {
            arguments.length && (b = zc(a));
            return b
        }
        ;
        this.resourceUrlBlacklist = function(b) {
            arguments.length && (a = zc(b));
            return a
        }
        ;
        this.$get = ["$injector", function(c) {
            function d(a) {
                var b = function(a) {
                    this.$$unwrapTrustedValue = function() {
                        return a
                    }
                };
                a && (b.prototype = new a);
                b.prototype.valueOf = function() {
                    return this.$$unwrapTrustedValue()
                }
                ;
                b.prototype.toString = function() {
                    return this.$$unwrapTrustedValue().toString()
                }
                ;
                return b
            }
            var e = function(a) {
                throw sa("unsafe");
            };
            c.has("$sanitize") && (e = c.get("$sanitize"));
            var g = d()
              , f = {};
            f[fa.HTML] = d(g);
            f[fa.CSS] = d(g);
            f[fa.URL] = d(g);
            f[fa.JS] = d(g);
            f[fa.RESOURCE_URL] = d(f[fa.URL]);
            return {
                trustAs: function(a, b) {
                    var c = f.hasOwnProperty(a) ? f[a] : null;
                    if (!c)
                        throw sa("icontext", a, b);
                    if (null === b || b === r || "" === b)
                        return b;
                    if ("string" !== typeof b)
                        throw sa("itype", a);
                    return new c(b)
                },
                getTrusted: function(c, d) {
                    if (null === d || d === r || "" === d)
                        return d;
                    var g = f.hasOwnProperty(c) ? f[c] : null;
                    if (g && d instanceof g)
                        return d.$$unwrapTrustedValue();
                    if (c === fa.RESOURCE_URL) {
                        var g = ya(d.toString()), l, n, p = !1;
                        l = 0;
                        for (n = b.length; l < n; l++)
                            if ("self" === b[l] ? Gb(g) : b[l].exec(g.href)) {
                                p = !0;
                                break
                            }
                        if (p)
                            for (l = 0,
                            n = a.length; l < n; l++)
                                if ("self" === a[l] ? Gb(g) : a[l].exec(g.href)) {
                                    p = !1;
                                    break
                                }
                        if (p)
                            return d;
                        throw sa("insecurl", d.toString());
                    }
                    if (c === fa.HTML)
                        return e(d);
                    throw sa("unsafe");
                },
                valueOf: function(a) {
                    return a instanceof g ? a.$$unwrapTrustedValue() : a
                }
            }
        }
        ]
    }
    function Fd() {
        var b = !0;
        this.enabled = function(a) {
            arguments.length && (b = !!a);
            return b
        }
        ;
        this.$get = ["$parse", "$sniffer", "$sceDelegate", function(a, c, d) {
            if (b && c.msie && 8 > c.msieDocumentMode)
                throw sa("iequirks");
            var e = aa(fa);
            e.isEnabled = function() {
                return b
            }
            ;
            e.trustAs = d.trustAs;
            e.getTrusted = d.getTrusted;
            e.valueOf = d.valueOf;
            b || (e.trustAs = e.getTrusted = function(a, b) {
                return b
            }
            ,
            e.valueOf = Ba);
            e.parseAs = function(b, c) {
                var d = a(c);
                return d.literal && d.constant ? d : function(a, c) {
                    return e.getTrusted(b, d(a, c))
                }
            }
            ;
            var g = e.parseAs
              , f = e.getTrusted
              , h = e.trustAs;
            q(fa, function(a, b) {
                var c = x(b);
                e[Qa("parse_as_" + c)] = function(b) {
                    return g(a, b)
                }
                ;
                e[Qa("get_trusted_" + c)] = function(b) {
                    return f(a, b)
                }
                ;
                e[Qa("trust_as_" + c)] = function(b) {
                    return h(a, b)
                }
            });
            return e
        }
        ]
    }
    function Gd() {
        this.$get = ["$window", "$document", function(b, a) {
            var c = {}, d = S((/android (\d+)/.exec(x((b.navigator || {}).userAgent)) || [])[1]), e = /Boxee/i.test((b.navigator || {}).userAgent), g = a[0] || {}, f = g.documentMode, h, m = /^(Moz|webkit|O|ms)(?=[A-Z])/, k = g.body && g.body.style, l = !1, n = !1;
            if (k) {
                for (var p in k)
                    if (l = m.exec(p)) {
                        h = l[0];
                        h = h.substr(0, 1).toUpperCase() + h.substr(1);
                        break
                    }
                h || (h = "WebkitOpacity"in k && "webkit");
                l = !!("transition"in k || h + "Transition"in k);
                n = !!("animation"in k || h + "Animation"in k);
                !d || l && n || (l = D(g.body.style.webkitTransition),
                n = D(g.body.style.webkitAnimation))
            }
            return {
                history: !(!b.history || !b.history.pushState || 4 > d || e),
                hashchange: "onhashchange"in b && (!f || 7 < f),
                hasEvent: function(a) {
                    if ("input" == a && 9 == M)
                        return !1;
                    if (z(c[a])) {
                        var b = g.createElement("div");
                        c[a] = "on" + a in b
                    }
                    return c[a]
                },
                csp: Ub(),
                vendorPrefix: h,
                transitions: l,
                animations: n,
                android: d,
                msie: M,
                msieDocumentMode: f
            }
        }
        ]
    }
    function Hd() {
        this.$get = ["$rootScope", "$browser", "$q", "$exceptionHandler", function(b, a, c, d) {
            function e(e, h, m) {
                var k = c.defer()
                  , l = k.promise
                  , n = B(m) && !m;
                h = a.defer(function() {
                    try {
                        k.resolve(e())
                    } catch (a) {
                        k.reject(a),
                        d(a)
                    } finally {
                        delete g[l.$$timeoutId]
                    }
                    n || b.$apply()
                }, h);
                l.$$timeoutId = h;
                g[h] = k;
                return l
            }
            var g = {};
            e.cancel = function(b) {
                return b && b.$$timeoutId in g ? (g[b.$$timeoutId].reject("canceled"),
                delete g[b.$$timeoutId],
                a.defer.cancel(b.$$timeoutId)) : !1
            }
            ;
            return e
        }
        ]
    }
    function ya(b, a) {
        var c = b;
        M && (Y.setAttribute("href", c),
        c = Y.href);
        Y.setAttribute("href", c);
        return {
            href: Y.href,
            protocol: Y.protocol ? Y.protocol.replace(/:$/, "") : "",
            host: Y.host,
            search: Y.search ? Y.search.replace(/^\?/, "") : "",
            hash: Y.hash ? Y.hash.replace(/^#/, "") : "",
            hostname: Y.hostname,
            port: Y.port,
            pathname: "/" === Y.pathname.charAt(0) ? Y.pathname : "/" + Y.pathname
        }
    }
    function Gb(b) {
        b = D(b) ? ya(b) : b;
        return b.protocol === Ac.protocol && b.host === Ac.host
    }
    function Id() {
        this.$get = $(Z)
    }
    function Bc(b) {
        function a(d, e) {
            if (X(d)) {
                var g = {};
                q(d, function(b, c) {
                    g[c] = a(c, b)
                });
                return g
            }
            return b.factory(d + c, e)
        }
        var c = "Filter";
        this.register = a;
        this.$get = ["$injector", function(a) {
            return function(b) {
                return a.get(b + c)
            }
        }
        ];
        a("currency", Cc);
        a("date", Dc);
        a("filter", Jd);
        a("json", Kd);
        a("limitTo", Ld);
        a("lowercase", Md);
        a("number", Ec);
        a("orderBy", Fc);
        a("uppercase", Nd)
    }
    function Jd() {
        return function(b, a, c) {
            if (!K(b))
                return b;
            var d = typeof c
              , e = [];
            e.check = function(a) {
                for (var b = 0; b < e.length; b++)
                    if (!e[b](a))
                        return !1;
                return !0
            }
            ;
            "function" !== d && (c = "boolean" === d && c ? function(a, b) {
                return Ca.equals(a, b)
            }
            : function(a, b) {
                b = ("" + b).toLowerCase();
                return -1 < ("" + a).toLowerCase().indexOf(b)
            }
            );
            var g = function(a, b) {
                if ("string" == typeof b && "!" === b.charAt(0))
                    return !g(a, b.substr(1));
                switch (typeof a) {
                case "boolean":
                case "number":
                case "string":
                    return c(a, b);
                case "object":
                    switch (typeof b) {
                    case "object":
                        return c(a, b);
                    default:
                        for (var d in a)
                            if ("$" !== d.charAt(0) && g(a[d], b))
                                return !0
                    }
                    return !1;
                case "array":
                    for (d = 0; d < a.length; d++)
                        if (g(a[d], b))
                            return !0;
                    return !1;
                default:
                    return !1
                }
            };
            switch (typeof a) {
            case "boolean":
            case "number":
            case "string":
                a = {
                    $: a
                };
            case "object":
                for (var f in a)
                    (function(b) {
                        "undefined" != typeof a[b] && e.push(function(c) {
                            return g("$" == b ? c : vb(c, b), a[b])
                        })
                    }
                    )(f);
                break;
            case "function":
                e.push(a);
                break;
            default:
                return b
            }
            d = [];
            for (f = 0; f < b.length; f++) {
                var h = b[f];
                e.check(h) && d.push(h)
            }
            return d
        }
    }
    function Cc(b) {
        var a = b.NUMBER_FORMATS;
        return function(b, d) {
            z(d) && (d = a.CURRENCY_SYM);
            return Gc(b, a.PATTERNS[1], a.GROUP_SEP, a.DECIMAL_SEP, 2).replace(/\u00A4/g, d)
        }
    }
    function Ec(b) {
        var a = b.NUMBER_FORMATS;
        return function(b, d) {
            return Gc(b, a.PATTERNS[0], a.GROUP_SEP, a.DECIMAL_SEP, d)
        }
    }
    function Gc(b, a, c, d, e) {
        if (isNaN(b) || !isFinite(b))
            return "";
        var g = 0 > b;
        b = Math.abs(b);
        var f = b + ""
          , h = ""
          , m = []
          , k = !1;
        if (-1 !== f.indexOf("e")) {
            var l = f.match(/([\d\.]+)e(-?)(\d+)/);
            l && "-" == l[2] && l[3] > e + 1 ? f = "0" : (h = f,
            k = !0)
        }
        if (k)
            0 < e && (-1 < b && 1 > b) && (h = b.toFixed(e));
        else {
            f = (f.split(Hc)[1] || "").length;
            z(e) && (e = Math.min(Math.max(a.minFrac, f), a.maxFrac));
            f = Math.pow(10, e);
            b = Math.round(b * f) / f;
            b = ("" + b).split(Hc);
            f = b[0];
            b = b[1] || "";
            var l = 0
              , n = a.lgSize
              , p = a.gSize;
            if (f.length >= n + p)
                for (l = f.length - n,
                k = 0; k < l; k++)
                    0 === (l - k) % p && 0 !== k && (h += c),
                    h += f.charAt(k);
            for (k = l; k < f.length; k++)
                0 === (f.length - k) % n && 0 !== k && (h += c),
                h += f.charAt(k);
            for (; b.length < e; )
                b += "0";
            e && "0" !== e && (h += d + b.substr(0, e))
        }
        m.push(g ? a.negPre : a.posPre);
        m.push(h);
        m.push(g ? a.negSuf : a.posSuf);
        return m.join("")
    }
    function Mb(b, a, c) {
        var d = "";
        0 > b && (d = "-",
        b = -b);
        for (b = "" + b; b.length < a; )
            b = "0" + b;
        c && (b = b.substr(b.length - a));
        return d + b
    }
    function W(b, a, c, d) {
        c = c || 0;
        return function(e) {
            e = e["get" + b]();
            if (0 < c || e > -c)
                e += c;
            0 === e && -12 == c && (e = 12);
            return Mb(e, a, d)
        }
    }
    function lb(b, a) {
        return function(c, d) {
            var e = c["get" + b]()
              , g = Ia(a ? "SHORT" + b : b);
            return d[g][e]
        }
    }
    function Dc(b) {
        function a(a) {
            var b;
            if (b = a.match(c)) {
                a = new Date(0);
                var g = 0
                  , f = 0
                  , h = b[8] ? a.setUTCFullYear : a.setFullYear
                  , m = b[8] ? a.setUTCHours : a.setHours;
                b[9] && (g = S(b[9] + b[10]),
                f = S(b[9] + b[11]));
                h.call(a, S(b[1]), S(b[2]) - 1, S(b[3]));
                g = S(b[4] || 0) - g;
                f = S(b[5] || 0) - f;
                h = S(b[6] || 0);
                b = Math.round(1E3 * parseFloat("0." + (b[7] || 0)));
                m.call(a, g, f, h, b)
            }
            return a
        }
        var c = /^(\d{4})-?(\d\d)-?(\d\d)(?:T(\d\d)(?::?(\d\d)(?::?(\d\d)(?:\.(\d+))?)?)?(Z|([+-])(\d\d):?(\d\d))?)?$/;
        return function(c, e) {
            var g = "", f = [], h, m;
            e = e || "mediumDate";
            e = b.DATETIME_FORMATS[e] || e;
            D(c) && (c = Od.test(c) ? S(c) : a(c));
            sb(c) && (c = new Date(c));
            if (!La(c))
                return c;
            for (; e; )
                (m = Pd.exec(e)) ? (f = f.concat(va.call(m, 1)),
                e = f.pop()) : (f.push(e),
                e = null);
            q(f, function(a) {
                h = Qd[a];
                g += h ? h(c, b.DATETIME_FORMATS) : a.replace(/(^'|'$)/g, "").replace(/''/g, "'")
            });
            return g
        }
    }
    function Kd() {
        return function(b) {
            return qa(b, !0)
        }
    }
    function Ld() {
        return function(b, a) {
            if (!K(b) && !D(b))
                return b;
            a = S(a);
            if (D(b))
                return a ? 0 <= a ? b.slice(0, a) : b.slice(a, b.length) : "";
            var c = [], d, e;
            a > b.length ? a = b.length : a < -b.length && (a = -b.length);
            0 < a ? (d = 0,
            e = a) : (d = b.length + a,
            e = b.length);
            for (; d < e; d++)
                c.push(b[d]);
            return c
        }
    }
    function Fc(b) {
        return function(a, c, d) {
            function e(a, b) {
                return Oa(b) ? function(b, c) {
                    return a(c, b)
                }
                : a
            }
            if (!K(a) || !c)
                return a;
            c = K(c) ? c : [c];
            c = Rc(c, function(a) {
                var c = !1
                  , d = a || Ba;
                if (D(a)) {
                    if ("+" == a.charAt(0) || "-" == a.charAt(0))
                        c = "-" == a.charAt(0),
                        a = a.substring(1);
                    d = b(a)
                }
                return e(function(a, b) {
                    var c;
                    c = d(a);
                    var e = d(b)
                      , g = typeof c
                      , f = typeof e;
                    g == f ? ("string" == g && (c = c.toLowerCase(),
                    e = e.toLowerCase()),
                    c = c === e ? 0 : c < e ? -1 : 1) : c = g < f ? -1 : 1;
                    return c
                }, c)
            });
            for (var g = [], f = 0; f < a.length; f++)
                g.push(a[f]);
            return g.sort(e(function(a, b) {
                for (var d = 0; d < c.length; d++) {
                    var e = c[d](a, b);
                    if (0 !== e)
                        return e
                }
                return 0
            }, d))
        }
    }
    function ta(b) {
        L(b) && (b = {
            link: b
        });
        b.restrict = b.restrict || "AC";
        return $(b)
    }
    function Ic(b, a) {
        function c(a, c) {
            c = c ? "-" + db(c, "-") : "";
            b.removeClass((a ? mb : nb) + c).addClass((a ? nb : mb) + c)
        }
        var d = this
          , e = b.parent().controller("form") || ob
          , g = 0
          , f = d.$error = {}
          , h = [];
        d.$name = a.name || a.ngForm;
        d.$dirty = !1;
        d.$pristine = !0;
        d.$valid = !0;
        d.$invalid = !1;
        e.$addControl(d);
        b.addClass(Ja);
        c(!0);
        d.$addControl = function(a) {
            xa(a.$name, "input");
            h.push(a);
            a.$name && (d[a.$name] = a)
        }
        ;
        d.$removeControl = function(a) {
            a.$name && d[a.$name] === a && delete d[a.$name];
            q(f, function(b, c) {
                d.$setValidity(c, !0, a)
            });
            Ma(h, a)
        }
        ;
        d.$setValidity = function(a, b, h) {
            var n = f[a];
            if (b)
                n && (Ma(n, h),
                n.length || (g--,
                g || (c(b),
                d.$valid = !0,
                d.$invalid = !1),
                f[a] = !1,
                c(!0, a),
                e.$setValidity(a, !0, d)));
            else {
                g || c(b);
                if (n) {
                    if (-1 != bb(n, h))
                        return
                } else
                    f[a] = n = [],
                    g++,
                    c(!1, a),
                    e.$setValidity(a, !1, d);
                n.push(h);
                d.$valid = !1;
                d.$invalid = !0
            }
        }
        ;
        d.$setDirty = function() {
            b.removeClass(Ja).addClass(pb);
            d.$dirty = !0;
            d.$pristine = !1;
            e.$setDirty()
        }
        ;
        d.$setPristine = function() {
            b.removeClass(pb).addClass(Ja);
            d.$dirty = !1;
            d.$pristine = !0;
            q(h, function(a) {
                a.$setPristine()
            })
        }
    }
    function pa(b, a, c, d) {
        b.$setValidity(a, c);
        return c ? d : r
    }
    function qb(b, a, c, d, e, g) {
        if (!e.android) {
            var f = !1;
            a.on("compositionstart", function(a) {
                f = !0
            });
            a.on("compositionend", function() {
                f = !1
            })
        }
        var h = function() {
            if (!f) {
                var e = a.val();
                Oa(c.ngTrim || "F") && (e = ba(e));
                d.$viewValue !== e && (b.$$phase ? d.$setViewValue(e) : b.$apply(function() {
                    d.$setViewValue(e)
                }))
            }
        };
        if (e.hasEvent("input"))
            a.on("input", h);
        else {
            var m, k = function() {
                m || (m = g.defer(function() {
                    h();
                    m = null
                }))
            };
            a.on("keydown", function(a) {
                a = a.keyCode;
                91 === a || (15 < a && 19 > a || 37 <= a && 40 >= a) || k()
            });
            if (e.hasEvent("paste"))
                a.on("paste cut", k)
        }
        a.on("change", h);
        d.$render = function() {
            a.val(d.$isEmpty(d.$viewValue) ? "" : d.$viewValue)
        }
        ;
        var l = c.ngPattern;
        l && ((e = l.match(/^\/(.*)\/([gim]*)$/)) ? (l = RegExp(e[1], e[2]),
        e = function(a) {
            return pa(d, "pattern", d.$isEmpty(a) || l.test(a), a)
        }
        ) : e = function(c) {
            var e = b.$eval(l);
            if (!e || !e.test)
                throw F("ngPattern")("noregexp", l, e, ga(a));
            return pa(d, "pattern", d.$isEmpty(c) || e.test(c), c)
        }
        ,
        d.$formatters.push(e),
        d.$parsers.push(e));
        if (c.ngMinlength) {
            var n = S(c.ngMinlength);
            e = function(a) {
                return pa(d, "minlength", d.$isEmpty(a) || a.length >= n, a)
            }
            ;
            d.$parsers.push(e);
            d.$formatters.push(e)
        }
        if (c.ngMaxlength) {
            var p = S(c.ngMaxlength);
            e = function(a) {
                return pa(d, "maxlength", d.$isEmpty(a) || a.length <= p, a)
            }
            ;
            d.$parsers.push(e);
            d.$formatters.push(e)
        }
    }
    function Nb(b, a) {
        b = "ngClass" + b;
        return function() {
            return {
                restrict: "AC",
                link: function(c, d, e) {
                    function g(b) {
                        if (!0 === a || c.$index % 2 === a) {
                            var d = f(b || "");
                            h ? ua(b, h) || e.$updateClass(d, f(h)) : e.$addClass(d)
                        }
                        h = aa(b)
                    }
                    function f(a) {
                        if (K(a))
                            return a.join(" ");
                        if (X(a)) {
                            var b = [];
                            q(a, function(a, c) {
                                a && b.push(c)
                            });
                            return b.join(" ")
                        }
                        return a
                    }
                    var h;
                    c.$watch(e[b], g, !0);
                    e.$observe("class", function(a) {
                        g(c.$eval(e[b]))
                    });
                    "ngClass" !== b && c.$watch("$index", function(d, g) {
                        var h = d & 1;
                        if (h !== g & 1) {
                            var n = f(c.$eval(e[b]));
                            h === a ? e.$addClass(n) : e.$removeClass(n)
                        }
                    })
                }
            }
        }
    }
    var x = function(b) {
        return D(b) ? b.toLowerCase() : b
    }, Ia = function(b) {
        return D(b) ? b.toUpperCase() : b
    }, M, A, Da, va = [].slice, Rd = [].push, $a = Object.prototype.toString, Na = F("ng"), Ca = Z.angular || (Z.angular = {}), Ua, Ha, ka = ["0", "0", "0"];
    M = S((/msie (\d+)/.exec(x(navigator.userAgent)) || [])[1]);
    isNaN(M) && (M = S((/trident\/.*; rv:(\d+)/.exec(x(navigator.userAgent)) || [])[1]));
    w.$inject = [];
    Ba.$inject = [];
    var ba = function() {
        return String.prototype.trim ? function(b) {
            return D(b) ? b.trim() : b
        }
        : function(b) {
            return D(b) ? b.replace(/^\s\s*/, "").replace(/\s\s*$/, "") : b
        }
    }();
    Ha = 9 > M ? function(b) {
        b = b.nodeName ? b : b[0];
        return b.scopeName && "HTML" != b.scopeName ? Ia(b.scopeName + ":" + b.nodeName) : b.nodeName
    }
    : function(b) {
        return b.nodeName ? b.nodeName : b[0].nodeName
    }
    ;
    var Uc = /[A-Z]/g
      , Sd = {
        full: "1.2.9",
        major: 1,
        minor: 2,
        dot: 9,
        codeName: "enchanted-articulacy"
    }
      , Ra = O.cache = {}
      , eb = O.expando = "ng-" + (new Date).getTime()
      , Yc = 1
      , Jc = Z.document.addEventListener ? function(b, a, c) {
        b.addEventListener(a, c, !1)
    }
    : function(b, a, c) {
        b.attachEvent("on" + a, c)
    }
      , Bb = Z.document.removeEventListener ? function(b, a, c) {
        b.removeEventListener(a, c, !1)
    }
    : function(b, a, c) {
        b.detachEvent("on" + a, c)
    }
      , Wc = /([\:\-\_]+(.))/g
      , Xc = /^moz([A-Z])/
      , yb = F("jqLite")
      , Ga = O.prototype = {
        ready: function(b) {
            function a() {
                c || (c = !0,
                b())
            }
            var c = !1;
            "complete" === Q.readyState ? setTimeout(a) : (this.on("DOMContentLoaded", a),
            O(Z).on("load", a))
        },
        toString: function() {
            var b = [];
            q(this, function(a) {
                b.push("" + a)
            });
            return "[" + b.join(", ") + "]"
        },
        eq: function(b) {
            return 0 <= b ? A(this[b]) : A(this[this.length + b])
        },
        length: 0,
        push: Rd,
        sort: [].sort,
        splice: [].splice
    }
      , gb = {};
    q("multiple selected checked disabled readOnly required open".split(" "), function(b) {
        gb[x(b)] = b
    });
    var gc = {};
    q("input select option textarea button form details".split(" "), function(b) {
        gc[Ia(b)] = !0
    });
    q({
        data: cc,
        inheritedData: fb,
        scope: function(b) {
            return A(b).data("$scope") || fb(b.parentNode || b, ["$isolateScope", "$scope"])
        },
        isolateScope: function(b) {
            return A(b).data("$isolateScope") || A(b).data("$isolateScopeNoTemplate")
        },
        controller: dc,
        injector: function(b) {
            return fb(b, "$injector")
        },
        removeAttr: function(b, a) {
            b.removeAttribute(a)
        },
        hasClass: Cb,
        css: function(b, a, c) {
            a = Qa(a);
            if (B(c))
                b.style[a] = c;
            else {
                var d;
                8 >= M && (d = b.currentStyle && b.currentStyle[a],
                "" === d && (d = "auto"));
                d = d || b.style[a];
                8 >= M && (d = "" === d ? r : d);
                return d
            }
        },
        attr: function(b, a, c) {
            var d = x(a);
            if (gb[d])
                if (B(c))
                    c ? (b[a] = !0,
                    b.setAttribute(a, d)) : (b[a] = !1,
                    b.removeAttribute(d));
                else
                    return b[a] || (b.attributes.getNamedItem(a) || w).specified ? d : r;
            else if (B(c))
                b.setAttribute(a, c);
            else if (b.getAttribute)
                return b = b.getAttribute(a, 2),
                null === b ? r : b
        },
        prop: function(b, a, c) {
            if (B(c))
                b[a] = c;
            else
                return b[a]
        },
        text: function() {
            function b(b, d) {
                var e = a[b.nodeType];
                if (z(d))
                    return e ? b[e] : "";
                b[e] = d
            }
            var a = [];
            9 > M ? (a[1] = "innerText",
            a[3] = "nodeValue") : a[1] = a[3] = "textContent";
            b.$dv = "";
            return b
        }(),
        val: function(b, a) {
            if (z(a)) {
                if ("SELECT" === Ha(b) && b.multiple) {
                    var c = [];
                    q(b.options, function(a) {
                        a.selected && c.push(a.value || a.text)
                    });
                    return 0 === c.length ? null : c
                }
                return b.value
            }
            b.value = a
        },
        html: function(b, a) {
            if (z(a))
                return b.innerHTML;
            for (var c = 0, d = b.childNodes; c < d.length; c++)
                Ea(d[c]);
            b.innerHTML = a
        },
        empty: ec
    }, function(b, a) {
        O.prototype[a] = function(a, d) {
            var e, g;
            if (b !== ec && (2 == b.length && b !== Cb && b !== dc ? a : d) === r) {
                if (X(a)) {
                    for (e = 0; e < this.length; e++)
                        if (b === cc)
                            b(this[e], a);
                        else
                            for (g in a)
                                b(this[e], g, a[g]);
                    return this
                }
                e = b.$dv;
                g = e === r ? Math.min(this.length, 1) : this.length;
                for (var f = 0; f < g; f++) {
                    var h = b(this[f], a, d);
                    e = e ? e + h : h
                }
                return e
            }
            for (e = 0; e < this.length; e++)
                b(this[e], a, d);
            return this
        }
    });
    q({
        removeData: ac,
        dealoc: Ea,
        on: function a(c, d, e, g) {
            if (B(g))
                throw yb("onargs");
            var f = la(c, "events")
              , h = la(c, "handle");
            f || la(c, "events", f = {});
            h || la(c, "handle", h = Zc(c, f));
            q(d.split(" "), function(d) {
                var g = f[d];
                if (!g) {
                    if ("mouseenter" == d || "mouseleave" == d) {
                        var l = Q.body.contains || Q.body.compareDocumentPosition ? function(a, c) {
                            var d = 9 === a.nodeType ? a.documentElement : a
                              , e = c && c.parentNode;
                            return a === e || !!(e && 1 === e.nodeType && (d.contains ? d.contains(e) : a.compareDocumentPosition && a.compareDocumentPosition(e) & 16))
                        }
                        : function(a, c) {
                            if (c)
                                for (; c = c.parentNode; )
                                    if (c === a)
                                        return !0;
                            return !1
                        }
                        ;
                        f[d] = [];
                        a(c, {
                            mouseleave: "mouseout",
                            mouseenter: "mouseover"
                        }[d], function(a) {
                            var c = a.relatedTarget;
                            c && (c === this || l(this, c)) || h(a, d)
                        })
                    } else
                        Jc(c, d, h),
                        f[d] = [];
                    g = f[d]
                }
                g.push(e)
            })
        },
        off: bc,
        one: function(a, c, d) {
            a = A(a);
            a.on(c, function g() {
                a.off(c, d);
                a.off(c, g)
            });
            a.on(c, d)
        },
        replaceWith: function(a, c) {
            var d, e = a.parentNode;
            Ea(a);
            q(new O(c), function(c) {
                d ? e.insertBefore(c, d.nextSibling) : e.replaceChild(c, a);
                d = c
            })
        },
        children: function(a) {
            var c = [];
            q(a.childNodes, function(a) {
                1 === a.nodeType && c.push(a)
            });
            return c
        },
        contents: function(a) {
            return a.childNodes || []
        },
        append: function(a, c) {
            q(new O(c), function(c) {
                1 !== a.nodeType && 11 !== a.nodeType || a.appendChild(c)
            })
        },
        prepend: function(a, c) {
            if (1 === a.nodeType) {
                var d = a.firstChild;
                q(new O(c), function(c) {
                    a.insertBefore(c, d)
                })
            }
        },
        wrap: function(a, c) {
            c = A(c)[0];
            var d = a.parentNode;
            d && d.replaceChild(c, a);
            c.appendChild(a)
        },
        remove: function(a) {
            Ea(a);
            var c = a.parentNode;
            c && c.removeChild(a)
        },
        after: function(a, c) {
            var d = a
              , e = a.parentNode;
            q(new O(c), function(a) {
                e.insertBefore(a, d.nextSibling);
                d = a
            })
        },
        addClass: Eb,
        removeClass: Db,
        toggleClass: function(a, c, d) {
            z(d) && (d = !Cb(a, c));
            (d ? Eb : Db)(a, c)
        },
        parent: function(a) {
            return (a = a.parentNode) && 11 !== a.nodeType ? a : null
        },
        next: function(a) {
            if (a.nextElementSibling)
                return a.nextElementSibling;
            for (a = a.nextSibling; null != a && 1 !== a.nodeType; )
                a = a.nextSibling;
            return a
        },
        find: function(a, c) {
            return a.getElementsByTagName ? a.getElementsByTagName(c) : []
        },
        clone: Ab,
        triggerHandler: function(a, c, d) {
            c = (la(a, "events") || {})[c];
            d = d || [];
            var e = [{
                preventDefault: w,
                stopPropagation: w
            }];
            q(c, function(c) {
                c.apply(a, e.concat(d))
            })
        }
    }, function(a, c) {
        O.prototype[c] = function(c, e, g) {
            for (var f, h = 0; h < this.length; h++)
                z(f) ? (f = a(this[h], c, e, g),
                B(f) && (f = A(f))) : zb(f, a(this[h], c, e, g));
            return B(f) ? f : this
        }
        ;
        O.prototype.bind = O.prototype.on;
        O.prototype.unbind = O.prototype.off
    });
    Sa.prototype = {
        put: function(a, c) {
            this[Fa(a)] = c
        },
        get: function(a) {
            return this[Fa(a)]
        },
        remove: function(a) {
            var c = this[a = Fa(a)];
            delete this[a];
            return c
        }
    };
    var ad = /^function\s*[^\(]*\(\s*([^\)]*)\)/m
      , bd = /,/
      , cd = /^\s*(_?)(\S+?)\1\s*$/
      , $c = /((\/\/.*$)|(\/\*[\s\S]*?\*\/))/mg
      , Ta = F("$injector")
      , Td = F("$animate")
      , Ud = ["$provide", function(a) {
        this.$$selectors = {};
        this.register = function(c, d) {
            var e = c + "-animation";
            if (c && "." != c.charAt(0))
                throw Td("notcsel", c);
            this.$$selectors[c.substr(1)] = e;
            a.factory(e, d)
        }
        ;
        this.classNameFilter = function(a) {
            1 === arguments.length && (this.$$classNameFilter = a instanceof RegExp ? a : null);
            return this.$$classNameFilter
        }
        ;
        this.$get = ["$timeout", function(a) {
            return {
                enter: function(d, e, g, f) {
                    g ? g.after(d) : (e && e[0] || (e = g.parent()),
                    e.append(d));
                    f && a(f, 0, !1)
                },
                leave: function(d, e) {
                    d.remove();
                    e && a(e, 0, !1)
                },
                move: function(a, c, g, f) {
                    this.enter(a, c, g, f)
                },
                addClass: function(d, e, g) {
                    e = D(e) ? e : K(e) ? e.join(" ") : "";
                    q(d, function(a) {
                        Eb(a, e)
                    });
                    g && a(g, 0, !1)
                },
                removeClass: function(d, e, g) {
                    e = D(e) ? e : K(e) ? e.join(" ") : "";
                    q(d, function(a) {
                        Db(a, e)
                    });
                    g && a(g, 0, !1)
                },
                enabled: w
            }
        }
        ]
    }
    ]
      , ja = F("$compile");
    jc.$inject = ["$provide", "$$sanitizeUriProvider"];
    var id = /^(x[\:\-_]|data[\:\-_])/i
      , pc = F("$interpolate")
      , Vd = /^([^\?#]*)(\?([^#]*))?(#(.*))?$/
      , td = {
        http: 80,
        https: 443,
        ftp: 21
    }
      , Ib = F("$location");
    uc.prototype = Jb.prototype = tc.prototype = {
        $$html5: !1,
        $$replace: !1,
        absUrl: jb("$$absUrl"),
        url: function(a, c) {
            if (z(a))
                return this.$$url;
            var d = Vd.exec(a);
            d[1] && this.path(decodeURIComponent(d[1]));
            (d[2] || d[1]) && this.search(d[3] || "");
            this.hash(d[5] || "", c);
            return this
        },
        protocol: jb("$$protocol"),
        host: jb("$$host"),
        port: jb("$$port"),
        path: vc("$$path", function(a) {
            return "/" == a.charAt(0) ? a : "/" + a
        }),
        search: function(a, c) {
            switch (arguments.length) {
            case 0:
                return this.$$search;
            case 1:
                if (D(a))
                    this.$$search = Xb(a);
                else if (X(a))
                    this.$$search = a;
                else
                    throw Ib("isrcharg");
                break;
            default:
                z(c) || null === c ? delete this.$$search[a] : this.$$search[a] = c
            }
            this.$$compose();
            return this
        },
        hash: vc("$$hash", Ba),
        replace: function() {
            this.$$replace = !0;
            return this
        }
    };
    var za = F("$parse"), yc = {}, ra, Ka = {
        "null": function() {
            return null
        },
        "true": function() {
            return !0
        },
        "false": function() {
            return !1
        },
        undefined: w,
        "+": function(a, c, d, e) {
            d = d(a, c);
            e = e(a, c);
            return B(d) ? B(e) ? d + e : d : B(e) ? e : r
        },
        "-": function(a, c, d, e) {
            d = d(a, c);
            e = e(a, c);
            return (B(d) ? d : 0) - (B(e) ? e : 0)
        },
        "*": function(a, c, d, e) {
            return d(a, c) * e(a, c)
        },
        "/": function(a, c, d, e) {
            return d(a, c) / e(a, c)
        },
        "%": function(a, c, d, e) {
            return d(a, c) % e(a, c)
        },
        "^": function(a, c, d, e) {
            return d(a, c) ^ e(a, c)
        },
        "=": w,
        "===": function(a, c, d, e) {
            return d(a, c) === e(a, c)
        },
        "!==": function(a, c, d, e) {
            return d(a, c) !== e(a, c)
        },
        "==": function(a, c, d, e) {
            return d(a, c) == e(a, c)
        },
        "!=": function(a, c, d, e) {
            return d(a, c) != e(a, c)
        },
        "<": function(a, c, d, e) {
            return d(a, c) < e(a, c)
        },
        ">": function(a, c, d, e) {
            return d(a, c) > e(a, c)
        },
        "<=": function(a, c, d, e) {
            return d(a, c) <= e(a, c)
        },
        ">=": function(a, c, d, e) {
            return d(a, c) >= e(a, c)
        },
        "&&": function(a, c, d, e) {
            return d(a, c) && e(a, c)
        },
        "||": function(a, c, d, e) {
            return d(a, c) || e(a, c)
        },
        "&": function(a, c, d, e) {
            return d(a, c) & e(a, c)
        },
        "|": function(a, c, d, e) {
            return e(a, c)(a, c, d(a, c))
        },
        "!": function(a, c, d) {
            return !d(a, c)
        }
    }, Wd = {
        n: "\n",
        f: "\f",
        r: "\r",
        t: "\t",
        v: "\v",
        "'": "'",
        '"': '"'
    }, Lb = function(a) {
        this.options = a
    };
    Lb.prototype = {
        constructor: Lb,
        lex: function(a) {
            this.text = a;
            this.index = 0;
            this.ch = r;
            this.lastCh = ":";
            this.tokens = [];
            var c;
            for (a = []; this.index < this.text.length; ) {
                this.ch = this.text.charAt(this.index);
                if (this.is("\"'"))
                    this.readString(this.ch);
                else if (this.isNumber(this.ch) || this.is(".") && this.isNumber(this.peek()))
                    this.readNumber();
                else if (this.isIdent(this.ch))
                    this.readIdent(),
                    this.was("{,") && ("{" === a[0] && (c = this.tokens[this.tokens.length - 1])) && (c.json = -1 === c.text.indexOf("."));
                else if (this.is("(){}[].,;:?"))
                    this.tokens.push({
                        index: this.index,
                        text: this.ch,
                        json: this.was(":[,") && this.is("{[") || this.is("}]:,")
                    }),
                    this.is("{[") && a.unshift(this.ch),
                    this.is("}]") && a.shift(),
                    this.index++;
                else if (this.isWhitespace(this.ch)) {
                    this.index++;
                    continue
                } else {
                    var d = this.ch + this.peek()
                      , e = d + this.peek(2)
                      , g = Ka[this.ch]
                      , f = Ka[d]
                      , h = Ka[e];
                    h ? (this.tokens.push({
                        index: this.index,
                        text: e,
                        fn: h
                    }),
                    this.index += 3) : f ? (this.tokens.push({
                        index: this.index,
                        text: d,
                        fn: f
                    }),
                    this.index += 2) : g ? (this.tokens.push({
                        index: this.index,
                        text: this.ch,
                        fn: g,
                        json: this.was("[,:") && this.is("+-")
                    }),
                    this.index += 1) : this.throwError("Unexpected next character ", this.index, this.index + 1)
                }
                this.lastCh = this.ch
            }
            return this.tokens
        },
        is: function(a) {
            return -1 !== a.indexOf(this.ch)
        },
        was: function(a) {
            return -1 !== a.indexOf(this.lastCh)
        },
        peek: function(a) {
            a = a || 1;
            return this.index + a < this.text.length ? this.text.charAt(this.index + a) : !1
        },
        isNumber: function(a) {
            return "0" <= a && "9" >= a
        },
        isWhitespace: function(a) {
            return " " === a || "\r" === a || "\t" === a || "\n" === a || "\v" === a || "\u00a0" === a
        },
        isIdent: function(a) {
            return "a" <= a && "z" >= a || "A" <= a && "Z" >= a || "_" === a || "$" === a
        },
        isExpOperator: function(a) {
            return "-" === a || "+" === a || this.isNumber(a)
        },
        throwError: function(a, c, d) {
            d = d || this.index;
            c = B(c) ? "s " + c + "-" + this.index + " [" + this.text.substring(c, d) + "]" : " " + d;
            throw za("lexerr", a, c, this.text);
        },
        readNumber: function() {
            for (var a = "", c = this.index; this.index < this.text.length; ) {
                var d = x(this.text.charAt(this.index));
                if ("." == d || this.isNumber(d))
                    a += d;
                else {
                    var e = this.peek();
                    if ("e" == d && this.isExpOperator(e))
                        a += d;
                    else if (this.isExpOperator(d) && e && this.isNumber(e) && "e" == a.charAt(a.length - 1))
                        a += d;
                    else if (!this.isExpOperator(d) || e && this.isNumber(e) || "e" != a.charAt(a.length - 1))
                        break;
                    else
                        this.throwError("Invalid exponent")
                }
                this.index++
            }
            a *= 1;
            this.tokens.push({
                index: c,
                text: a,
                json: !0,
                fn: function() {
                    return a
                }
            })
        },
        readIdent: function() {
            for (var a = this, c = "", d = this.index, e, g, f, h; this.index < this.text.length; ) {
                h = this.text.charAt(this.index);
                if ("." === h || this.isIdent(h) || this.isNumber(h))
                    "." === h && (e = this.index),
                    c += h;
                else
                    break;
                this.index++
            }
            if (e)
                for (g = this.index; g < this.text.length; ) {
                    h = this.text.charAt(g);
                    if ("(" === h) {
                        f = c.substr(e - d + 1);
                        c = c.substr(0, e - d);
                        this.index = g;
                        break
                    }
                    if (this.isWhitespace(h))
                        g++;
                    else
                        break
                }
            d = {
                index: d,
                text: c
            };
            if (Ka.hasOwnProperty(c))
                d.fn = Ka[c],
                d.json = Ka[c];
            else {
                var m = xc(c, this.options, this.text);
                d.fn = t(function(a, c) {
                    return m(a, c)
                }, {
                    assign: function(d, e) {
                        return kb(d, c, e, a.text, a.options)
                    }
                })
            }
            this.tokens.push(d);
            f && (this.tokens.push({
                index: e,
                text: ".",
                json: !1
            }),
            this.tokens.push({
                index: e + 1,
                text: f,
                json: !1
            }))
        },
        readString: function(a) {
            var c = this.index;
            this.index++;
            for (var d = "", e = a, g = !1; this.index < this.text.length; ) {
                var f = this.text.charAt(this.index)
                  , e = e + f;
                if (g)
                    "u" === f ? (f = this.text.substring(this.index + 1, this.index + 5),
                    f.match(/[\da-f]{4}/i) || this.throwError("Invalid unicode escape [\\u" + f + "]"),
                    this.index += 4,
                    d += String.fromCharCode(parseInt(f, 16))) : d = (g = Wd[f]) ? d + g : d + f,
                    g = !1;
                else if ("\\" === f)
                    g = !0;
                else {
                    if (f === a) {
                        this.index++;
                        this.tokens.push({
                            index: c,
                            text: e,
                            string: d,
                            json: !0,
                            fn: function() {
                                return d
                            }
                        });
                        return
                    }
                    d += f
                }
                this.index++
            }
            this.throwError("Unterminated quote", c)
        }
    };
    var Ya = function(a, c, d) {
        this.lexer = a;
        this.$filter = c;
        this.options = d
    };
    Ya.ZERO = function() {
        return 0
    }
    ;
    Ya.prototype = {
        constructor: Ya,
        parse: function(a, c) {
            this.text = a;
            this.json = c;
            this.tokens = this.lexer.lex(a);
            c && (this.assignment = this.logicalOR,
            this.functionCall = this.fieldAccess = this.objectIndex = this.filterChain = function() {
                this.throwError("is not valid json", {
                    text: a,
                    index: 0
                })
            }
            );
            var d = c ? this.primary() : this.statements();
            0 !== this.tokens.length && this.throwError("is an unexpected token", this.tokens[0]);
            d.literal = !!d.literal;
            d.constant = !!d.constant;
            return d
        },
        primary: function() {
            var a;
            if (this.expect("("))
                a = this.filterChain(),
                this.consume(")");
            else if (this.expect("["))
                a = this.arrayDeclaration();
            else if (this.expect("{"))
                a = this.object();
            else {
                var c = this.expect();
                (a = c.fn) || this.throwError("not a primary expression", c);
                c.json && (a.constant = !0,
                a.literal = !0)
            }
            for (var d; c = this.expect("(", "[", "."); )
                "(" === c.text ? (a = this.functionCall(a, d),
                d = null) : "[" === c.text ? (d = a,
                a = this.objectIndex(a)) : "." === c.text ? (d = a,
                a = this.fieldAccess(a)) : this.throwError("IMPOSSIBLE");
            return a
        },
        throwError: function(a, c) {
            throw za("syntax", c.text, a, c.index + 1, this.text, this.text.substring(c.index));
        },
        peekToken: function() {
            if (0 === this.tokens.length)
                throw za("ueoe", this.text);
            return this.tokens[0]
        },
        peek: function(a, c, d, e) {
            if (0 < this.tokens.length) {
                var g = this.tokens[0]
                  , f = g.text;
                if (f === a || f === c || f === d || f === e || !(a || c || d || e))
                    return g
            }
            return !1
        },
        expect: function(a, c, d, e) {
            return (a = this.peek(a, c, d, e)) ? (this.json && !a.json && this.throwError("is not valid json", a),
            this.tokens.shift(),
            a) : !1
        },
        consume: function(a) {
            this.expect(a) || this.throwError("is unexpected, expecting [" + a + "]", this.peek())
        },
        unaryFn: function(a, c) {
            return t(function(d, e) {
                return a(d, e, c)
            }, {
                constant: c.constant
            })
        },
        ternaryFn: function(a, c, d) {
            return t(function(e, g) {
                return a(e, g) ? c(e, g) : d(e, g)
            }, {
                constant: a.constant && c.constant && d.constant
            })
        },
        binaryFn: function(a, c, d) {
            return t(function(e, g) {
                return c(e, g, a, d)
            }, {
                constant: a.constant && d.constant
            })
        },
        statements: function() {
            for (var a = []; ; )
                if (0 < this.tokens.length && !this.peek("}", ")", ";", "]") && a.push(this.filterChain()),
                !this.expect(";"))
                    return 1 === a.length ? a[0] : function(c, d) {
                        for (var e, g = 0; g < a.length; g++) {
                            var f = a[g];
                            f && (e = f(c, d))
                        }
                        return e
                    }
        },
        filterChain: function() {
            for (var a = this.expression(), c; ; )
                if (c = this.expect("|"))
                    a = this.binaryFn(a, c.fn, this.filter());
                else
                    return a
        },
        filter: function() {
            for (var a = this.expect(), c = this.$filter(a.text), d = []; ; )
                if (a = this.expect(":"))
                    d.push(this.expression());
                else {
                    var e = function(a, e, h) {
                        h = [h];
                        for (var m = 0; m < d.length; m++)
                            h.push(d[m](a, e));
                        return c.apply(a, h)
                    };
                    return function() {
                        return e
                    }
                }
        },
        expression: function() {
            return this.assignment()
        },
        assignment: function() {
            var a = this.ternary(), c, d;
            return (d = this.expect("=")) ? (a.assign || this.throwError("implies assignment but [" + this.text.substring(0, d.index) + "] can not be assigned to", d),
            c = this.ternary(),
            function(d, g) {
                return a.assign(d, c(d, g), g)
            }
            ) : a
        },
        ternary: function() {
            var a = this.logicalOR(), c, d;
            if (this.expect("?")) {
                c = this.ternary();
                if (d = this.expect(":"))
                    return this.ternaryFn(a, c, this.ternary());
                this.throwError("expected :", d)
            } else
                return a
        },
        logicalOR: function() {
            for (var a = this.logicalAND(), c; ; )
                if (c = this.expect("||"))
                    a = this.binaryFn(a, c.fn, this.logicalAND());
                else
                    return a
        },
        logicalAND: function() {
            var a = this.equality(), c;
            if (c = this.expect("&&"))
                a = this.binaryFn(a, c.fn, this.logicalAND());
            return a
        },
        equality: function() {
            var a = this.relational(), c;
            if (c = this.expect("==", "!=", "===", "!=="))
                a = this.binaryFn(a, c.fn, this.equality());
            return a
        },
        relational: function() {
            var a = this.additive(), c;
            if (c = this.expect("<", ">", "<=", ">="))
                a = this.binaryFn(a, c.fn, this.relational());
            return a
        },
        additive: function() {
            for (var a = this.multiplicative(), c; c = this.expect("+", "-"); )
                a = this.binaryFn(a, c.fn, this.multiplicative());
            return a
        },
        multiplicative: function() {
            for (var a = this.unary(), c; c = this.expect("*", "/", "%"); )
                a = this.binaryFn(a, c.fn, this.unary());
            return a
        },
        unary: function() {
            var a;
            return this.expect("+") ? this.primary() : (a = this.expect("-")) ? this.binaryFn(Ya.ZERO, a.fn, this.unary()) : (a = this.expect("!")) ? this.unaryFn(a.fn, this.unary()) : this.primary()
        },
        fieldAccess: function(a) {
            var c = this
              , d = this.expect().text
              , e = xc(d, this.options, this.text);
            return t(function(c, d, h) {
                return e(h || a(c, d), d)
            }, {
                assign: function(e, f, h) {
                    return kb(a(e, h), d, f, c.text, c.options)
                }
            })
        },
        objectIndex: function(a) {
            var c = this
              , d = this.expression();
            this.consume("]");
            return t(function(e, g) {
                var f = a(e, g), h = d(e, g), m;
                if (!f)
                    return r;
                (f = Xa(f[h], c.text)) && (f.then && c.options.unwrapPromises) && (m = f,
                "$$v"in f || (m.$$v = r,
                m.then(function(a) {
                    m.$$v = a
                })),
                f = f.$$v);
                return f
            }, {
                assign: function(e, g, f) {
                    var h = d(e, f);
                    return Xa(a(e, f), c.text)[h] = g
                }
            })
        },
        functionCall: function(a, c) {
            var d = [];
            if (")" !== this.peekToken().text) {
                do
                    d.push(this.expression());
                while (this.expect(","))
            }
            this.consume(")");
            var e = this;
            return function(g, f) {
                for (var h = [], m = c ? c(g, f) : g, k = 0; k < d.length; k++)
                    h.push(d[k](g, f));
                k = a(g, f, m) || w;
                Xa(m, e.text);
                Xa(k, e.text);
                h = k.apply ? k.apply(m, h) : k(h[0], h[1], h[2], h[3], h[4]);
                return Xa(h, e.text)
            }
        },
        arrayDeclaration: function() {
            var a = []
              , c = !0;
            if ("]" !== this.peekToken().text) {
                do {
                    var d = this.expression();
                    a.push(d);
                    d.constant || (c = !1)
                } while (this.expect(","))
            }
            this.consume("]");
            return t(function(c, d) {
                for (var f = [], h = 0; h < a.length; h++)
                    f.push(a[h](c, d));
                return f
            }, {
                literal: !0,
                constant: c
            })
        },
        object: function() {
            var a = []
              , c = !0;
            if ("}" !== this.peekToken().text) {
                do {
                    var d = this.expect()
                      , d = d.string || d.text;
                    this.consume(":");
                    var e = this.expression();
                    a.push({
                        key: d,
                        value: e
                    });
                    e.constant || (c = !1)
                } while (this.expect(","))
            }
            this.consume("}");
            return t(function(c, d) {
                for (var e = {}, m = 0; m < a.length; m++) {
                    var k = a[m];
                    e[k.key] = k.value(c, d)
                }
                return e
            }, {
                literal: !0,
                constant: c
            })
        }
    };
    var Kb = {}
      , sa = F("$sce")
      , fa = {
        HTML: "html",
        CSS: "css",
        URL: "url",
        RESOURCE_URL: "resourceUrl",
        JS: "js"
    }
      , Y = Q.createElement("a")
      , Ac = ya(Z.location.href, !0);
    Bc.$inject = ["$provide"];
    Cc.$inject = ["$locale"];
    Ec.$inject = ["$locale"];
    var Hc = "."
      , Qd = {
        yyyy: W("FullYear", 4),
        yy: W("FullYear", 2, 0, !0),
        y: W("FullYear", 1),
        MMMM: lb("Month"),
        MMM: lb("Month", !0),
        MM: W("Month", 2, 1),
        M: W("Month", 1, 1),
        dd: W("Date", 2),
        d: W("Date", 1),
        HH: W("Hours", 2),
        H: W("Hours", 1),
        hh: W("Hours", 2, -12),
        h: W("Hours", 1, -12),
        mm: W("Minutes", 2),
        m: W("Minutes", 1),
        ss: W("Seconds", 2),
        s: W("Seconds", 1),
        sss: W("Milliseconds", 3),
        EEEE: lb("Day"),
        EEE: lb("Day", !0),
        a: function(a, c) {
            return 12 > a.getHours() ? c.AMPMS[0] : c.AMPMS[1]
        },
        Z: function(a) {
            a = -1 * a.getTimezoneOffset();
            return a = (0 <= a ? "+" : "") + (Mb(Math[0 < a ? "floor" : "ceil"](a / 60), 2) + Mb(Math.abs(a % 60), 2))
        }
    }
      , Pd = /((?:[^yMdHhmsaZE']+)|(?:'(?:[^']|'')*')|(?:E+|y+|M+|d+|H+|h+|m+|s+|a|Z))(.*)/
      , Od = /^\-?\d+$/;
    Dc.$inject = ["$locale"];
    var Md = $(x)
      , Nd = $(Ia);
    Fc.$inject = ["$parse"];
    var Xd = $({
        restrict: "E",
        compile: function(a, c) {
            8 >= M && (c.href || c.name || c.$set("href", ""),
            a.append(Q.createComment("IE fix")));
            if (!c.href && !c.name)
                return function(a, c) {
                    c.on("click", function(a) {
                        c.attr("href") || a.preventDefault()
                    })
                }
        }
    })
      , Ob = {};
    q(gb, function(a, c) {
        if ("multiple" != a) {
            var d = ma("ng-" + c);
            Ob[d] = function() {
                return {
                    priority: 100,
                    link: function(a, g, f) {
                        a.$watch(f[d], function(a) {
                            f.$set(c, !!a)
                        })
                    }
                }
            }
        }
    });
    q(["src", "srcset", "href"], function(a) {
        var c = ma("ng-" + a);
        Ob[c] = function() {
            return {
                priority: 99,
                link: function(d, e, g) {
                    g.$observe(c, function(c) {
                        c && (g.$set(a, c),
                        M && e.prop(a, g[a]))
                    })
                }
            }
        }
    });
    var ob = {
        $addControl: w,
        $removeControl: w,
        $setValidity: w,
        $setDirty: w,
        $setPristine: w
    };
    Ic.$inject = ["$element", "$attrs", "$scope"];
    var Kc = function(a) {
        return ["$timeout", function(c) {
            return {
                name: "form",
                restrict: a ? "EAC" : "E",
                controller: Ic,
                compile: function() {
                    return {
                        pre: function(a, e, g, f) {
                            if (!g.action) {
                                var h = function(a) {
                                    a.preventDefault ? a.preventDefault() : a.returnValue = !1
                                };
                                Jc(e[0], "submit", h);
                                e.on("$destroy", function() {
                                    c(function() {
                                        Bb(e[0], "submit", h)
                                    }, 0, !1)
                                })
                            }
                            var m = e.parent().controller("form")
                              , k = g.name || g.ngForm;
                            k && kb(a, k, f, k);
                            if (m)
                                e.on("$destroy", function() {
                                    m.$removeControl(f);
                                    k && kb(a, k, r, k);
                                    t(f, ob)
                                })
                        }
                    }
                }
            }
        }
        ]
    }
      , Yd = Kc()
      , Zd = Kc(!0)
      , $d = /^(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$/
      , ae = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$/
      , be = /^\s*(\-|\+)?(\d+|(\d*(\.\d*)))\s*$/
      , Lc = {
        text: qb,
        number: function(a, c, d, e, g, f) {
            qb(a, c, d, e, g, f);
            e.$parsers.push(function(a) {
                var c = e.$isEmpty(a);
                if (c || be.test(a))
                    return e.$setValidity("number", !0),
                    "" === a ? null : c ? a : parseFloat(a);
                e.$setValidity("number", !1);
                return r
            });
            e.$formatters.push(function(a) {
                return e.$isEmpty(a) ? "" : "" + a
            });
            d.min && (a = function(a) {
                var c = parseFloat(d.min);
                return pa(e, "min", e.$isEmpty(a) || a >= c, a)
            }
            ,
            e.$parsers.push(a),
            e.$formatters.push(a));
            d.max && (a = function(a) {
                var c = parseFloat(d.max);
                return pa(e, "max", e.$isEmpty(a) || a <= c, a)
            }
            ,
            e.$parsers.push(a),
            e.$formatters.push(a));
            e.$formatters.push(function(a) {
                return pa(e, "number", e.$isEmpty(a) || sb(a), a)
            })
        },
        url: function(a, c, d, e, g, f) {
            qb(a, c, d, e, g, f);
            a = function(a) {
                return pa(e, "url", e.$isEmpty(a) || $d.test(a), a)
            }
            ;
            e.$formatters.push(a);
            e.$parsers.push(a)
        },
        email: function(a, c, d, e, g, f) {
            qb(a, c, d, e, g, f);
            a = function(a) {
                return pa(e, "email", e.$isEmpty(a) || ae.test(a), a)
            }
            ;
            e.$formatters.push(a);
            e.$parsers.push(a)
        },
        radio: function(a, c, d, e) {
            z(d.name) && c.attr("name", Za());
            c.on("click", function() {
                c[0].checked && a.$apply(function() {
                    e.$setViewValue(d.value)
                })
            });
            e.$render = function() {
                c[0].checked = d.value == e.$viewValue
            }
            ;
            d.$observe("value", e.$render)
        },
        checkbox: function(a, c, d, e) {
            var g = d.ngTrueValue
              , f = d.ngFalseValue;
            D(g) || (g = !0);
            D(f) || (f = !1);
            c.on("click", function() {
                a.$apply(function() {
                    e.$setViewValue(c[0].checked)
                })
            });
            e.$render = function() {
                c[0].checked = e.$viewValue
            }
            ;
            e.$isEmpty = function(a) {
                return a !== g
            }
            ;
            e.$formatters.push(function(a) {
                return a === g
            });
            e.$parsers.push(function(a) {
                return a ? g : f
            })
        },
        hidden: w,
        button: w,
        submit: w,
        reset: w
    }
      , Mc = ["$browser", "$sniffer", function(a, c) {
        return {
            restrict: "E",
            require: "?ngModel",
            link: function(d, e, g, f) {
                f && (Lc[x(g.type)] || Lc.text)(d, e, g, f, c, a)
            }
        }
    }
    ]
      , nb = "ng-valid"
      , mb = "ng-invalid"
      , Ja = "ng-pristine"
      , pb = "ng-dirty"
      , ce = ["$scope", "$exceptionHandler", "$attrs", "$element", "$parse", function(a, c, d, e, g) {
        function f(a, c) {
            c = c ? "-" + db(c, "-") : "";
            e.removeClass((a ? mb : nb) + c).addClass((a ? nb : mb) + c)
        }
        this.$modelValue = this.$viewValue = Number.NaN;
        this.$parsers = [];
        this.$formatters = [];
        this.$viewChangeListeners = [];
        this.$pristine = !0;
        this.$dirty = !1;
        this.$valid = !0;
        this.$invalid = !1;
        this.$name = d.name;
        var h = g(d.ngModel)
          , m = h.assign;
        if (!m)
            throw F("ngModel")("nonassign", d.ngModel, ga(e));
        this.$render = w;
        this.$isEmpty = function(a) {
            return z(a) || "" === a || null === a || a !== a
        }
        ;
        var k = e.inheritedData("$formController") || ob
          , l = 0
          , n = this.$error = {};
        e.addClass(Ja);
        f(!0);
        this.$setValidity = function(a, c) {
            n[a] !== !c && (c ? (n[a] && l--,
            l || (f(!0),
            this.$valid = !0,
            this.$invalid = !1)) : (f(!1),
            this.$invalid = !0,
            this.$valid = !1,
            l++),
            n[a] = !c,
            f(c, a),
            k.$setValidity(a, c, this))
        }
        ;
        this.$setPristine = function() {
            this.$dirty = !1;
            this.$pristine = !0;
            e.removeClass(pb).addClass(Ja)
        }
        ;
        this.$setViewValue = function(d) {
            this.$viewValue = d;
            this.$pristine && (this.$dirty = !0,
            this.$pristine = !1,
            e.removeClass(Ja).addClass(pb),
            k.$setDirty());
            q(this.$parsers, function(a) {
                d = a(d)
            });
            this.$modelValue !== d && (this.$modelValue = d,
            m(a, d),
            q(this.$viewChangeListeners, function(a) {
                try {
                    a()
                } catch (d) {
                    c(d)
                }
            }))
        }
        ;
        var p = this;
        a.$watch(function() {
            var c = h(a);
            if (p.$modelValue !== c) {
                var d = p.$formatters
                  , e = d.length;
                for (p.$modelValue = c; e--; )
                    c = d[e](c);
                p.$viewValue !== c && (p.$viewValue = c,
                p.$render())
            }
            return c
        })
    }
    ]
      , de = function() {
        return {
            require: ["ngModel", "^?form"],
            controller: ce,
            link: function(a, c, d, e) {
                var g = e[0]
                  , f = e[1] || ob;
                f.$addControl(g);
                a.$on("$destroy", function() {
                    f.$removeControl(g)
                })
            }
        }
    }
      , ee = $({
        require: "ngModel",
        link: function(a, c, d, e) {
            e.$viewChangeListeners.push(function() {
                a.$eval(d.ngChange)
            })
        }
    })
      , Nc = function() {
        return {
            require: "?ngModel",
            link: function(a, c, d, e) {
                if (e) {
                    d.required = !0;
                    var g = function(a) {
                        if (d.required && e.$isEmpty(a))
                            e.$setValidity("required", !1);
                        else
                            return e.$setValidity("required", !0),
                            a
                    };
                    e.$formatters.push(g);
                    e.$parsers.unshift(g);
                    d.$observe("required", function() {
                        g(e.$viewValue)
                    })
                }
            }
        }
    }
      , fe = function() {
        return {
            require: "ngModel",
            link: function(a, c, d, e) {
                var g = (a = /\/(.*)\//.exec(d.ngList)) && RegExp(a[1]) || d.ngList || ",";
                e.$parsers.push(function(a) {
                    if (!z(a)) {
                        var c = [];
                        a && q(a.split(g), function(a) {
                            a && c.push(ba(a))
                        });
                        return c
                    }
                });
                e.$formatters.push(function(a) {
                    return K(a) ? a.join(", ") : r
                });
                e.$isEmpty = function(a) {
                    return !a || !a.length
                }
            }
        }
    }
      , ge = /^(true|false|\d+)$/
      , he = function() {
        return {
            priority: 100,
            compile: function(a, c) {
                return ge.test(c.ngValue) ? function(a, c, g) {
                    g.$set("value", a.$eval(g.ngValue))
                }
                : function(a, c, g) {
                    a.$watch(g.ngValue, function(a) {
                        g.$set("value", a)
                    })
                }
            }
        }
    }
      , ie = ta(function(a, c, d) {
        c.addClass("ng-binding").data("$binding", d.ngBind);
        a.$watch(d.ngBind, function(a) {
            c.text(a == r ? "" : a)
        })
    })
      , je = ["$interpolate", function(a) {
        return function(c, d, e) {
            c = a(d.attr(e.$attr.ngBindTemplate));
            d.addClass("ng-binding").data("$binding", c);
            e.$observe("ngBindTemplate", function(a) {
                d.text(a)
            })
        }
    }
    ]
      , ke = ["$sce", "$parse", function(a, c) {
        return function(d, e, g) {
            e.addClass("ng-binding").data("$binding", g.ngBindHtml);
            var f = c(g.ngBindHtml);
            d.$watch(function() {
                return (f(d) || "").toString()
            }, function(c) {
                e.html(a.getTrustedHtml(f(d)) || "")
            })
        }
    }
    ]
      , le = Nb("", !0)
      , me = Nb("Odd", 0)
      , ne = Nb("Even", 1)
      , oe = ta({
        compile: function(a, c) {
            c.$set("ngCloak", r);
            a.removeClass("ng-cloak")
        }
    })
      , pe = [function() {
        return {
            scope: !0,
            controller: "@",
            priority: 500
        }
    }
    ]
      , Oc = {};
    q("click dblclick mousedown mouseup mouseover mouseout mousemove mouseenter mouseleave keydown keyup keypress submit focus blur copy cut paste".split(" "), function(a) {
        var c = ma("ng-" + a);
        Oc[c] = ["$parse", function(d) {
            return {
                compile: function(e, g) {
                    var f = d(g[c]);
                    return function(c, d, e) {
                        d.on(x(a), function(a) {
                            c.$apply(function() {
                                f(c, {
                                    $event: a
                                })
                            })
                        })
                    }
                }
            }
        }
        ]
    });
    var qe = ["$animate", function(a) {
        return {
            transclude: "element",
            priority: 600,
            terminal: !0,
            restrict: "A",
            $$tlb: !0,
            link: function(c, d, e, g, f) {
                var h, m;
                c.$watch(e.ngIf, function(g) {
                    Oa(g) ? m || (m = c.$new(),
                    f(m, function(c) {
                        c[c.length++] = Q.createComment(" end ngIf: " + e.ngIf + " ");
                        h = {
                            clone: c
                        };
                        a.enter(c, d.parent(), d)
                    })) : (m && (m.$destroy(),
                    m = null),
                    h && (a.leave(wb(h.clone)),
                    h = null))
                })
            }
        }
    }
    ]
      , re = ["$http", "$templateCache", "$anchorScroll", "$animate", "$sce", function(a, c, d, e, g) {
        return {
            restrict: "ECA",
            priority: 400,
            terminal: !0,
            transclude: "element",
            controller: Ca.noop,
            compile: function(f, h) {
                var m = h.ngInclude || h.src
                  , k = h.onload || ""
                  , l = h.autoscroll;
                return function(f, h, q, r, y) {
                    var A = 0, u, t, H = function() {
                        u && (u.$destroy(),
                        u = null);
                        t && (e.leave(t),
                        t = null)
                    };
                    f.$watch(g.parseAsResourceUrl(m), function(g) {
                        var m = function() {
                            !B(l) || l && !f.$eval(l) || d()
                        }
                          , q = ++A;
                        g ? (a.get(g, {
                            cache: c
                        }).success(function(a) {
                            if (q === A) {
                                var c = f.$new();
                                r.template = a;
                                a = y(c, function(a) {
                                    H();
                                    e.enter(a, null, h, m)
                                });
                                u = c;
                                t = a;
                                u.$emit("$includeContentLoaded");
                                f.$eval(k)
                            }
                        }).error(function() {
                            q === A && H()
                        }),
                        f.$emit("$includeContentRequested")) : (H(),
                        r.template = null)
                    })
                }
            }
        }
    }
    ]
      , se = ["$compile", function(a) {
        return {
            restrict: "ECA",
            priority: -400,
            require: "ngInclude",
            link: function(c, d, e, g) {
                d.html(g.template);
                a(d.contents())(c)
            }
        }
    }
    ]
      , te = ta({
        priority: 450,
        compile: function() {
            return {
                pre: function(a, c, d) {
                    a.$eval(d.ngInit)
                }
            }
        }
    })
      , ue = ta({
        terminal: !0,
        priority: 1E3
    })
      , ve = ["$locale", "$interpolate", function(a, c) {
        var d = /{}/g;
        return {
            restrict: "EA",
            link: function(e, g, f) {
                var h = f.count
                  , m = f.$attr.when && g.attr(f.$attr.when)
                  , k = f.offset || 0
                  , l = e.$eval(m) || {}
                  , n = {}
                  , p = c.startSymbol()
                  , s = c.endSymbol()
                  , r = /^when(Minus)?(.+)$/;
                q(f, function(a, c) {
                    r.test(c) && (l[x(c.replace("when", "").replace("Minus", "-"))] = g.attr(f.$attr[c]))
                });
                q(l, function(a, e) {
                    n[e] = c(a.replace(d, p + h + "-" + k + s))
                });
                e.$watch(function() {
                    var c = parseFloat(e.$eval(h));
                    if (isNaN(c))
                        return "";
                    c in l || (c = a.pluralCat(c - k));
                    return n[c](e, g, !0)
                }, function(a) {
                    g.text(a)
                })
            }
        }
    }
    ]
      , we = ["$parse", "$animate", function(a, c) {
        var d = F("ngRepeat");
        return {
            transclude: "element",
            priority: 1E3,
            terminal: !0,
            $$tlb: !0,
            link: function(e, g, f, h, m) {
                var k = f.ngRepeat, l = k.match(/^\s*([\s\S]+?)\s+in\s+([\s\S]+?)(?:\s+track\s+by\s+([\s\S]+?))?\s*$/), n, p, s, r, y, t, u = {
                    $id: Fa
                };
                if (!l)
                    throw d("iexp", k);
                f = l[1];
                h = l[2];
                (l = l[3]) ? (n = a(l),
                p = function(a, c, d) {
                    t && (u[t] = a);
                    u[y] = c;
                    u.$index = d;
                    return n(e, u)
                }
                ) : (s = function(a, c) {
                    return Fa(c)
                }
                ,
                r = function(a) {
                    return a
                }
                );
                l = f.match(/^(?:([\$\w]+)|\(([\$\w]+)\s*,\s*([\$\w]+)\))$/);
                if (!l)
                    throw d("iidexp", f);
                y = l[3] || l[1];
                t = l[2];
                var B = {};
                e.$watchCollection(h, function(a) {
                    var f, h, l = g[0], n, u = {}, z, P, D, x, T, w, F = [];
                    if (rb(a))
                        T = a,
                        n = p || s;
                    else {
                        n = p || r;
                        T = [];
                        for (D in a)
                            a.hasOwnProperty(D) && "$" != D.charAt(0) && T.push(D);
                        T.sort()
                    }
                    z = T.length;
                    h = F.length = T.length;
                    for (f = 0; f < h; f++)
                        if (D = a === T ? f : T[f],
                        x = a[D],
                        x = n(D, x, f),
                        xa(x, "`track by` id"),
                        B.hasOwnProperty(x))
                            w = B[x],
                            delete B[x],
                            u[x] = w,
                            F[f] = w;
                        else {
                            if (u.hasOwnProperty(x))
                                throw q(F, function(a) {
                                    a && a.scope && (B[a.id] = a)
                                }),
                                d("dupes", k, x);
                            F[f] = {
                                id: x
                            };
                            u[x] = !1
                        }
                    for (D in B)
                        B.hasOwnProperty(D) && (w = B[D],
                        f = wb(w.clone),
                        c.leave(f),
                        q(f, function(a) {
                            a.$$NG_REMOVED = !0
                        }),
                        w.scope.$destroy());
                    f = 0;
                    for (h = T.length; f < h; f++) {
                        D = a === T ? f : T[f];
                        x = a[D];
                        w = F[f];
                        F[f - 1] && (l = F[f - 1].clone[F[f - 1].clone.length - 1]);
                        if (w.scope) {
                            P = w.scope;
                            n = l;
                            do
                                n = n.nextSibling;
                            while (n && n.$$NG_REMOVED);
                            w.clone[0] != n && c.move(wb(w.clone), null, A(l));
                            l = w.clone[w.clone.length - 1]
                        } else
                            P = e.$new();
                        P[y] = x;
                        t && (P[t] = D);
                        P.$index = f;
                        P.$first = 0 === f;
                        P.$last = f === z - 1;
                        P.$middle = !(P.$first || P.$last);
                        P.$odd = !(P.$even = 0 === (f & 1));
                        w.scope || m(P, function(a) {
                            a[a.length++] = Q.createComment(" end ngRepeat: " + k + " ");
                            c.enter(a, null, A(l));
                            l = a;
                            w.scope = P;
                            w.clone = a;
                            u[w.id] = w
                        })
                    }
                    B = u
                })
            }
        }
    }
    ]
      , xe = ["$animate", function(a) {
        return function(c, d, e) {
            c.$watch(e.ngShow, function(c) {
                a[Oa(c) ? "removeClass" : "addClass"](d, "ng-hide")
            })
        }
    }
    ]
      , ye = ["$animate", function(a) {
        return function(c, d, e) {
            c.$watch(e.ngHide, function(c) {
                a[Oa(c) ? "addClass" : "removeClass"](d, "ng-hide")
            })
        }
    }
    ]
      , ze = ta(function(a, c, d) {
        a.$watch(d.ngStyle, function(a, d) {
            d && a !== d && q(d, function(a, d) {
                c.css(d, "")
            });
            a && c.css(a)
        }, !0)
    })
      , Ae = ["$animate", function(a) {
        return {
            restrict: "EA",
            require: "ngSwitch",
            controller: ["$scope", function() {
                this.cases = {}
            }
            ],
            link: function(c, d, e, g) {
                var f, h, m = [];
                c.$watch(e.ngSwitch || e.on, function(d) {
                    for (var l = 0, n = m.length; l < n; l++)
                        m[l].$destroy(),
                        a.leave(h[l]);
                    h = [];
                    m = [];
                    if (f = g.cases["!" + d] || g.cases["?"])
                        c.$eval(e.change),
                        q(f, function(d) {
                            var e = c.$new();
                            m.push(e);
                            d.transclude(e, function(c) {
                                var e = d.element;
                                h.push(c);
                                a.enter(c, e.parent(), e)
                            })
                        })
                })
            }
        }
    }
    ]
      , Be = ta({
        transclude: "element",
        priority: 800,
        require: "^ngSwitch",
        link: function(a, c, d, e, g) {
            e.cases["!" + d.ngSwitchWhen] = e.cases["!" + d.ngSwitchWhen] || [];
            e.cases["!" + d.ngSwitchWhen].push({
                transclude: g,
                element: c
            })
        }
    })
      , Ce = ta({
        transclude: "element",
        priority: 800,
        require: "^ngSwitch",
        link: function(a, c, d, e, g) {
            e.cases["?"] = e.cases["?"] || [];
            e.cases["?"].push({
                transclude: g,
                element: c
            })
        }
    })
      , De = ta({
        controller: ["$element", "$transclude", function(a, c) {
            if (!c)
                throw F("ngTransclude")("orphan", ga(a));
            this.$transclude = c
        }
        ],
        link: function(a, c, d, e) {
            e.$transclude(function(a) {
                c.empty();
                c.append(a)
            })
        }
    })
      , Ee = ["$templateCache", function(a) {
        return {
            restrict: "E",
            terminal: !0,
            compile: function(c, d) {
                "text/ng-template" == d.type && a.put(d.id, c[0].text)
            }
        }
    }
    ]
      , Fe = F("ngOptions")
      , Ge = $({
        terminal: !0
    })
      , He = ["$compile", "$parse", function(a, c) {
        var d = /^\s*([\s\S]+?)(?:\s+as\s+([\s\S]+?))?(?:\s+group\s+by\s+([\s\S]+?))?\s+for\s+(?:([\$\w][\$\w]*)|(?:\(\s*([\$\w][\$\w]*)\s*,\s*([\$\w][\$\w]*)\s*\)))\s+in\s+([\s\S]+?)(?:\s+track\s+by\s+([\s\S]+?))?$/
          , e = {
            $setViewValue: w
        };
        return {
            restrict: "E",
            require: ["select", "?ngModel"],
            controller: ["$element", "$scope", "$attrs", function(a, c, d) {
                var m = this, k = {}, l = e, n;
                m.databound = d.ngModel;
                m.init = function(a, c, d) {
                    l = a;
                    n = d
                }
                ;
                m.addOption = function(c) {
                    xa(c, '"option value"');
                    k[c] = !0;
                    l.$viewValue == c && (a.val(c),
                    n.parent() && n.remove())
                }
                ;
                m.removeOption = function(a) {
                    this.hasOption(a) && (delete k[a],
                    l.$viewValue == a && this.renderUnknownOption(a))
                }
                ;
                m.renderUnknownOption = function(c) {
                    c = "? " + Fa(c) + " ?";
                    n.val(c);
                    a.prepend(n);
                    a.val(c);
                    n.prop("selected", !0)
                }
                ;
                m.hasOption = function(a) {
                    return k.hasOwnProperty(a)
                }
                ;
                c.$on("$destroy", function() {
                    m.renderUnknownOption = w
                })
            }
            ],
            link: function(e, f, h, m) {
                function k(a, c, d, e) {
                    d.$render = function() {
                        var a = d.$viewValue;
                        e.hasOption(a) ? (x.parent() && x.remove(),
                        c.val(a),
                        "" === a && w.prop("selected", !0)) : z(a) && w ? c.val("") : e.renderUnknownOption(a)
                    }
                    ;
                    c.on("change", function() {
                        a.$apply(function() {
                            x.parent() && x.remove();
                            d.$setViewValue(c.val())
                        })
                    })
                }
                function l(a, c, d) {
                    var e;
                    d.$render = function() {
                        var a = new Sa(d.$viewValue);
                        q(c.find("option"), function(c) {
                            c.selected = B(a.get(c.value))
                        })
                    }
                    ;
                    a.$watch(function() {
                        ua(e, d.$viewValue) || (e = aa(d.$viewValue),
                        d.$render())
                    });
                    c.on("change", function() {
                        a.$apply(function() {
                            var a = [];
                            q(c.find("option"), function(c) {
                                c.selected && a.push(c.value)
                            });
                            d.$setViewValue(a)
                        })
                    })
                }
                function n(e, f, g) {
                    function h() {
                        var a = {
                            "": []
                        }, c = [""], d, k, r, t, v;
                        t = g.$modelValue;
                        v = A(e) || [];
                        var C = n ? Pb(v) : v, F, I, z;
                        I = {};
                        r = !1;
                        var E, H;
                        if (s)
                            if (w && K(t))
                                for (r = new Sa([]),
                                z = 0; z < t.length; z++)
                                    I[m] = t[z],
                                    r.put(w(e, I), t[z]);
                            else
                                r = new Sa(t);
                        for (z = 0; F = C.length,
                        z < F; z++) {
                            k = z;
                            if (n) {
                                k = C[z];
                                if ("$" === k.charAt(0))
                                    continue;
                                I[n] = k
                            }
                            I[m] = v[k];
                            d = p(e, I) || "";
                            (k = a[d]) || (k = a[d] = [],
                            c.push(d));
                            s ? d = B(r.remove(w ? w(e, I) : q(e, I))) : (w ? (d = {},
                            d[m] = t,
                            d = w(e, d) === w(e, I)) : d = t === q(e, I),
                            r = r || d);
                            E = l(e, I);
                            E = B(E) ? E : "";
                            k.push({
                                id: w ? w(e, I) : n ? C[z] : z,
                                label: E,
                                selected: d
                            })
                        }
                        s || (y || null === t ? a[""].unshift({
                            id: "",
                            label: "",
                            selected: !r
                        }) : r || a[""].unshift({
                            id: "?",
                            label: "",
                            selected: !0
                        }));
                        I = 0;
                        for (C = c.length; I < C; I++) {
                            d = c[I];
                            k = a[d];
                            x.length <= I ? (t = {
                                element: D.clone().attr("label", d),
                                label: k.label
                            },
                            v = [t],
                            x.push(v),
                            f.append(t.element)) : (v = x[I],
                            t = v[0],
                            t.label != d && t.element.attr("label", t.label = d));
                            E = null;
                            z = 0;
                            for (F = k.length; z < F; z++)
                                r = k[z],
                                (d = v[z + 1]) ? (E = d.element,
                                d.label !== r.label && E.text(d.label = r.label),
                                d.id !== r.id && E.val(d.id = r.id),
                                E[0].selected !== r.selected && E.prop("selected", d.selected = r.selected)) : ("" === r.id && y ? H = y : (H = u.clone()).val(r.id).attr("selected", r.selected).text(r.label),
                                v.push({
                                    element: H,
                                    label: r.label,
                                    id: r.id,
                                    selected: r.selected
                                }),
                                E ? E.after(H) : t.element.append(H),
                                E = H);
                            for (z++; v.length > z; )
                                v.pop().element.remove()
                        }
                        for (; x.length > I; )
                            x.pop()[0].element.remove()
                    }
                    var k;
                    if (!(k = t.match(d)))
                        throw Fe("iexp", t, ga(f));
                    var l = c(k[2] || k[1])
                      , m = k[4] || k[6]
                      , n = k[5]
                      , p = c(k[3] || "")
                      , q = c(k[2] ? k[1] : m)
                      , A = c(k[7])
                      , w = k[8] ? c(k[8]) : null
                      , x = [[{
                        element: f,
                        label: ""
                    }]];
                    y && (a(y)(e),
                    y.removeClass("ng-scope"),
                    y.remove());
                    f.empty();
                    f.on("change", function() {
                        e.$apply(function() {
                            var a, c = A(e) || [], d = {}, h, k, l, p, t, u, v;
                            if (s)
                                for (k = [],
                                p = 0,
                                u = x.length; p < u; p++)
                                    for (a = x[p],
                                    l = 1,
                                    t = a.length; l < t; l++) {
                                        if ((h = a[l].element)[0].selected) {
                                            h = h.val();
                                            n && (d[n] = h);
                                            if (w)
                                                for (v = 0; v < c.length && (d[m] = c[v],
                                                w(e, d) != h); v++)
                                                    ;
                                            else
                                                d[m] = c[h];
                                            k.push(q(e, d))
                                        }
                                    }
                            else if (h = f.val(),
                            "?" == h)
                                k = r;
                            else if ("" === h)
                                k = null;
                            else if (w)
                                for (v = 0; v < c.length; v++) {
                                    if (d[m] = c[v],
                                    w(e, d) == h) {
                                        k = q(e, d);
                                        break
                                    }
                                }
                            else
                                d[m] = c[h],
                                n && (d[n] = h),
                                k = q(e, d);
                            g.$setViewValue(k)
                        })
                    });
                    g.$render = h;
                    e.$watch(h)
                }
                if (m[1]) {
                    var p = m[0];
                    m = m[1];
                    var s = h.multiple, t = h.ngOptions, y = !1, w, u = A(Q.createElement("option")), D = A(Q.createElement("optgroup")), x = u.clone();
                    h = 0;
                    for (var v = f.children(), F = v.length; h < F; h++)
                        if ("" === v[h].value) {
                            w = y = v.eq(h);
                            break
                        }
                    p.init(m, y, x);
                    s && (m.$isEmpty = function(a) {
                        return !a || 0 === a.length
                    }
                    );
                    t ? n(e, f, m) : s ? l(e, f, m) : k(e, f, m, p)
                }
            }
        }
    }
    ]
      , Ie = ["$interpolate", function(a) {
        var c = {
            addOption: w,
            removeOption: w
        };
        return {
            restrict: "E",
            priority: 100,
            compile: function(d, e) {
                if (z(e.value)) {
                    var g = a(d.text(), !0);
                    g || e.$set("value", d.text())
                }
                return function(a, d, e) {
                    var k = d.parent()
                      , l = k.data("$selectController") || k.parent().data("$selectController");
                    l && l.databound ? d.prop("selected", !1) : l = c;
                    g ? a.$watch(g, function(a, c) {
                        e.$set("value", a);
                        a !== c && l.removeOption(c);
                        l.addOption(a)
                    }) : l.addOption(e.value);
                    d.on("$destroy", function() {
                        l.removeOption(e.value)
                    })
                }
            }
        }
    }
    ]
      , Je = $({
        restrict: "E",
        terminal: !0
    });
    (Da = Z.jQuery) ? (A = Da,
    t(Da.fn, {
        scope: Ga.scope,
        isolateScope: Ga.isolateScope,
        controller: Ga.controller,
        injector: Ga.injector,
        inheritedData: Ga.inheritedData
    }),
    xb("remove", !0, !0, !1),
    xb("empty", !1, !1, !1),
    xb("html", !1, !1, !0)) : A = O;
    Ca.element = A;
    (function(a) {
        t(a, {
            bootstrap: Zb,
            copy: aa,
            extend: t,
            equals: ua,
            element: A,
            forEach: q,
            injector: $b,
            noop: w,
            bind: cb,
            toJson: qa,
            fromJson: Vb,
            identity: Ba,
            isUndefined: z,
            isDefined: B,
            isString: D,
            isFunction: L,
            isObject: X,
            isNumber: sb,
            isElement: Qc,
            isArray: K,
            version: Sd,
            isDate: La,
            lowercase: x,
            uppercase: Ia,
            callbacks: {
                counter: 0
            },
            $$minErr: F,
            $$csp: Ub
        });
        Ua = Vc(Z);
        try {
            Ua("ngLocale")
        } catch (c) {
            Ua("ngLocale", []).provider("$locale", sd)
        }
        Ua("ng", ["ngLocale"], ["$provide", function(a) {
            a.provider({
                $$sanitizeUri: Cd
            });
            a.provider("$compile", jc).directive({
                a: Xd,
                input: Mc,
                textarea: Mc,
                form: Yd,
                script: Ee,
                select: He,
                style: Je,
                option: Ie,
                ngBind: ie,
                ngBindHtml: ke,
                ngBindTemplate: je,
                ngClass: le,
                ngClassEven: ne,
                ngClassOdd: me,
                ngCloak: oe,
                ngController: pe,
                ngForm: Zd,
                ngHide: ye,
                ngIf: qe,
                ngInclude: re,
                ngInit: te,
                ngNonBindable: ue,
                ngPluralize: ve,
                ngRepeat: we,
                ngShow: xe,
                ngStyle: ze,
                ngSwitch: Ae,
                ngSwitchWhen: Be,
                ngSwitchDefault: Ce,
                ngOptions: Ge,
                ngTransclude: De,
                ngModel: de,
                ngList: fe,
                ngChange: ee,
                required: Nc,
                ngRequired: Nc,
                ngValue: he
            }).directive({
                ngInclude: se
            }).directive(Ob).directive(Oc);
            a.provider({
                $anchorScroll: dd,
                $animate: Ud,
                $browser: fd,
                $cacheFactory: gd,
                $controller: jd,
                $document: kd,
                $exceptionHandler: ld,
                $filter: Bc,
                $interpolate: qd,
                $interval: rd,
                $http: md,
                $httpBackend: od,
                $location: ud,
                $log: vd,
                $parse: yd,
                $rootScope: Bd,
                $q: zd,
                $sce: Fd,
                $sceDelegate: Ed,
                $sniffer: Gd,
                $templateCache: hd,
                $timeout: Hd,
                $window: Id
            })
        }
        ])
    }
    )(Ca);
    A(Q).ready(function() {
        Tc(Q, Zb)
    })
}
)(window, document);
!angular.$$csp() && angular.element(document).find("head").prepend('<style type="text/css">@charset "UTF-8";[ng\\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide{display:none !important;}ng\\:form{display:block;}</style>');
//# sourceMappingURL=angular.min.js.map
