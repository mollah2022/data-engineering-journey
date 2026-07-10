class LoginManager:

    def login(self):
        print("User Logged In")


class PermissionManager:

    def manage_permission(self):
        print("Permission Granted")


class Admin(LoginManager, PermissionManager):

    pass


admin = Admin()

admin.login()
admin.manage_permission()