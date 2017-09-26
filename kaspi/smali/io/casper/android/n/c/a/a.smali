.class public Lio/casper/android/n/c/a/a;
.super Lio/casper/android/n/c/b;
.source "AddedMeFriendsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/a;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/a;
    .locals 3

    .prologue
    .line 119
    const-class v1, Lio/casper/android/n/c/a/a;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/a;->sInstance:Lio/casper/android/n/c/a/a;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lio/casper/android/n/c/a/a;

    invoke-direct {v0}, Lio/casper/android/n/c/a/a;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/a;->sInstance:Lio/casper/android/n/c/a/a;

    .line 123
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/a;->sInstance:Lio/casper/android/n/c/a/a;

    .line 124
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lio/casper/android/n/a/c/b/a;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/a;->a(Lio/casper/android/n/a/c/b/a;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 77
    sget-object v1, Lio/casper/android/n/c/a/a$a;->USER_ID:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 78
    sget-object v1, Lio/casper/android/n/c/a/a$a;->USERNAME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 79
    sget-object v1, Lio/casper/android/n/c/a/a$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 81
    sget-object v1, Lio/casper/android/n/c/a/a$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/n/c/a/a$a;->DIRECTION:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 84
    sget-object v1, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE_TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 85
    sget-object v1, Lio/casper/android/n/c/a/a$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 86
    sget-object v1, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->k()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 87
    sget-object v1, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/a;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 89
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/a;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/a;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lio/casper/android/n/c/a/a$a;->USERNAME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/n/c/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/a;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/a;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v3, Lio/casper/android/n/a/c/b/a;

    invoke-direct {v3}, Lio/casper/android/n/a/c/b/a;-><init>()V

    .line 98
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/c/b/a;->c(J)V

    .line 99
    sget-object v0, Lio/casper/android/n/c/a/a$a;->USER_ID:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->c(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lio/casper/android/n/c/a/a$a;->USERNAME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->e(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lio/casper/android/n/c/a/a$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->f(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lio/casper/android/n/c/a/a$a;->TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->a(I)V

    .line 103
    sget-object v0, Lio/casper/android/n/c/a/a$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->b(Z)V

    .line 104
    sget-object v0, Lio/casper/android/n/c/a/a$a;->DIRECTION:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->d(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->a(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lio/casper/android/n/c/a/a$a;->ADD_SOURCE_TYPE:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/a;->b(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/casper/android/n/c/a/a$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/c/b/a;->a(Z)V

    .line 108
    sget-object v0, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lio/casper/android/n/a/c/b/a;->a(J)V

    .line 109
    sget-object v0, Lio/casper/android/n/c/a/a$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/a$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lio/casper/android/n/a/c/b/a;->b(J)V

    .line 111
    return-object v3

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "snapchat_friends_added_me"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lio/casper/android/n/c/a/a$a;->values()[Lio/casper/android/n/c/a/a$a;

    move-result-object v0

    return-object v0
.end method
