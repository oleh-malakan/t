any {}

comparable {
    ==(%v *type) bool
    !=(%v *type) bool
    <(%v *type) bool
    <=(%v *type) bool
    >(%v *type) bool
    >=(%v *type) bool
}

calculable {
    [+](%v *type) type
    [-](%v *type) type
    [*](%v *type) type
    [/](%v *type) type
    [%](%v *type) type
}

iterable {}

bool {}

bool =(@addr) {}

bool =(%v *bool) {}

bool ==(%v *bool) bool {}

bool !=(%v *bool) bool {}

bool <(%v *bool) bool {}

bool <=(%v *bool) bool {}

bool >(%v *bool) bool {}

bool >=(%v *bool) bool {}

byte {}

byte:[=](@addr) {}

byte:[=](v *byte) {}

byte:[==](v *byte) bool {}

byte:[!=](v *byte) bool {}

byte:[<](v *byte) bool {}

byte:[<=](v *byte) bool {}

byte:[>](v *byte) bool {}

byte:[>=](v *byte) bool {}

byte:[+](v *byte) byte {}

byte:[-](v *byte) byte {}

byte:[*](v *byte) byte {}

byte:[/](v *byte) byte {}

byte:[%](v *byte) byte {}

int {}

int:[=](@addr) {}

int:[=](v *int) {}

int:[==](v *int) bool {}

int:[!=](v *int) bool {}

int:[<](v *int) bool {}

int:[<=](v *int) bool {}

int:[>](v *int) bool {}

int:[>=](v *int) bool {}

int:[+](v *int) int {}

int:[-](v *int) int {}

int:[*](v *int) int {}

int:[/](v *int) int {}

int:[%](v *int) int {}

char {}

char:[=](@addr) {}

char:[=](v *char) {}

char:[==](v *char) bool {}

char:[!=](v *char) bool {}

char:[<](v *char) bool {}

char:[<=](v *char) bool {}

char:[>](v *char) bool {}

char:[>=](v *char) bool {}

string {}

string =(@addr) {}

string =(%v *string) {}

string ==(%v *string) bool {}

string !=(%v *string) bool {}

string <(%v *string) bool {}

string <=(%v *string) bool {}

string >(%v *string) bool {}

string >=(%v *string) bool {}

string +(%v *char) string {}

string +(%v *string) string {}

string [%index *int](v char) {}

string [%index *int]() char {}

string [%ofset *int: %len *int]() string {}

string Len() *int% {}