import nativerender from "libcocos2d.so";

import { WorkerManager } from '../cocos/WorkerManager'
import { ContextType } from "../common/Constants"
import {log} from '../cocos/log_utils'

const nativePageLifecycle = nativerender.getContext(ContextType.JSPAGE_LIFECYCLE);

@Entry
@Component
struct Index {
  private context = null;

  private cocosWorker = WorkerManager.getInstance().getWorker();
  aboutToAppear(): void  {
    console.log('[LIFECYCLE-Index] kee cocos aboutToAppear');
//    this.cocosWorker.postMessage({type: "JSPageLifecycle", data: "aboutToAppear"});
//    nativePageLifecycle.aboutToAppear();
  }

  aboutToDisappear(): void {
    console.log('[LIFECYCLE-Index] kee cocos aboutToDisappear');
//    this.cocosWorker.postMessage({type: "JSPageLifecycle", data: "aboutToAppear"});
//    nativePageLifecycle.aboutToDisappear();
  }

  onPageShow(): void  {
    console.log('[LIFECYCLE-Page] kee cocos onPageShow');
//    this.cocosWorker.postMessage({type: "JSPageLifecycle", data: "onPageShow"});
    nativePageLifecycle.onPageShow();
  }

  onPageHide(): void  {
    console.log('[LIFECYCLE-Page] kee cocos onPageHide');
//    this.cocosWorker.postMessage({type: "JSPageLifecycle", data: "onPageHide"});
    nativePageLifecycle.onPageHide();
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      XComponent({ id: 'xcomponentId', type: 'surface', libraryname: 'cocos2d'})
        .onLoad((context) => {
          // HACK: delay to post massage to wait for worker launching.
          setTimeout(() => {
            log('post msg when XCLoad');
            console.log('kee cocos xcomponent onLoad');
            this.context = context;
            this.cocosWorker.postMessage({type: "onXCLoad", data: "XComponent"});
          }, 500)

        })
        .onDestroy(() => {
          console.log('kee cocos onDestroy')
        })
   }
    .width('100%')
    .height('100%')
  }
}
