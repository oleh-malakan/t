run default define
***
    t run define.t 
    
    arch: <OS ARCH>
***
run hello define
***
    t run define.t -define hello.def
    Hello, world!
    arch: <OS ARCH>
***
run hello-ARMv8 define, ARMv8/Aarch64 architecture computer
***
    t run define.t -define hello-ARMv8.def
    Hello, ARMv8/Aarch64!
    arch: ARMv8/Aarch64
***
run hello-x86_64 define, x86_64 architecture computer
***
    t run define.t -define hello-x86_64.def
    Hello, x86_64!
    arch: x86_64
***
