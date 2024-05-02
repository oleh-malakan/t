Graphics {}

Shape {
    Update(dt int)
    Draw(g &Graphics)
}

Triangle {
    Size int
}

Triangle:Update(dt int) {}

Triangle:Draw(g &Graphics) {}

Scene {
    g &Graphics
    shapes []&Shape
}

Scene:Add(shape &Shape) {
    .shapes <- append(.shapes, shape)
}

FreeScene(s *Scene) {
    for _, shape := range s.shapes {
        ~shape
    }
    ~s
}

Main() {
    s :<- Scene
    defer FreeScene(s)
    
    s.Add(Triangle{
        Size: 5
    })        
}
