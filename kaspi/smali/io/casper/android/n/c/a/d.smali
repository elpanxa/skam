.class public Lio/casper/android/n/c/a/d;
.super Lio/casper/android/n/c/b;
.source "FriendsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/i;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/d;
    .locals 3

    .prologue
    .line 120
    const-class v1, Lio/casper/android/n/c/a/d;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/d;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/d;->sInstance:Lio/casper/android/n/c/a/d;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lio/casper/android/n/c/a/d;

    invoke-direct {v0}, Lio/casper/android/n/c/a/d;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/d;->sInstance:Lio/casper/android/n/c/a/d;

    .line 124
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/d;->sInstance:Lio/casper/android/n/c/a/d;

    .line 125
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit v1

    return-object v0

    .line 125
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

    .line 120
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
    check-cast p1, Lio/casper/android/n/a/c/b/i;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/d;->a(Lio/casper/android/n/a/c/b/i;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/i;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 76
    sget-object v1, Lio/casper/android/n/c/a/d$a;->USER_ID:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 77
    sget-object v1, Lio/casper/android/n/c/a/d$a;->USERNAME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 78
    sget-object v1, Lio/casper/android/n/c/a/d$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 79
    sget-object v1, Lio/casper/android/n/c/a/d$a;->TYPE:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/d$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 81
    sget-object v1, Lio/casper/android/n/c/a/d$a;->DIRECTION:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/n/c/a/d$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/n/c/a/d$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->k()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 84
    sget-object v1, Lio/casper/android/n/c/a/d$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 85
    sget-object v1, Lio/casper/android/n/c/a/d$a;->FRIENDMOJI_STRING:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 87
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/d;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lio/casper/android/n/c/a/d$a;->USERNAME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/n/c/a/d;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/i;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v3, Lio/casper/android/n/a/c/b/i;

    invoke-direct {v3}, Lio/casper/android/n/a/c/b/i;-><init>()V

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/c/b/i;->c(J)V

    .line 101
    sget-object v0, Lio/casper/android/n/c/a/d$a;->USER_ID:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->c(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lio/casper/android/n/c/a/d$a;->USERNAME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->e(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lio/casper/android/n/c/a/d$a;->DISPLAY_NAME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->f(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lio/casper/android/n/c/a/d$a;->TYPE:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->a(I)V

    .line 105
    sget-object v0, Lio/casper/android/n/c/a/d$a;->IS_SHARED_STORY:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->b(Z)V

    .line 106
    sget-object v0, Lio/casper/android/n/c/a/d$a;->DIRECTION:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->d(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/casper/android/n/c/a/d$a;->CAN_SEE_CUSTOM_STORIES:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/c/b/i;->a(Z)V

    .line 108
    sget-object v0, Lio/casper/android/n/c/a/d$a;->TIMESTAMP_ADDED_ME:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lio/casper/android/n/a/c/b/i;->a(J)V

    .line 109
    sget-object v0, Lio/casper/android/n/c/a/d$a;->TIMESTAMP_ADDED_THEM:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lio/casper/android/n/a/c/b/i;->b(J)V

    .line 110
    sget-object v0, Lio/casper/android/n/c/a/d$a;->FRIENDMOJI_STRING:Lio/casper/android/n/c/a/d$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/i;->g(Ljava/lang/String;)V

    move-object v0, v3

    .line 112
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 105
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "snapchat_friends"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lio/casper/android/n/c/a/d$a;->values()[Lio/casper/android/n/c/a/d$a;

    move-result-object v0

    return-object v0
.end method
