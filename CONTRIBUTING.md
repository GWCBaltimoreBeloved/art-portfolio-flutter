# Contributing to the Art Portfolio App

1. Open a terminal window and navigate to the `art-portfolio-flutter` project

1. Pull the latest changes
    ```
    git pull
    ```
1. Download dependencies in case someone edited the pubspec.yaml
    ```
    flutter pub get
    ```
1. Create a branch for your changes
    ```
    git checkout -b <your-branch-name>
    ```
1. Do super cool stuff in the project :D
1. Stage your changes
    ```
    git add .
    ```
1. Commit your changes
    ```
    git commit -m "<your message>"
    ```
1. Push your changes to the remote
    ```
    git push
    ```
    Note** You may see the following git message when you try to push:
    ```
    The current branch scheduled-broadcast-available-dialog has no upstream branch.
    To push the current branch and set the remote as upstream, use

    git push --set-upstream origin scheduled-broadcast-available-dialog
    ```
    If you see that message, run the following command to tell git that if the branch you are trying to push to does not exist, you always want to create a new branch with that name.
    ```
    git config --global push.default current
    ```
    Now run `git push` again, and the error should be gone.
1. Navigate to the repository in a web browser and create a pull request
