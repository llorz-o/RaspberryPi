var app=function(){"use strict";function t(){}function n(t){return t()}function e(){return Object.create(null)}function o(t){t.forEach(n)}function r(t){return"function"==typeof t}function l(t,n){return t!=t?n==n:t!==n||t&&"object"==typeof t||"function"==typeof t}let c,i;function u(t,n){return c||(c=document.createElement("a")),c.href=n,t===c.href}function a(t,n){t.appendChild(n)}function s(t,n,e){t.insertBefore(n,e||null)}function f(t){t.parentNode&&t.parentNode.removeChild(t)}function p(t){return document.createElement(t)}function d(t){return document.createTextNode(t)}function h(){return d(" ")}function m(t,n,e,o){return t.addEventListener(n,e,o),()=>t.removeEventListener(n,e,o)}function $(t,n,e){null==e?t.removeAttribute(n):t.getAttribute(n)!==e&&t.setAttribute(n,e)}function g(t,n,e,o){null===e?t.style.removeProperty(n):t.style.setProperty(n,e,o?"important":"")}function b(t){i=t}const y=[],_=[];let k=[];const v=[],x=Promise.resolve();let w=!1;function E(t){k.push(t)}const z=new Set;let C=0;function N(){if(0!==C)return;const t=i;do{try{for(;C<y.length;){const t=y[C];C++,b(t),O(t.$$)}}catch(t){throw y.length=0,C=0,t}for(b(null),y.length=0,C=0;_.length;)_.pop()();for(let t=0;t<k.length;t+=1){const n=k[t];z.has(n)||(z.add(n),n())}k.length=0}while(y.length);for(;v.length;)v.pop()();w=!1,z.clear(),b(t)}function O(t){if(null!==t.fragment){t.update(),o(t.before_update);const n=t.dirty;t.dirty=[-1],t.fragment&&t.fragment.p(t.ctx,n),t.after_update.forEach(E)}}const A=new Set;function j(t,n){const e=t.$$;null!==e.fragment&&(!function(t){const n=[],e=[];k.forEach((o=>-1===t.indexOf(o)?n.push(o):e.push(o))),e.forEach((t=>t())),k=n}(e.after_update),o(e.on_destroy),e.fragment&&e.fragment.d(n),e.on_destroy=e.fragment=null,e.ctx=[])}function P(t,n){-1===t.$$.dirty[0]&&(y.push(t),w||(w=!0,x.then(N)),t.$$.dirty.fill(0)),t.$$.dirty[n/31|0]|=1<<n%31}function S(l,c,u,a,s,p,d,h=[-1]){const m=i;b(l);const $=l.$$={fragment:null,ctx:[],props:p,update:t,not_equal:s,bound:e(),on_mount:[],on_destroy:[],on_disconnect:[],before_update:[],after_update:[],context:new Map(c.context||(m?m.$$.context:[])),callbacks:e(),dirty:h,skip_bound:!1,root:c.target||m.$$.root};d&&d($.root);let g=!1;if($.ctx=u?u(l,c.props||{},((t,n,...e)=>{const o=e.length?e[0]:n;return $.ctx&&s($.ctx[t],$.ctx[t]=o)&&(!$.skip_bound&&$.bound[t]&&$.bound[t](o),g&&P(l,t)),n})):[],$.update(),g=!0,o($.before_update),$.fragment=!!a&&a($.ctx),c.target){if(c.hydrate){const t=function(t){return Array.from(t.childNodes)}(c.target);$.fragment&&$.fragment.l(t),t.forEach(f)}else $.fragment&&$.fragment.c();c.intro&&((y=l.$$.fragment)&&y.i&&(A.delete(y),y.i(_))),function(t,e,l,c){const{fragment:i,after_update:u}=t.$$;i&&i.m(e,l),c||E((()=>{const e=t.$$.on_mount.map(n).filter(r);t.$$.on_destroy?t.$$.on_destroy.push(...e):o(e),t.$$.on_mount=[]})),u.forEach(E)}(l,c.target,c.anchor,c.customElement),N()}var y,_;b(m)}class B{$destroy(){j(this,1),this.$destroy=t}$on(n,e){if(!r(e))return t;const o=this.$$.callbacks[n]||(this.$$.callbacks[n]=[]);return o.push(e),()=>{const t=o.indexOf(e);-1!==t&&o.splice(t,1)}}$set(t){var n;this.$$set&&(n=t,0!==Object.keys(n).length)&&(this.$$.skip_bound=!0,this.$$set(t),this.$$.skip_bound=!1)}}function M(t,n,e){const o=t.slice();return o[11]=n[e],o[2]=e,o}function I(t){let n,e,o,r,l=t[11].name+"";function c(){return t[5](t[2])}return{c(){n=p("button"),e=d(l),$(n,"class","item svelte-1lya0vw"),$(n,"key",t[11].url)},m(t,l){s(t,n,l),a(n,e),o||(r=m(n,"click",c),o=!0)},p(n,e){t=n},d(t){t&&f(n),o=!1,r()}}}function L(n){let e,r,l,c,i,d,b,y,_,k,v,x,w,E,z,C=n[3],N=[];for(let t=0;t<C.length;t+=1)N[t]=I(M(n,C,t));return{c(){e=p("main"),r=p("div");for(let t=0;t<N.length;t+=1)N[t].c();l=h(),c=p("input"),i=h(),d=p("div"),b=p("label"),b.textContent="_Blank mode",y=h(),_=p("input"),k=h(),v=p("div"),x=p("iframe"),$(c,"type","text"),c.readOnly=!0,c.value=n[1],$(b,"for","blankModeCheckbox"),g(b,"user-select","none"),g(_,"margin","0 0 0 5px"),$(_,"id","blankModeCheckbox"),$(_,"type","checkbox"),g(d,"display","flex"),g(d,"align-content","center"),$(r,"class","sidebar svelte-1lya0vw"),u(x.src,w=n[1])||$(x,"src",w),$(x,"frameborder","0"),$(x,"title","content"),$(x,"class","svelte-1lya0vw"),$(v,"class","content svelte-1lya0vw"),$(e,"class","svelte-1lya0vw")},m(t,o){s(t,e,o),a(e,r);for(let t=0;t<N.length;t+=1)N[t]&&N[t].m(r,null);a(r,l),a(r,c),a(r,i),a(r,d),a(d,b),a(d,y),a(d,_),_.checked=n[0],a(e,k),a(e,v),a(v,x),E||(z=[m(c,"click",n[6]),m(_,"change",n[7])],E=!0)},p(t,[n]){if(24&n){let e;for(C=t[3],e=0;e<C.length;e+=1){const o=M(t,C,e);N[e]?N[e].p(o,n):(N[e]=I(o),N[e].c(),N[e].m(r,l))}for(;e<N.length;e+=1)N[e].d(1);N.length=C.length}2&n&&c.value!==t[1]&&(c.value=t[1]),1&n&&(_.checked=t[0]),2&n&&!u(x.src,w=t[1])&&$(x,"src",w)},i:t,o:t,d(t){t&&f(e),function(t,n){for(let e=0;e<t.length;e+=1)t[e]&&t[e].d(n)}(N,t),E=!1,o(z)}}}function T(t,n,e){const o=location.host,r=o.indexOf("192.168")>=0,l=[{url:"https://1024.llorz.online",name:"仪表盘",port:"1024"},{url:"https://jellyfin.llorz.online",name:"Jelly-fin",port:"8096"},{url:"https://aria2ng.llorz.online",name:"Aria2",port:"6801"},{url:"https://transmission.llorz.online",name:"Transmission",port:"9091"},{url:"https://sync.llorz.online",name:"Sync",port:"58888"},{url:"https://files.llorz.online",name:"File Browser",port:"8090"},{url:"https://portainer.llorz.online",name:"Portainer",port:"9000"},{url:"https://cron.llorz.online",name:"Crontab",port:"8000"},{url:"https://nextcloud.llorz.online",name:"Nextcloud (_blank)",port:"8888",_blank:!0},{url:"https://38.54.86.157:7800/446defb6",name:"宝塔面板(_blank)",port:null,_blank:!0}];let c=!1,i=window.localStorage.getItem("INDEX")||0,u=l[i],a=u&&!r?u.url:`http://${o}:${u.port}`;function s(t){if(e(2,i=t),u=l[i],u._blank)window.open(u.url,"_blank");else if(r){if(c)return e(0,c=!1),window.open(`http://${o}:${u.port}`,"_blank");e(1,a=`http://${o}:${u.port}`)}else{if(c)return e(0,c=!1),window.open(l[t].url,"_blank");e(1,a=l[t].url)}}return[c,a,i,l,s,t=>s(t),()=>window.open(a,"_blank"),function(){c=this.checked,e(0,c)}]}return new class extends B{constructor(t){super(),S(this,t,T,L,l,{})}}({target:document.body,props:{name:"world"}})}();
//# sourceMappingURL=bundle.js.map
