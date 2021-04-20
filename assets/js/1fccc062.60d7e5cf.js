(window.webpackJsonp=window.webpackJsonp||[]).push([[8],{78:function(e,t,n){"use strict";n.r(t),n.d(t,"frontMatter",(function(){return a})),n.d(t,"metadata",(function(){return i})),n.d(t,"toc",(function(){return l})),n.d(t,"default",(function(){return u}));var r=n(3),c=n(7),o=(n(0),n(92)),a={id:"doc-get-started",title:"Get Started with Coderrect OpenRace",slug:"/"},i={unversionedId:"doc-get-started",id:"doc-get-started",isDocsHomePage:!1,title:"Get Started with Coderrect OpenRace",description:"Building the Project",source:"@site/docs/doc-get-started.md",sourceDirName:".",slug:"/",permalink:"/OpenRace/",editUrl:"https://github.com/coderrect-inc/OpenRace/tree/develop/website/docs/doc-get-started.md",version:"current",frontMatter:{id:"doc-get-started",title:"Get Started with Coderrect OpenRace",slug:"/"},sidebar:"openraceSidebar",next:{title:"Hello, World!",permalink:"/OpenRace/doc-hello-world"}},l=[{value:"Building the Project",id:"building-the-project",children:[]}],p={toc:l};function u(e){var t=e.components,n=Object(c.a)(e,["components"]);return Object(o.b)("wrapper",Object(r.a)({},p,n,{components:t,mdxType:"MDXLayout"}),Object(o.b)("h2",{id:"building-the-project"},"Building the Project"),Object(o.b)("p",null,"Currently, the only way to get started with Coderrect OpenRace is building the project."),Object(o.b)("p",null,"Coderrect requires ",Object(o.b)("strong",{parentName:"p"},"LLVM 10.0.x")," to build. You can either installed a pre-built LLVM10 or build it on your own."),Object(o.b)("p",null,"First make sure you have ",Object(o.b)("inlineCode",{parentName:"p"},"git"),", ",Object(o.b)("inlineCode",{parentName:"p"},"cmake")," and ",Object(o.b)("inlineCode",{parentName:"p"},"make")," installed on your local environment."),Object(o.b)("p",null,"The script below builds and installs LLVM 10.0.1:"),Object(o.b)("pre",null,Object(o.b)("code",{parentName:"pre",className:"language-bash"},'git clone --depth 1 -b llvmorg-10.0.1 https://github.com/llvm/llvm-project.git\ncd llvm-project && mkdir build && cd build\ncmake \\\n    -DLLVM_TARGETS_TO_BUILD="X86" \\\n    -DCMAKE_CXX_STANDARD="17" \\\n    -DLLVM_INCLUDE_EXAMPLES=OFF \\\n    -DLLVM_INCLUDE_TESTS=OFF \\\n    -DLLVM_INCLUDE_BENCHMARKS=OFF \\\n    -DLLVM_APPEND_VC_REV=OFF \\\n    -DLLVM_OPTIMIZED_TABLEGEN=ON \\\n    -DCMAKE_BUILD_TYPE=Release \\\n    ../llvm\nmake -j\n')),Object(o.b)("p",null,"In order to build Coderrect OpenRace, we need to specify the directory ",Object(o.b)("inlineCode",{parentName:"p"},"LLVM_DIR")," containing ",Object(o.b)("inlineCode",{parentName:"p"},"LLVMConfig.cmake"),", which should be ",Object(o.b)("inlineCode",{parentName:"p"},"/path/to/llvm-project/build/lib/cmake/llvm/"),"."),Object(o.b)("p",null,"Now for building Coderrect OpenRace, you need to first install ",Object(o.b)("inlineCode",{parentName:"p"},"conan")," as package manager."),Object(o.b)("p",null,"Coderrect OpenRace shoule be able to build with any C++ compiler with C++17 support.\nWe recommend using a compiler same or newer than ",Object(o.b)("strong",{parentName:"p"},"gcc9/clang10"),".\nThe script below builds Coderrect OpenRace:"),Object(o.b)("pre",null,Object(o.b)("code",{parentName:"pre",className:"language-bash"},"git clone https://github.com/coderrect-inc/OpenRace.git\nmkdir build && cd build\nconan install ..\ncmake -DLLVM_DIR=/path/to/llvm-project/build/lib/cmake/llvm/ ..\nmake -j\n")),Object(o.b)("p",null,"Now you have successfully built Coderrect OpenRace! Run our tester to check out its current status:"),Object(o.b)("pre",null,Object(o.b)("code",{parentName:"pre"},"./bin/tester\n")))}u.isMDXComponent=!0},92:function(e,t,n){"use strict";n.d(t,"a",(function(){return d})),n.d(t,"b",(function(){return m}));var r=n(0),c=n.n(r);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,c=function(e,t){if(null==e)return{};var n,r,c={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(c[n]=e[n]);return c}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(c[n]=e[n])}return c}var p=c.a.createContext({}),u=function(e){var t=c.a.useContext(p),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},d=function(e){var t=u(e.components);return c.a.createElement(p.Provider,{value:t},e.children)},b={inlineCode:"code",wrapper:function(e){var t=e.children;return c.a.createElement(c.a.Fragment,{},t)}},s=c.a.forwardRef((function(e,t){var n=e.components,r=e.mdxType,o=e.originalType,a=e.parentName,p=l(e,["components","mdxType","originalType","parentName"]),d=u(n),s=r,m=d["".concat(a,".").concat(s)]||d[s]||b[s]||o;return n?c.a.createElement(m,i(i({ref:t},p),{},{components:n})):c.a.createElement(m,i({ref:t},p))}));function m(e,t){var n=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var o=n.length,a=new Array(o);a[0]=s;var i={};for(var l in t)hasOwnProperty.call(t,l)&&(i[l]=t[l]);i.originalType=e,i.mdxType="string"==typeof e?e:r,a[1]=i;for(var p=2;p<o;p++)a[p]=n[p];return c.a.createElement.apply(null,a)}return c.a.createElement.apply(null,n)}s.displayName="MDXCreateElement"}}]);