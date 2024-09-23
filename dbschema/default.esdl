module default {
    scalar type permissionLevel extending enum<Member, Officer>;
    type User {
        username: str {
            constraint exclusive;
        }
        displayName: str;
        member_role: str;
        email: str;
        required memberType: permissionLevel {
            default := permissionLevel.Member;
        }
        posts := .<author[is Post]
    }

    type Post {
        title: str;
        author: User;
        cover_image_url: str;
        content: str;
        creation: datetime {
            rewrite insert using (datetime_of_statement());
        }
    }
}
