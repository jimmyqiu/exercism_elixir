defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(list) do
    Enum.reduce(list, '', fn x,acc ->
      case [x] do
        'G' -> acc ++ 'C'
        'C' -> acc ++ 'G'
        'T' -> acc ++ 'A'
        'A' -> acc ++ 'U'
        _ -> acc
      end
    end)
  end
end
