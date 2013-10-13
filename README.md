Basic command line based character creation program.

You can run the program from the directory you have it in with either of the following commands:

        ruby start_up.rb
        ./start_up.rb

At the moment still very basic and only creates a character with the parameters of sex, name and age - plans for next few commits are as follows:

        Add character class methods (i.e. mage, warrior, thief, standard RPG stuff)
        Add character race methods (i.e. human, elf, orc, dwarf, more standard RPG fare)
        Add dice rolling mechanic to randomly generate character stats within given parameters based on the class and race chosen

Currently consists of the following files:

        *README.md
        *start_up.rb  - Prints some introductory text and sets the process going.
        *name_age_sex.rb  - A module of methods that guide the user through the selection of sex, name and age for their character.
        *character.rb  - Currently just requires mage.rb - plan to use this as a referance point for all the character classes rather than having to require loads of files in the name_age_sex.rb module.
        *mage.rb  - Currently contains a parent character class and a mage child class - still very early days.
        *input_tools.rb  - A small module that includes a simple prompt method and a user input method - included into start_up.rb and name_age_sex.rb to prevent unnecessary duplication of simple tasks.
