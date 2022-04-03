module UsersHelper
    def pro_or_memeber(user)
        user.admin_status ? "PRO" : "MEMEBER"
    end
end
