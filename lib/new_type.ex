defmodule NewType do
  defmacro deftype(name, type) do
    quote do
      defmodule unquote(name) do
        @opaque t :: {unquote(name), unquote(type)}

        @spec new(value :: unquote(type)) :: t
        def new(value), do: {unquote(name), value}

        @spec extract(new_type :: t) :: unquote(type)
        def extract({unquote(name), value}), do: value
      end
    end
  end

  @spec is_type?(data :: {atom, any}, new_type :: atom) :: boolean
  def is_type?({type, _data}, type), do: true
  def is_type?(_data, _new_type), do: false
end
