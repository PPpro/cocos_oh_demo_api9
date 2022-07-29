System.register("chunks:///_virtual/main",["./NewComponent.ts"],(function(){"use strict";return{setters:[null],execute:function(){}}}));

System.register("chunks:///_virtual/NewComponent.ts",["cc"],(function(t){"use strict";var e,n,o,s,i,c;return{setters:[function(t){e=t.cclegacy,n=t.Component,o=t.input,s=t.Input,i=t.view,c=t._decorator}],execute:function(){var p;e._RF.push({},"4b050TjrKJN6IHVKFswyv3v","NewComponent",void 0);const{ccclass:r,property:u}=c;t("NewComponent",r("NewComponent")(p=class extends n{start(){o.on(s.EventType.TOUCH_MOVE,(t=>{const e=t.getUILocation(),n=i.getVisibleSize(),o=n.width/2,s=n.height/2;this.node.setPosition(e.x-o,e.y-s,this.node.position.z)}))}update(t){}})||p);e._RF.pop()}}}));

(function(r) {
  r('virtual:///prerequisite-imports/main', 'chunks:///_virtual/main'); 
})(function(mid, cid) {
    System.register(mid, [cid], function (_export, _context) {
    return {
        setters: [function(_m) {
            var _exportObj = {};

            for (var _key in _m) {
              if (_key !== "default" && _key !== "__esModule") _exportObj[_key] = _m[_key];
            }
      
            _export(_exportObj);
        }],
        execute: function () { }
    };
    });
});