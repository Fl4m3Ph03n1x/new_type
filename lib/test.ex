defmodule Test do
  alias Type.Name

  @spec print(Name.t()) :: binary
  def print(name), do: Name.extract(name)

  def run_1 do
    # dialyzer complains !
    Name.new(1)
  end

  def run_2 do
    # dialyzer complains !
    print("john")
  end

  @spec run_3 :: binary
  def run_3 do
    print(Name.new("dow"))
  end
end
