declare const require: any;

const commonJSModuleMap: Record<string, Function> = {
    '/src/application.79b93.js' () { require('./src/application.79b93.js'); },
    '/src/cocos-js/cc.js' () { require('./src/cocos-js/cc.js'); },
    '/src/chunks/bundle.js' () { require('./src/chunks/bundle.js') },
    'assets/main/index.js' () { require('./assets/main/index.js'); },
    '/src/cocos-js/wait-for-ammo-instantiation.js' () { require('./src/cocos-js/wait-for-ammo-instantiation.js'); },
    '/src/cocos-js/instantiated-687fb370.js' () { require('./src/cocos-js/instantiated-687fb370.js'); }
}
export function loadModule (name: string) {
    const moduleExecutor = commonJSModuleMap[name];
    moduleExecutor?.();
}