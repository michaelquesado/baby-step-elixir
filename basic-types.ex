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

## ENUM ##
Enum.sort([5,4,3,2,1,0])

Enum.map([1,2,3,4,5], fn elem -> elem + 1 end)

Enum.reduce(%{a: 1, b: 2}, %{}, fn {k, v}, acc -> Map.put(acc, k, v + 1) end) # %{a: 2, b: 3}

## Pattern Matching ##
[foo, bar] = ["foo", "bar"] # foo = "foo", bar = "bar"
[head | tail] [1,3,4] # head = 1, tail = [3,4]

%{foo: value} = %{a: 1, some_key: "any", foo: "bar"} # value = "bar" only maps can get a value without declare others values

{:ok, result} = {:ok, "foobar"} # result = "foobar"

readFile = fn
  {:ok, result} -> "the result: #{result}"
  {:error, result} -> "the error: #{result}"
end
#elixir pattern matching by the paramns reciveds
readFile.({:ok, "success is appended"}) # "the result: success is appended"
readFile.({:error, "error is appended"}) # "the error: error is appended"
readFile.(File.read("./file.txt"))

## Pipe Operator ##
x = "  QueSadO  "
x = String.trim(x) |> String.downcase() # the first argument it's always implicit and can not change order always well be the first
x # "quesado"
