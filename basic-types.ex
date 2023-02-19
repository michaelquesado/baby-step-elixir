## LIST ##
linkedList = [1,2,3,4] # notation O(n)

hd(linkedList) # the header
tl(linkedList) # everything that is not the header

linkedList = [69 | linkedList] # add element on the begining of list (mutation)
List.insert_at(linkedList, 0, 24) # add element on the begining of list

List.first(linkedList) # list element
List.last(linkedList) # last element

[:foo, 1, "bar"] # can mix types inside list

## TUPLAS ## common used for control flow and returned type
myTupla = {1,3,4,5}
elem(myTupla, 0) # returns 1

File.read("file.txt") # {:ok, ""}
File.read("fileNotExist.txt") # {:error, :enoent}
# ~Every function in bang("!") returns a excetion in case of error~

## KeyWord List ## coomon used for define named inputs for functions
[{:foo, "bar"}, {:bar, "foo"}]

## MAPS ##
x = %{foo: "bar", bar: "foo"}
x[:foo]
x.bar

y = %{"foo" => "bar", "bar" => "foo"}
y["foo"]

{x | foo: "foobar"} # update maps key value
