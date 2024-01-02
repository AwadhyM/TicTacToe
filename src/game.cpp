#include "game.hpp"

Game::Game() {
    welcome_message();
}

void Game::welcome_message() {
    std::string key;
    std::cout << "Welcome to Tic Tac Toe. Press any key to continue: " << std::endl;
    std::cin >> key;
}
