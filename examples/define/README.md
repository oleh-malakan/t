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
run hello-arm define, ARM architecture computer
***
    t run define.t -define hello-arm.def
    Hello, ARM!
    arch: ARM
***
run hello-risc-v define, RISC-V architecture computer
***
    t run define.t -define hello-risc-v.def
    Hello, RISC-V!
    arch: RISC-V
***
run hello-x86_64 define, x86_64 architecture computer
***
    t run define.t -define hello-x86_64.def
    Hello, x86_64!
    arch: x86_64
***
