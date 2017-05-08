defmodule PizzaTest do
  use ExUnit.Case, async: true

  test "pizzas/1" do
    assert is_list(Faker.Pizza.pizzas(2..10))
    assert is_list(Faker.Pizza.pizzas(2))
    assert length(Faker.Pizza.pizzas(2..10)) in 2..10
    assert length(Faker.Pizza.pizzas(2)) == 2
    assert length(Faker.Pizza.pizzas(10)) == 10
  end

   test "toppings/1" do
     assert is_list(Faker.Pizza.toppings(2..10))
     assert is_list(Faker.Pizza.toppings(2))
     assert length(Faker.Pizza.toppings(2..10)) in 2..10
     assert length(Faker.Pizza.toppings(2)) == 2
     assert length(Faker.Pizza.toppings(10)) == 10
   end

   defp toppings_without_and(amount) do
     amount
     |> Faker.Pizza.toppings_and
     |> String.split([", ", "and "], trim: true)
   end

   test "toppings_and/1" do
     assert String.contains?(Faker.Pizza.toppings_and(2), " and ")
     assert String.contains?(Faker.Pizza.toppings_and(3), ", and ")
     assert length(toppings_without_and(2..10)) in 2..10
     assert length(toppings_without_and(2)) == 2
     assert length(toppings_without_and(10)) == 10
   end

   test "pizza/0" do
   	assert is_binary(Faker.Pizza.pizza)
   end

   test "topping/0" do
   	assert is_binary(Faker.Pizza.topping)
   end

   test "company/0" do
   	assert is_binary(Faker.Pizza.company)
   end

   test "style/0" do
   	assert is_binary(Faker.Pizza.style)
   end

   test "sauce/0" do
   	assert is_binary(Faker.Pizza.sauce)
   end

   test "cheese/0" do
   	assert is_binary(Faker.Pizza.cheese)
   end

   test "meat/0" do
   	assert is_binary(Faker.Pizza.meat)
   end

   test "vegetable/0" do
   	assert is_binary(Faker.Pizza.vegetable)
   end

   test "combo/0" do
   	assert is_binary(Faker.Pizza.combo)
   end

   test "size_or_inches/0" do
   	assert is_binary(Faker.Pizza.size_or_inches)
   end

   test "size/0" do
   	assert is_binary(Faker.Pizza.size)
   end

   test "inches/0" do
   	assert is_binary(Faker.Pizza.inches)
   end

end
