/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */
#import "ObjCModule.h"
#import <objc/runtime.h>
#import <string.h>

// Calls to these functions are generated by the compiler, so we need to use these names

void __objc_exec_class(OBJCModule *module) {
    OBJCQueueModule(module);
}

id objc_get_class(const char *name) {
   return (id)objc_lookUpClass(name);
}

id objc_get_meta_class(const char *name) {
   return object_getClass(objc_lookUpClass(name));
}

// __objc_execClass is called for each module loaded; this is where we tie into the runtime.
void __objc_execClass(OBJCModule *module) {
    OBJCQueueModule(module);
}
