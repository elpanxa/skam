.class public Lio/casper/android/l/h;
.super Lio/casper/android/l/a/a;
.source "FriendManager.java"


# static fields
.field private static MANAGER_FRIENDS_BESTS:Ljava/lang/String; = null

.field private static MANAGER_FRIENDS_RECENTS:Ljava/lang/String; = null

.field private static MANAGER_FRIENDS_REPLY_USERNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FriendManager"


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "manager_friends_bests"

    sput-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_BESTS:Ljava/lang/String;

    .line 24
    const-string v0, "manager_friends_recents"

    sput-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_RECENTS:Ljava/lang/String;

    .line 25
    const-string v0, "manager_friends_reply_username"

    sput-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_REPLY_USERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/l/h;->mGson:Lcom/google/gson/Gson;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 96
    :cond_0
    :goto_0
    return-object p0

    .line 86
    :cond_1
    invoke-static {}, Lio/casper/android/n/c/a/a;->i()Lio/casper/android/n/c/a/a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lio/casper/android/n/c/a/a;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/a;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_BESTS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lio/casper/android/l/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :try_start_0
    iget-object v2, p0, Lio/casper/android/l/h;->mGson:Lcom/google/gson/Gson;

    const-class v3, [Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 48
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v2, "FriendManager"

    const-string v3, "De-Serializing Bests failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_BESTS:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/l/h;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_RECENTS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lio/casper/android/l/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :try_start_0
    iget-object v2, p0, Lio/casper/android/l/h;->mGson:Lcom/google/gson/Gson;

    const-class v3, [Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v2, "FriendManager"

    const-string v3, "De-Serializing Recents failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_REPLY_USERNAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_RECENTS:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/l/h;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lio/casper/android/l/h;->MANAGER_FRIENDS_REPLY_USERNAME:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
