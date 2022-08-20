Architecture

    - MVVM
Third-party libraries

    - No third-party libraries used
    
Project structure

    Networking layer 
    
        - used builder pattern
        - Created a middleware class for handle general errors.
	
    Service layer

        - used a protocol oriented approach.
        - Easy to mock.
        - used combine for asynchronously return the response
	
    Use-case layer
	
        - used SwiftUI for creating user interface
        - used mvvm
        - used combine for data binding
	
Unit testing

	Created a protocol called 'Mocakble'  to load mock json file

