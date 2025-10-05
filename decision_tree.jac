node question {
    has text: str;
    has is_end: bool = false;
}

walker ask_questions {
    has answer: str;

    can start with root;

    on entry {
        std.print("Q: " + here.text);
        if here.is_end {
            std.print("Quiz completed!");
            stop;
        }
    }

    can transition with yes -> yes_node;
    can transition with no -> no_node;
}
