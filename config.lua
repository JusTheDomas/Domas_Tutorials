Config = {}

Config.UseOx = false -- If false, you'll need to change WaitBeforeNext and you can edit CustomFunction() function, so the text will be displayed
Config.Debug = true -- If you want to use command /DomasCam this must be true

Config.VersionCheck = true

Config.WaitBeforeNext = 3000 -- Time in ms

Config.HeaderTitle = "Domas Scripts" -- Only if UseOx

Config.SpawnVehicleOnCancel = true

Config.Tutorial = {
    [1] = {
        id = 1,
        SpawnLocation = vector3(-257.5195, -981.3597, 31.21997), -- Where will player spawn after tutorial
        SpawnHeading = 250.0,
        Cancelable = true,
        CancelButton = 73,
        TutorialVehicle = {
            enabled = true,
            coords = vector3(-260.2094, -980.369, 31.21959),
            heading = 250.0,
            model = 'bmx'
        },
        Music = {
            enabled = true,
            sound = 'tuto',
            volume = 0.1,
            stopKey = 22,
        },
        Cameras = {
            {
                coords = vector3(591.79345703125, -721.70635986328, 33.402862548828),
                camCoords = vector3(591.79345703125, -721.70635986328, 32.402862548828),
                camRot = vector3(-7.0623364448547, -3.3350531225551e-09, 179.6449432373),
                text = '~y~Welcome to ~q~Domas_Tutorials',
                duration = 5000, -- If using OX set to 0
                waitTime = 5000, -- If using OX set to 1000
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(1013.6859130859, -1401.7003173828, 39.364994049072),
                camCoords = vector3(1013.6859130859, -1401.7003173828, 38.364994049072),
                camRot = vector3(5.6541786193848, -2.1344339984353e-07, 67.873138427734),
                text = '~d~Play/Pause ~o~Music!',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            {
                coords = vector3(613.89678955078, -1735.8123779297, 30.473211288452),
                camCoords = vector3(613.89678955078, -1735.8123779297, 29.473211288452),
                camRot = vector3(-2.1017279624939, -2.6680428533155e-08, -98.032493591309),
                text = '~b~Unlimited tutorial support!',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(-1008.5061645508, -934.11804199219, 8.565824508667),
                camCoords = vector3(-1008.5061645508, -934.11804199219, 7.5658240318298),
                camRot = vector3(-3.9521231651306, -0.0, 117.08526611328),
                text = '~g~Highly Configurable',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            {
                coords = vector3(-855.15283203125, -1265.7840576172, 6.5782537460327),
                camCoords = vector3(-855.15283203125, -1265.7840576172, 5.5782537460327),
                camRot = vector3(-1.0781064033508, -5.3360849960882e-08, -120.00140380859),
                text = '~r~Supports extra long text: ~w~Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(-1670.2706298828, -1016.5991821289, 26.712572097778),
                camCoords = vector3(-1670.2706298828, -1016.5991821289, 25.712572097778),
                camRot = vector3(-18.2041015625, -0.0, 177.24258422852),
                text = '~m~Spawn vehicle when player finished tutorial.',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            {
                coords = vector3(-1823.6458740234, -677.87451171875, 19.720594406128),
                camCoords = vector3(-1823.6458740234, -677.87451171875, 18.720594406128),
                camRot = vector3(-5.0151166915894, 2.1344342826524e-07, 41.179660797119),
                text = '~HUD_COLOUR_MENU_YELLOW_DARK~Smooth moving camera.',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(-2399.5009765625, -255.2498626709, 19.03208732605),
                camCoords = vector3(-2399.5009765625, -255.2498626709, 18.03208732605),
                camRot = vector3(-0.95999830961227, -2.6680428533155e-08, 61.100921630859),
                text = '~HUD_COLOUR_NET_PLAYER3_DARK~Or static camera',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            {
                coords = vector3(-1821.0167236328, -244.03509521484, 58.953289031982),
                camCoords = vector3(-1821.0167236328, -244.03509521484, 57.953289031982),
                camRot = vector3(-9.2670822143555, -0.0, -86.772644042969),
                text = '~HUD_COLOUR_PLATFORM_GREEN~Let players cancel tutorial.',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(-1233.9105224609, -180.00674438477, 44.27091217041),
                camCoords = vector3(-1233.9105224609, -180.00674438477, 43.27091217041),
                camRot = vector3(-2.8891382217407, -0.0, 162.04644775391),
                text = 'Highly Configurable',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            {
                coords = vector3(-380.16806030273, 1201.1162109375, 330.51211547852),
                camCoords = vector3(-380.16806030273, 1201.1162109375, 329.51211547852),
                camRot = vector3(-0.36945679783821, 1.334021249022e-08, 153.07060241699),
                text = '~HUD_COLOUR_CONTROLLER_FRANKLIN~Easy Usage',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },
            {
                coords = vector3(730.89215087891, 131.97264099121, 127.31401062012),
                camCoords = vector3(730.89215087891, 131.97264099121, 126.31401062012),
                camRot = vector3(-6.9567861557007, -0.0, -14.188285827637),
                text = '~HUD_COLOUR_VIDEO_EDITOR_TEXT~Making these tutorials cannot be easier',
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = true
            },
            -- To add more use command /DomasCam, Debug must be enabled
        }
    },
    [2] = {
        id = 2,
        SpawnLocation = vector3(-257.5195, -981.3597, 31.21997), -- Where will player spawn after tutorial
        SpawnHeading = 250.0,
        Cancelable = true,
        CancelButton = 73,
        TutorialVehicle = {
            enabled = true,
            coords = vector3(-260.2094, -980.369, 31.21959),
            heading = 250.0,
            model = 'bmx'
        },
        Music = {
            enabled = true,
            sound = 'tuto',
            volume = 0.1,
            stopKey = 22,
        },
        Cameras = {
            {
                coords = vector3(730.89215087891, 131.97264099121, 127.31401062012),
                camCoords = vector3(730.89215087891, 131.97264099121, 126.31401062012),
                camRot = vector3(-6.9567861557007, -0.0, -14.188285827637),
                text = "Told you it was easy",
                duration = 3000,
                waitTime = 3000,
                amplitude = 0.1,
                frequency = 0.1,
                zoomLevel = 50.0,
                zoomSpeed = 1.0,
                static = false
            },

            -- To add more use command /DomasCam, Debug must be enabled
        }
    }
}



                                                                       
--[[

                 /$$$$$$$$                                             /$$          
                | $$_____/                                            | $$          
                | $$       /$$   /$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$ | $$  /$$$$$$ 
                | $$$$$   |  $$ /$$/ |____  $$| $$_  $$_  $$ /$$__  $$| $$ /$$__  $$
                | $$__/    \  $$$$/   /$$$$$$$| $$ \ $$ \ $$| $$  \ $$| $$| $$$$$$$$
                | $$        >$$  $$  /$$__  $$| $$ | $$ | $$| $$  | $$| $$| $$_____/
                | $$$$$$$$ /$$/\  $$|  $$$$$$$| $$ | $$ | $$| $$$$$$$/| $$|  $$$$$$$
                |________/|__/  \__/ \_______/|__/ |__/ |__/| $$____/ |__/ \_______/
                                                            | $$                    
                                                            | $$                    
                                                            |__/                                   
                            

[3] = {
    id = 3,
    SpawnLocation = vector3(-257.5195, -981.3597, 31.21997), -- Where will player spawn after tutorial
    SpawnHeading = 250.0,
    Cancelable = true,
    CancelButton = 73,
    TutorialVehicle = {
        enabled = true,
        coords = vector3(-260.2094, -980.369, 31.21959),
        heading = 250.0,
        model = 'bmx'
    },
    Music = {
        enabled = true,
        sound = 'tuto',
        volume = 0.1,
        stopKey = 22,
    },
    Cameras = {
        { -- Use command /DomasCam for easest way possible (enable Debug for command to work)
            coords = vector3(730.89215087891, 131.97264099121, 127.31401062012),
            camCoords = vector3(730.89215087891, 131.97264099121, 126.31401062012),
            camRot = vector3(-6.9567861557007, -0.0, -14.188285827637),
            text = "Told you it was easy",
            duration = 3000,
            waitTime = 3000,
            amplitude = 0.1,
            frequency = 0.1,
            zoomLevel = 50.0,
            zoomSpeed = 1.0,
            static = false
        },
    },
}

]]
