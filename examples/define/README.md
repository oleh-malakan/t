run default define
***
    t run main.t 
    
    arch: <OS ARCH>
***
run hello define
***
    t run main.t -define hello.def
    Hello, world!
    arch: <OS ARCH>
***
run hello-risc-v define, RISC-V architecture computer
***
    t run main.t -define hello-risc-v.def
    Hello, RISC-V!
    arch: RISC-V
***
