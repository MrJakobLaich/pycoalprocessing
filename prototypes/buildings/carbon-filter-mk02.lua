local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/carbon-filter/top.png",
        priority = "low",
        width = 44,
        height = 25
    }
}

RECIPE {
    type = "recipe",
    name = "carbon-filter-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"carbon-filter", 1},
        {"engine-unit", 2},
        {"plastic-bar", 10},
        {"nexelit-plate", 15},
        {"advanced-circuit", 5},
    },
    results = {
        {"carbon-filter-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "carbon-filter-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/icons/carbon-filter-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk02",
    order = "e",
    place_result = "carbon-filter-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "carbon-filter-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/icons/carbon-filter-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "carbon-filter-mk02"},
    fast_replaceable_group = "carbon-filter",
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"carbonfilter"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "200kW",
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/carbon-filter/carbon-filter-mk02.png",
        priority = "high",
        width = 171,
        height = 167,
        frame_count = 25,
        line_length = 5,
        shift = {0.1, -0.125},
        animation_speed = 1.5
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0, 0.36}, {0, -0.95}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, 0.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0, 0.36}, {0, -0.95}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0, 0.36}, {0, -0.95}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0, 0.36}, {0, -0.95}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -3.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/carbon-filter.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/carbon-filter.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
