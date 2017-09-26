.class public Lio/casper/android/n/c/a/f;
.super Lio/casper/android/n/c/b;
.source "SnapsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/w;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/f;
    .locals 3

    .prologue
    .line 126
    const-class v1, Lio/casper/android/n/c/a/f;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/f;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/f;->sInstance:Lio/casper/android/n/c/a/f;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lio/casper/android/n/c/a/f;

    invoke-direct {v0}, Lio/casper/android/n/c/a/f;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/f;->sInstance:Lio/casper/android/n/c/a/f;

    .line 130
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/f;->sInstance:Lio/casper/android/n/c/a/f;

    .line 131
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit v1

    return-object v0

    .line 131
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

    .line 126
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
    check-cast p1, Lio/casper/android/n/a/c/b/w;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/f;->a(Lio/casper/android/n/a/c/b/w;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/w;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/f$a;->ID:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 81
    sget-object v1, Lio/casper/android/n/c/a/f$a;->SENDER:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/n/c/a/f$a;->RECIPIENT:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/n/c/a/f$a;->TYPE:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 84
    sget-object v1, Lio/casper/android/n/c/a/f$a;->STATE:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 85
    sget-object v1, Lio/casper/android/n/c/a/f$a;->ZIPPED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->r()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 86
    sget-object v1, Lio/casper/android/n/c/a/f$a;->SENT_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->k()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 87
    sget-object v1, Lio/casper/android/n/c/a/f$a;->VIEW_TIME:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 88
    sget-object v1, Lio/casper/android/n/c/a/f$a;->LAST_INTERACTION_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 89
    sget-object v1, Lio/casper/android/n/c/a/f$a;->CLIENT_ID:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 90
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_SENT:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 91
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_RECEIVED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 92
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_VIEWED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 93
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 94
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_REPLAYED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 95
    sget-object v1, Lio/casper/android/n/c/a/f$a;->IS_BROADCAST:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->t()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 96
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/f;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/w;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/w;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v3, Lio/casper/android/n/a/c/b/w;

    invoke-direct {v3}, Lio/casper/android/n/a/c/b/w;-><init>()V

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/c/b/w;->c(J)V

    .line 106
    sget-object v0, Lio/casper/android/n/c/a/f$a;->ID:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->c(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/casper/android/n/c/a/f$a;->SENDER:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->a(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lio/casper/android/n/c/a/f$a;->TYPE:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->b(I)V

    .line 109
    sget-object v0, Lio/casper/android/n/c/a/f$a;->STATE:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->a(I)V

    .line 110
    sget-object v0, Lio/casper/android/n/c/a/f$a;->ZIPPED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->c(Z)V

    .line 111
    sget-object v0, Lio/casper/android/n/c/a/f$a;->SENT_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->b(Ljava/lang/Long;)V

    .line 112
    sget-object v0, Lio/casper/android/n/c/a/f$a;->VIEW_TIME:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->c(I)V

    .line 113
    sget-object v0, Lio/casper/android/n/c/a/f$a;->LAST_INTERACTION_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->a(Ljava/lang/Long;)V

    .line 114
    sget-object v0, Lio/casper/android/n/c/a/f$a;->CLIENT_ID:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->b(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lio/casper/android/n/c/a/f$a;->IS_REPLAYED:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/c/b/w;->a(Z)V

    .line 116
    sget-object v0, Lio/casper/android/n/c/a/f$a;->IS_BROADCAST:Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/f$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/c/b/w;->b(Z)V

    .line 118
    return-object v3

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto :goto_1

    :cond_2
    move v1, v2

    .line 116
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "snapchat_snaps"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lio/casper/android/n/c/a/f$a;->values()[Lio/casper/android/n/c/a/f$a;

    move-result-object v0

    return-object v0
.end method
