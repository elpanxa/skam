.class public Lio/casper/android/n/c/a/c;
.super Lio/casper/android/n/c/b;
.source "FriendStoriesTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/k;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/c;
    .locals 3

    .prologue
    .line 161
    const-class v1, Lio/casper/android/n/c/a/c;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/c;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/c;->sInstance:Lio/casper/android/n/c/a/c;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lio/casper/android/n/c/a/c;

    invoke-direct {v0}, Lio/casper/android/n/c/a/c;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/c;->sInstance:Lio/casper/android/n/c/a/c;

    .line 165
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/c;->sInstance:Lio/casper/android/n/c/a/c;

    .line 166
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit v1

    return-object v0

    .line 166
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

    .line 161
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lio/casper/android/n/a/c/b/k;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/c;->a(Lio/casper/android/n/a/c/b/k;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/k;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/k;->b()Z

    move-result v2

    .line 86
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/k;->c()Ljava/lang/String;

    move-result-object v3

    .line 88
    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 95
    sget-object v4, Lio/casper/android/n/c/a/c$a;->ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 96
    sget-object v4, Lio/casper/android/n/c/a/c$a;->USERNAME:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 97
    sget-object v4, Lio/casper/android/n/c/a/c$a;->CLIENT_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 98
    sget-object v4, Lio/casper/android/n/c/a/c$a;->TIMESTAMP:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->d()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 99
    sget-object v4, Lio/casper/android/n/c/a/c$a;->MEDIA_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 100
    sget-object v4, Lio/casper/android/n/c/a/c$a;->MEDIA_KEY:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 101
    sget-object v4, Lio/casper/android/n/c/a/c$a;->MEDIA_IV:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 102
    sget-object v4, Lio/casper/android/n/c/a/c$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 103
    sget-object v4, Lio/casper/android/n/c/a/c$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->j()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 104
    sget-object v4, Lio/casper/android/n/c/a/c$a;->TIME:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->k()D

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;D)Lio/casper/android/e/a/a;

    .line 105
    sget-object v4, Lio/casper/android/n/c/a/c$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 106
    sget-object v4, Lio/casper/android/n/c/a/c$a;->ZIPPED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->m()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 107
    sget-object v4, Lio/casper/android/n/c/a/c$a;->TIME_LEFT:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->n()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 108
    sget-object v4, Lio/casper/android/n/c/a/c$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->o()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 109
    sget-object v4, Lio/casper/android/n/c/a/c$a;->IS_SHARED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->r()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 110
    sget-object v4, Lio/casper/android/n/c/a/c$a;->IS_VIEWED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0, v4, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 111
    sget-object v2, Lio/casper/android/n/c/a/c$a;->FLUSHABLE_STORY_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 114
    sget-object v2, Lio/casper/android/n/c/a/c$a;->DOWNLOAD_STATE:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 116
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/c;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/k;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v3, Lio/casper/android/n/a/c/b/k;

    invoke-direct {v3}, Lio/casper/android/n/a/c/b/k;-><init>()V

    .line 125
    new-instance v4, Lio/casper/android/n/a/c/b/x;

    invoke-direct {v4}, Lio/casper/android/n/a/c/b/x;-><init>()V

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/casper/android/n/a/c/b/x;->c(J)V

    .line 128
    sget-object v0, Lio/casper/android/n/c/a/c$a;->ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->a(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lio/casper/android/n/c/a/c$a;->USERNAME:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->b(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lio/casper/android/n/c/a/c$a;->CLIENT_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->c(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lio/casper/android/n/c/a/c$a;->TIMESTAMP:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->a(Ljava/lang/Long;)V

    .line 132
    sget-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->d(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_KEY:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->e(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_IV:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->f(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lio/casper/android/n/c/a/c$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->g(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lio/casper/android/n/c/a/c$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->a(I)V

    .line 137
    sget-object v0, Lio/casper/android/n/c/a/c$a;->TIME:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/casper/android/n/a/c/b/x;->a(D)V

    .line 138
    sget-object v0, Lio/casper/android/n/c/a/c$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->h(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lio/casper/android/n/c/a/c$a;->ZIPPED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->a(Z)V

    .line 140
    sget-object v0, Lio/casper/android/n/c/a/c$a;->TIME_LEFT:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->b(Ljava/lang/Long;)V

    .line 141
    sget-object v0, Lio/casper/android/n/c/a/c$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->b(Z)V

    .line 142
    sget-object v0, Lio/casper/android/n/c/a/c$a;->IS_SHARED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->c(Z)V

    .line 143
    sget-object v0, Lio/casper/android/n/c/a/c$a;->IS_SHARED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->c(Z)V

    .line 144
    sget-object v0, Lio/casper/android/n/c/a/c$a;->DOWNLOAD_STATE:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/casper/android/n/a/c/b/x;->i(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lio/casper/android/n/c/a/c$a;->IS_VIEWED:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    :goto_4
    sget-object v0, Lio/casper/android/n/c/a/c$a;->FLUSHABLE_STORY_ID:Lio/casper/android/n/c/a/c$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v4}, Lio/casper/android/n/a/c/b/k;->a(Lio/casper/android/n/a/c/b/x;)V

    .line 150
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/c/b/k;->a(Z)V

    .line 151
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/k;->a(Ljava/lang/String;)V

    .line 153
    return-object v3

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v0, v2

    .line 141
    goto :goto_1

    :cond_2
    move v0, v2

    .line 142
    goto :goto_2

    :cond_3
    move v0, v2

    .line 143
    goto :goto_3

    :cond_4
    move v1, v2

    .line 146
    goto :goto_4
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "snapchat_stories_friends"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lio/casper/android/n/c/a/c$a;->values()[Lio/casper/android/n/c/a/c$a;

    move-result-object v0

    return-object v0
.end method
