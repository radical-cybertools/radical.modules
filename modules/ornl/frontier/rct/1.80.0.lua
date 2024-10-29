--[[

    file rct module

    Copyright 2024 RADICAL-Cybertools Project

]]--


-- local vars --


-- template variables ----------------------------------------------------------
local SITE                = "ornl"
local RESOURCE            = "frontier"

local ROOT                = "/lustre/orion/world-shared/chm155/radical/"
local REPO                = "/radical.modules/"

local INSTALL_ROOT        = ROOT .. REPO .. "modules/" .. SITE .. "/" .. RESOURCE
local INSTALL_PYTHON      = ROOT .. REPO .. "install/"
local INSTALL_BIN         = INSTALL_PYTHON .. "bin/"
--------------------------------------------------------------------------------

-- standered Lmod functions --


help([[

This modulefile defines the paths and environment
variables needed to use the RCT Python modules.

]])


whatis("This modulefile defines the system paths and environment " ..
       "variables needed to the RCT python modules.")


-- environment modifications --

depends_on("cray-python")

prepend_path("PATH",       INSTALL_BIN   )
prepend_path("PYTHONPATH", INSTALL_PYTHON)

setenv("RADICAL_REPORT",                  "TRUE")
setenv("RADICAL_PROFILE",                 "TRUE")
setenv("RADICAL_LOG_LEVEL",               "INFO")
setenv("RADICAL_UTILS_ZMQ_LOG_LVL",       "INFO")
setenv("RADICAL_UTILS_HEARTBEAT_LOG_LVL", "INFO")

