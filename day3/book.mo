module {
    //4
    public type Book = {
        title : Text;
        pages : Nat;
    };
    //5
    public query func create_book(title : Text, pages : Nat) : async Book {
        return {title; pages};
    };
};