// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import FavouritesController from "./favourites_controller.js"
application.register("favourites", FavouritesController)

import FilterController from "./filter_controller.js"
application.register("filter", FilterController)

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import MapController from "./map_controller.js"
application.register("map", MapController)

import MeetingMovementController from "./meeting_movement_controller.js"
application.register("meeting-movement", MeetingMovementController)

import MeetingsController from "./meetings_controller.js"
application.register("meetings", MeetingsController)

import SignUpFormController from "./sign_up_form_controller.js"
application.register("sign-up-form", SignUpFormController)
