- /app  
# This is where all the application's directories will be contained  
    - /data
    # Directory responsible for containing everything related to our data
        - /enums 
        - /services
             # This is where we store our Services
             # Here our repositories are just classes that will mediate the communication between our controller and our data.
             # Our controllers won't need to know where the data comes from, and you can use more than one repository on a controller if you need to.
             # The repositories must be separated by entities, and can almost always be based on their database tables.
             # And inside it will contain all its functions that will request data from a local api or database.
             # That is, if we have a user table that we will persist as, edit, add, update and delete, all these functions are requested 
             # from an api, we will have a repository with this object of the api where we will call all the respective 
             # functions to the user. So the controller does not need to know where it comes from, the repository being a 
             # mandatory attribute for the controllers in this model, you should always initialize the controller with at - /repository
            - /example_service.dart
                - service.dart
                - repository.dart
        - /provider
        # Our data provider, can be an api, local database or firebase for example.
            - api_provider.dart
            - db_provider.dart
            - storage_provider.dart
        # Here, our asynchronous data request, http, local database functions must remain ...
        - /model
        # Our classes, or data models responsible for abstracting our objects.
            - model.dart
    - /modules
    # Each module consists of a page, its respective GetXController and its dependencies or Bindings.
    # We treat each screen as an independent module, as it has its only controller, and can also contain its dependencies.
    # If you use reusable widgets in this, and only in this module, you can choose to add a folder for them.
        - /my_module
            - page.dart
            - controller.dart
            - binding.dart
            - repository.dart
            - /local_widgets
    # The Binding class is a class that decouples dependency injection, while "binding" routes to the state manager and the dependency manager.
    # This lets you know which screen is being displayed when a specific controller is used and knows where and how to dispose of it.
    # In addition, the Binding class allows you to have SmartManager configuration control.
    # You can configure how dependencies are to be organized and remove a route from the stack, or when the widget used for disposition, or none of them.
    #The decision to transfer the repositories "globally" to internal modes within each module is that we can use a function in different modules, but the problem was due to having to import more than one repository in the controller, so we can repeat the same calls functions, internal repositories, thus maintaining faster maintenance, making everything that gives life to the module reachable through the module itself.
    #Repositories then become just a class to point to the controllers of our module, which and which provider we are going to consume, the same goes for services, services that have integration with some provider, must have its own repository

    - /global_widgets 
    # Widgets that can be reused by multiple **modules**.  

    - /routes
    # In this repository we will deposit our routes and pages.  
    # We chose to separate into two files, and two classes, one being routes.dart, containing its constant routes and the other for routing.  
        - routes.dart
        # class Routes {
        # This file will contain your constants ex:  
        # class Routes { const HOME = '/ home'; }  
        - pages.dart
        # This file will contain your array routing ex :  
        # class AppPages { static final pages = [  
        #  GetPage(name: Routes.HOME, page:()=> HomePage()) 
        # ]};  
    - /core
        - /values
            - strings.dart
            - colors.dart
            - /languages
                - /from
                    - pt-br.dart
                    - en-au.dart
        - /theme
        #Here we can create themes for our widgets, texts and colors
            - text_theme.dart  
            # inside ex: final textTitle = TextStyle(fontSize: 30)  
            - color_theme.dart  
            # inside ex: final colorCard = Color(0xffEDEDEE)  
            - app_theme.dart  
            # inside ex: final textTheme = TextTheme(headline1: TextStyle(color: colorCard))  
        - /utils
        #Here you can insert utilities for your application, such as masks, form keys or widgets
            - keys.dart  
            # inside ex: static final GlobalKey formKey = GlobalKey<FormState>();
            - masks.dart  
            # inside ex: static final maskCPF = MaskTextInputFormatter(mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});  
            - helpers.dart  
            - extension_x.dart  
        # Use classes to make your variables easier to use, eg Keys.myKey, Masks.maskCPF

- main.dart  
# main file
# proposed by william Silva and Kau?? Murakami
# We also have a version in packages to vocv?? that is used to the good old MVC
New example implementation: [dev app](https://github.com/kauemurakami/example)
New GetRouterOutlet implementation: [Meditation app](https://github.com/kauemurakami/meditation-app-rewrite-getx)
todo-list with Get Storage with state manager and services: [todo-list](https://github.com/kauemurakami/todo-list-get-storage)
valorant example state manager with state mixin: [examples/valorant-brasil-module-example](https://github.com/kauemurakami/valorant-brasil)
blogging example state manager with state mixin and service: [Blogging](https://github.com/kauemurakami/blogging)  
Another: [byebnk](https://github.com/kauemurakami/teste-bye-b)