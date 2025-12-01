interface Instance {
    GetFullName(): string;
    FindFirstChild(name: string): Instance | null;
    FindFirstChildOfClass(className: string): Instance | null;
    GetChildren(): Instance[];
    IsA(className: string): boolean;
    Clone(): Instance;
    Destroy(): void;
    Parent: InstanceProperty["Value"] | null;
    Name: InstanceProperty["Name"];
    ClassName: InstanceProperty["Name"];

    // Add other necessary properties and methods as needed
}
interface InstanceProperty {
    Name: string;
    Value: any;
}
interface Service {
    GetService(serviceName: string): Instance;
}
var game: Service | Instance;
declare function wait(seconds?: number): number;
declare function print(...args: any[]): void;
declare function warn(...args: any[]): void;
declare function error(...args: any[]): void;
declare function tick(): number;
declare function delay(time: number, callback: () => void): void;
declare function spawn(callback: () => void): void;
declare function setmetatable(table: any, metatable: any): any;
declare function getmetatable(table: any): any;
declare function typeOf(value: any): string;
declare function pairs(table: any): [any, any][];
declare function ipairs(table: any[]): [number, any][];
declare function tableInsert(table: any[], value: any, position?: number): void;
declare function tableRemove(table: any[], position?: number): any;
declare function tableFind(table: any[], value: any): number | null;
declare function tableClone(table: any[]): any[];
declare function tostring(value: any): string;
declare function tonumber(value: any): number | null;
declare function require(module: Instance): any;
declare function loadstring(code: string): () => any;
declare function coroutineCreate(func: () => void): any;
declare function coroutineResume(co: any, ...args: any[]): [boolean, any];
declare function coroutineYield(...args: any[]): any;
declare function mathRandom(min?: number, max?: number): number;
declare function mathRandomSeed(seed: number): void;
declare function osTime(): number;
declare function osDate(format?: string, time?: number): string;
declare function HttpGet(url: string): string;
declare function HttpPost(url: string, data: any): string;
declare function InstanceNew(className: string): Instance;
declare function tick(): number;
declare function setclipboard(text: string): void;
declare function getclipboard(): string;
declare function syn_request(request: { Url: string; Method?: string; Headers?: { [key: string]: string }; Body?: any }): { StatusCode: number; Body: string; Headers: { [key: string]: string } };
declare var syn: {
    request: (request: { Url: string; Method?: string; Headers?: { [key: string]: string }; Body?: any }) => { StatusCode: number; Body: string; Headers: { [key: string]: string } };
};
declare var shared: { [key: string]: any };
declare function hookfunction(target: Function, hook: Function): Function;
declare function getupvalue(func: Function, index: number): any;
declare function setupvalue(func: Function, index: number, value: any): void;
declare function newproxy(allowMetatable?: boolean): any;
declare function isfile(filePath: string): boolean;
declare function readfile(filePath: string): string;
declare function writefile(filePath: string, content: string): void;
declare function appendfile(filePath: string, content: string): void;
declare function delfile(filePath: string): void;
declare function listfiles(folderPath: string): string[];
declare function makefolder(folderPath: string): void;
declare function rconsoleprint(message: string): void;
declare function rconsoleclear(): void;
declare function rconsolename(name: string): void;
declare function rconsoleinput(): string;
declare function getconnections(signal: any): any[];
declare function setthreadidentity(identity: number): void;
declare function getthreadidentity(): number;
declare function checkcaller(): boolean;
declare function protectinstance(instance: Instance, protect: boolean): void;
declare function isprotected(instance: Instance): boolean;
declare function getinstances(): Instance[];
declare function getgc(includeCFunctions?: boolean): any[];
declare function getloadedmodules(): Instance[];
declare function getmodules(): Instance[];
declare function getscriptclosure(script: Instance): any;
declare function fireclickdetector(clickDetector: Instance): void;
declare function fireproximityprompt(prompt: Instance, holdDuration?: number, distanceFromCenter?: number): void;
declare function syn_wait(seconds: number): void;
declare var UserSettings: {
    GetService(): {
        GameSettings: {
            MasterVolume: number;
            MusicVolume: number;
            SFXVolume: number;
            VoiceChatVolume: number;
            AmbientVolume: number;
        };
    };
};
declare function setfpscap(fps: number): void;
declare function getfpscap(): number;
declare function getfflag(flagName: string): boolean;
declare function setfflag(flagName: string, value: boolean): void;
declare function gethiddenproperty(instance: Instance, property: string): any;
declare function sethiddenproperty(instance: Instance, property: string, value: any): void;
declare function iswindowfocused(): boolean;
declare function queue_on_teleport(callback: string): void;
declare function getremotefunction(instance: Instance): Function | null;

export {
    Instance,
    InstanceProperty,
    Service,
    game,
    wait,
    print,
    warn,
    error,
    tick,
    delay,
    spawn,
    setmetatable,
    getmetatable,
    typeOf,
    pairs,
    ipairs,
    tableInsert,
    tableRemove,
    tableFind,
    tableClone,
    tostring,
    tonumber,
    require,

    loadstring,
    coroutineCreate,
    coroutineResume,
    coroutineYield,
    mathRandom,
    mathRandomSeed,
    osTime,
    osDate,
    HttpGet,
    HttpPost,
    InstanceNew,
    setclipboard,
    getclipboard,
    syn,
    shared,
    hookfunction,
    getupvalue,
    setupvalue,
    newproxy,
    isfile,
    readfile,
    writefile,
    appendfile,
    delfile,
    listfiles,
    makefolder,
    rconsoleprint,
    rconsoleclear,
    rconsolename,
    rconsoleinput,
    getconnections,
    setthreadidentity,
    getthreadidentity,
    checkcaller,
    protectinstance,

    isprotected,
    getinstances,
    getgc,
    getloadedmodules,
    getmodules,
    getscriptclosure,
    fireclickdetector,
    fireproximityprompt,
    syn_wait,
    UserSettings,
    setfpscap,
    getfpscap,
    getfflag,
    setfflag,
    gethiddenproperty,
    sethiddenproperty,
    iswindowfocused,
    queue_on_teleport,
    getremotefunction
};
