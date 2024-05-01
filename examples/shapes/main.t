Graphics {}

Shape {
    Update(dt int)
    Draw(g &Graphics)
}

Triangle {}

Triangle:Update(dt int) {}

Triangle:Draw(g &Graphics) {}

Scene {
    shapes []&Shape
}

Scene:Add(shape &Shape) {

}

Main() {
    s :<- Scene
    t :<- Triangle

    s.Add(t)    

    ~s
    ~t
}
