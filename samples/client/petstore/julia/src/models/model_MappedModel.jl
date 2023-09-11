# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""another_model
to test mapping features

    MappedModel(;
        mappedProperty=nothing,
        uuid_default_value=nothing,
    )

    - mappedProperty::Int64
    - uuid_default_value::String
"""
Base.@kwdef mutable struct MappedModel <: OpenAPI.APIModel
    mappedProperty::Union{Nothing, Int64} = nothing
    uuid_default_value::Union{Nothing, String} = nothing

    function MappedModel(mappedProperty, uuid_default_value, )
        OpenAPI.validate_property(MappedModel, Symbol("another_property"), mappedProperty)
        OpenAPI.validate_property(MappedModel, Symbol("uuid_default_value"), uuid_default_value)
        return new(mappedProperty, uuid_default_value, )
    end
end # type MappedModel

const _property_types_MappedModel = Dict{Symbol,String}(Symbol("another_property")=>"Int64", Symbol("uuid_default_value")=>"String", )
OpenAPI.property_type(::Type{ MappedModel }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MappedModel[name]))}

function check_required(o::MappedModel)
    true
end

function OpenAPI.validate_property(::Type{ MappedModel }, name::Symbol, val)
    if name === Symbol("another_property")
        OpenAPI.validate_param(name, "MappedModel", :format, val, "int32")
    end
    if name === Symbol("uuid_default_value")
        OpenAPI.validate_param(name, "MappedModel", :format, val, "uuid")
    end
end