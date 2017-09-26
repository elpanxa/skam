.class public Lio/casper/android/n/c/a/g;
.super Lio/casper/android/n/c/b;
.source "StoriesTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/x;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/g;
    .locals 3

    .prologue
    .line 128
    const-class v1, Lio/casper/android/n/c/a/g;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/g;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/g;->sInstance:Lio/casper/android/n/c/a/g;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lio/casper/android/n/c/a/g;

    invoke-direct {v0}, Lio/casper/android/n/c/a/g;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/g;->sInstance:Lio/casper/android/n/c/a/g;

    .line 132
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/g;->sInstance:Lio/casper/android/n/c/a/g;

    .line 133
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit v1

    return-object v0

    .line 133
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

    .line 128
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lio/casper/android/n/a/c/b/x;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/g;->a(Lio/casper/android/n/a/c/b/x;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/x;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 79
    sget-object v1, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 81
    sget-object v1, Lio/casper/android/n/c/a/g$a;->CLIENT_ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/n/c/a/g$a;->TIMESTAMP:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/n/c/a/g$a;->MEDIA_ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 84
    sget-object v1, Lio/casper/android/n/c/a/g$a;->MEDIA_KEY:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 85
    sget-object v1, Lio/casper/android/n/c/a/g$a;->MEDIA_IV:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 86
    sget-object v1, Lio/casper/android/n/c/a/g$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 87
    sget-object v1, Lio/casper/android/n/c/a/g$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 88
    sget-object v1, Lio/casper/android/n/c/a/g$a;->TIME:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->k()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;D)Lio/casper/android/e/a/a;

    .line 89
    sget-object v1, Lio/casper/android/n/c/a/g$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 90
    sget-object v1, Lio/casper/android/n/c/a/g$a;->ZIPPED:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 91
    sget-object v1, Lio/casper/android/n/c/a/g$a;->TIME_LEFT:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 92
    sget-object v1, Lio/casper/android/n/c/a/g$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 93
    sget-object v1, Lio/casper/android/n/c/a/g$a;->IS_SHARED:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->r()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 94
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/g;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/x;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v3, Lio/casper/android/n/a/c/b/x;

    invoke-direct {v3}, Lio/casper/android/n/a/c/b/x;-><init>()V

    .line 103
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/c/b/x;->c(J)V

    .line 104
    sget-object v0, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->a(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->b(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lio/casper/android/n/c/a/g$a;->CLIENT_ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->c(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/casper/android/n/c/a/g$a;->TIMESTAMP:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->a(Ljava/lang/Long;)V

    .line 108
    sget-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->d(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_KEY:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->e(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_IV:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->f(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lio/casper/android/n/c/a/g$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->g(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->a(I)V

    .line 113
    sget-object v0, Lio/casper/android/n/c/a/g$a;->TIME:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/c/b/x;->a(D)V

    .line 114
    sget-object v0, Lio/casper/android/n/c/a/g$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->h(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lio/casper/android/n/c/a/g$a;->ZIPPED:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->a(Z)V

    .line 116
    sget-object v0, Lio/casper/android/n/c/a/g$a;->TIME_LEFT:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->b(Ljava/lang/Long;)V

    .line 117
    sget-object v0, Lio/casper/android/n/c/a/g$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/x;->b(Z)V

    .line 118
    sget-object v0, Lio/casper/android/n/c/a/g$a;->IS_SHARED:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/c/b/x;->c(Z)V

    .line 120
    return-object v3

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    :cond_2
    move v1, v2

    .line 118
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "snapchat_stories"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lio/casper/android/n/c/a/g$a;->values()[Lio/casper/android/n/c/a/g$a;

    move-result-object v0

    return-object v0
.end method
