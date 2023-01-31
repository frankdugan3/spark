defmodule Spark.Test.ContactPatcher do
  @moduledoc false
  @special_preset %Spark.Dsl.Entity{
    name: :special_preset,
    args: [:name],
    target: Spark.Test.Contact.Dsl.Preset,
    schema: [
      name: [
        type: :atom
      ]
    ],
    auto_set_fields: [
      special?: true
    ]
  }

  @section_patch %Spark.Dsl.Patch.AddEntity{
    section_path: [:presets],
    entity: @special_preset
  }

  use Spark.Dsl.Extension, dsl_patches: [@section_patch]
end
