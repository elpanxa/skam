.class public Lio/casper/android/n/a/b/i;
.super Lio/casper/android/n/a/b/a/a;
.source "FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ADDED_BY:Ljava/lang/String; = "added_by"

.field private static final KEY_FRIEND_ID:Ljava/lang/String; = "friend_id"

.field private static final KEY_IDENTITY_CELL_INDEX:Ljava/lang/String; = "identity_cell_index"

.field private static final KEY_IDENTITY_PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Ljava/lang/String; = "PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE"

.field private static final KEY_IDENTITY_PROFILE_MY_FRIENDS_PAGE:Ljava/lang/String; = "PROFILE_MY_FRIENDS_PAGE"

.field private static final KEY_IDENTITY_PROFILE_PAGE:Ljava/lang/String; = "identity_profile_page"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/i;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/casper/android/n/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string v1, "friend_id"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "identity_cell_index"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "identity_profile_page"

    const-string v1, "PROFILE_MY_FRIENDS_PAGE"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "friend"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "identity_cell_index"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "identity_profile_page"

    const-string v1, "PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/n/a/b/i;
    .locals 2

    .prologue
    .line 47
    const-string v0, "action"

    const-string v1, "display"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "display"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "/bq/friend"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Lio/casper/android/n/a/c/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/i;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/n/a/c/f;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public g()Lio/casper/android/n/a/b/i;
    .locals 2

    .prologue
    .line 53
    const-string v0, "action"

    const-string v1, "block"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object p0
.end method

.method public h()Lio/casper/android/n/a/b/i;
    .locals 2

    .prologue
    .line 58
    const-string v0, "action"

    const-string v1, "unblock"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object p0
.end method

.method public i()Lio/casper/android/n/a/b/i;
    .locals 2

    .prologue
    .line 63
    const-string v0, "action"

    const-string v1, "add"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "added_by"

    const-string v1, "ADDED_BY_USERNAME"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object p0
.end method

.method public j()Lio/casper/android/n/a/b/i;
    .locals 2

    .prologue
    .line 69
    const-string v0, "action"

    const-string v1, "delete"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "added_by"

    const-string v1, "ADDED_BY_USERNAME"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object p0
.end method
