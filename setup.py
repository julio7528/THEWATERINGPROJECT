import os

class DirectoryCreator:
    def __init__(self, folders):
        self.folders = folders

    def create_directories(self):
        for folder in self.folders:
            if not os.path.exists(folder):
                os.makedirs(folder)
                print(f"Folder {folder} created")
            else:
                print(f"Folder {folder} already exists")

if __name__ == "__main__":
    folders = {
        "src",
        "src/config",
        "src/tasks",
        "src/commons",
        "src/database",
        "src/models",
        "src/tests",
        "src/logs",
        "docs"
    }

    directory_creator = DirectoryCreator(folders)
    directory_creator.create_directories()