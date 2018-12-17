Ext.namespace("Freesky.Common");
Freesky.Common.XyColFormat = function() {
	var trimRe = /^\s+|\s+$/g;
	return {
		cnYelMoney : function(v,m) {
		    m.attr = 'style="background: #EEF8FF"';
			if (isNaN(v)) {
				return "0.00";
			} else {
				v = (Math.round((v - 0) * 100)) / 100;
				v = (v == Math.floor(v)) ? v + ".00" : ((v * 10 == Math.floor(v
						* 10)) ? v + "0" : v);
				v = String(v);
				var ps = v.split(".");
				var whole = ps[0];
				var sub = ps[1] ? "." + ps[1] : ".00";
				var r = /(\d+)(\d{3})/;
				while (r.test(whole)) {
					whole = whole.replace(r, "$1" + "," + "$2");
				}
				v = whole + sub;
				if (v.charAt(0) == "-") {
					return "-" + v.substr(1);
				}
				return "" + v;
			}
		},
		overFlowTip : function(val) {
			return "<span stype='display:table;width:100%;' title='" + val
					+ "'>" + val + "</span>";
		},
		date : function(v, format) {
			if (!v) {
				return "";
			}
			if (!Ext.isDate(v)) {
				v = v.replace(/-/g, "/");
				v = new Date(Date.parse(v));
			}
			return v.dateFormat(format || "m/d/Y");
		},
		dateRenderer : function(format) {
			return function(v) {
				return Freesky.Common.XyFormat.date(v, format);
			};
		},
		dateYelRenderer : function(v, format, m) {
			m.attr = 'style="background: #EEF8FF"';
			return Freesky.Common.XyColFormat.date(v, format);
		},
		stripTagsRE : /<\/?[^>]+>/gi,
		stripTags : function(v) {
			return !v ? v : String(v).replace(this.stripTagsRE, "");
		},
		stripScriptsRe : /(?:<script.*?>)((\n|\r|.)*?)(?:<\/script>)/ig,
		stripScripts : function(v) {
			return !v ? v : String(v).replace(this.stripScriptsRe, "");
		},
		fileSize : function(size) {
			if (size < 1024) {
				return size + " bytes";
			} else {
				if (size < 1048576) {
					return (Math.round(((size * 10) / 1024)) / 10) + " KB";
				} else {
					return (Math.round(((size * 10) / 1048576)) / 10) + " MB";
				}
			}
		},
		math : function() {
			var fns = {};
			return function(v, a) {
				if (!fns[a]) {
					fns[a] = new Function("v", "return v " + a + ";");
				}
				return fns[a](v);
			};
		}()
	};
}();