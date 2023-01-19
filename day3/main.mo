import Book "book";
import List "mo:base/List";

actor {
    type Book = Book.Book;
    var list = List.nil<Book>();

    public func add_book(book : Book) : async () {
        list := List.append(list, List.make<Book>(book));
    };

    public query func get_books() : async [Book] {
        return List.toArray(list);
    };
};