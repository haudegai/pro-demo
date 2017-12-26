if (navigator.userAgent.indexOf("iPhone") != -1
		|| navigator.userAgent.indexOf("iPod") != -1) {
	addEventListener("load", function() {
		setTimeout(function() {
			top.window.scrollTo(0, 1)
		}, 1)
	}, false)
}
w3web = {
	dynnav : {
		dataCallback : function(F) {
			var G = document.getElementById("w3-menu-links");
			if (!G) {
				return
			}
			while (G.hasChildNodes()) {
				G.removeChild(G.lastChild)
			}
			for (var E = 0, D = F.menuData.length; E < D; E++) {
				var B = document.createElement("a");
				var C = F.menuData[E].url;
				if (C.indexOf("") > -1 && C.indexOf("/support/us/en/") == -1) {
					C = C.replace("none")
				}
				B.href = C;
				B.innerHTML = F.menuData[E].title;
				var A = document.createElement("li");
				A.appendChild(B);
				G.appendChild(A)
			}
		}
	}
};
w3 = w3web;
(function() {
	var F = document.querySelectorAll("meta");
	var G = "us";
	var E = "en";
	for (var C = 0, B = F.length; C < B; C++) {
		var A = F[C].name;
		if (!A) {
			continue
		}
		if (A.toLowerCase() == "w3.country" && F[C].content) {
			G = F[C].content.toLowerCase().substr(0, 2);
			if (G == "gb") {
				G = "uk"
			}
		}
		if (A.toLowerCase() == "dc.language" && F[C].content) {
			E = F[C].content.toLowerCase().substr(0, 2)
		}
	}
	var D = document.createElement("script");
	D.type = "text/javascript";
	D.src = "//1.www.s81c.com/common/js/dynamicnav/www/" + G + E + "-utf8.js";
	document.querySelector("head").appendChild(D)
})();
activateMenu = function(F, D, A) {
	var C = document.getElementById(F);
	var E = document.getElementById(D);
	var B = document.getElementById(A);
	E.style.display = "none";
	C.onclick = function() {
		if (E.className.indexOf("w3-active") !== -1) {
			C.className = E.className.replace("w3-active", "");
			E.className = E.className.replace("w3-active", "");
			E.style.display = "none"
		} else {
			C.className += " w3-active";
			E.className += " w3-active";
			E.style.display = "block"
		}
		if (B) {
			B.className = B.className.replace("w3-active", "");
			B.style.display = "none"
		}
		return false
	};
	E.onclick = function(G) {
		G.stopPropagation()
	}
};
w3Init = function() {
	activateMenu("w3-menu-trigger", "w3-menu-links", "w3-search-module");
	activateMenu("w3-search-trigger", "w3-search-module", "w3-menu-links");
	var A = document.querySelector("*[class*=w3-expand-section]");
	if (A) {
		A.id = "w3-expand-section"
	}
	var B = document.querySelector("*[class*=w3-expand-overlay]");
	if (B) {
		B.id = "w3-expand-overlay"
	}
	if (A && B) {
		activateMenu("w3-expand-section", "w3-expand-overlay")
	}
};
function w3WirelessMenu() {
	var D = "w3-mast-navigation";
	var F = "active-link";
	var E = /\s*active-link/;
	var B = document.getElementById(D);
	if (B) {
		var A = B.childNodes;
		if (A) {
			for (var C = 0; C < A.length; C++) {
				(function() {
					var G = A[C];
					var H = G.childNodes[0];
					H.onclick = function() {
						var J = G.className;
						if (E.test(J)) {
							var I = J.replace(E, "");
							G.className = I
						} else {
							var I = (J) ? J + " " + F : F;
							G.className = I
						}
						return false
					}
				})()
			}
		}
	}
};

