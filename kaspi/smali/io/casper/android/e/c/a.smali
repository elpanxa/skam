.class public Lio/casper/android/e/c/a;
.super Lio/casper/android/e/b;
.source "SnapchatAccountsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/e/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/e/b",
        "<",
        "Lio/casper/android/e/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/e/c/a;


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lio/casper/android/e/b;-><init>()V

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/e/c/a;->mGson:Lcom/google/gson/Gson;

    .line 61
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/e/c/a;
    .locals 3

    .prologue
    .line 115
    const-class v1, Lio/casper/android/e/c/a;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/e/c/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    sget-object v0, Lio/casper/android/e/c/a;->sInstance:Lio/casper/android/e/c/a;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lio/casper/android/e/c/a;

    invoke-direct {v0}, Lio/casper/android/e/c/a;-><init>()V

    sput-object v0, Lio/casper/android/e/c/a;->sInstance:Lio/casper/android/e/c/a;

    .line 119
    :cond_0
    sget-object v0, Lio/casper/android/e/c/a;->sInstance:Lio/casper/android/e/c/a;

    .line 120
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit v1

    return-object v0

    .line 120
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

    .line 115
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lio/casper/android/e/b/b;

    invoke-virtual {p0, p1}, Lio/casper/android/e/c/a;->a(Lio/casper/android/e/b/b;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/e/b/b;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 81
    sget-object v1, Lio/casper/android/e/c/a$a;->USERNAME:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/e/c/a$a;->EMAIL:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/e/c/a$a;->PASSWORD:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 84
    sget-object v1, Lio/casper/android/e/c/a$a;->AUTH_TOKEN:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 85
    sget-object v1, Lio/casper/android/e/c/a$a;->ADDED_FRIENDS_TIMESTAMP:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 86
    sget-object v1, Lio/casper/android/e/c/a$a;->QR_PATH:Lio/casper/android/e/c/a$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 87
    sget-object v1, Lio/casper/android/e/c/a$a;->SEC_INFO:Lio/casper/android/e/c/a$a;

    iget-object v2, p0, Lio/casper/android/e/c/a;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->h()Lio/casper/android/n/a/c/b/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 89
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lio/casper/android/e/c/a;->b(Landroid/database/Cursor;)Lio/casper/android/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lio/casper/android/e/b/b;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lio/casper/android/e/c/a$a;->USERNAME:Lio/casper/android/e/c/a$a;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/e/c/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/b;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/e/b/b;
    .locals 4

    .prologue
    .line 96
    new-instance v1, Lio/casper/android/e/b/b;

    invoke-direct {v1}, Lio/casper/android/e/b/b;-><init>()V

    .line 98
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/e/b/b;->c(J)V

    .line 99
    sget-object v0, Lio/casper/android/e/c/a$a;->USERNAME:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->a(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lio/casper/android/e/c/a$a;->EMAIL:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->b(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lio/casper/android/e/c/a$a;->PASSWORD:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->c(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lio/casper/android/e/c/a$a;->AUTH_TOKEN:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->d(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lio/casper/android/e/c/a$a;->ADDED_FRIENDS_TIMESTAMP:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/e/b/b;->a(J)V

    .line 104
    sget-object v0, Lio/casper/android/e/c/a$a;->QR_PATH:Lio/casper/android/e/c/a$a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->e(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lio/casper/android/e/c/a;->mGson:Lcom/google/gson/Gson;

    sget-object v2, Lio/casper/android/e/c/a$a;->SEC_INFO:Lio/casper/android/e/c/a$a;

    invoke-virtual {v2}, Lio/casper/android/e/c/a$a;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/casper/android/n/a/c/b/u;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/u;

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->a(Lio/casper/android/n/a/c/b/u;)V

    .line 107
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "casper_snapchat_accounts"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lio/casper/android/e/c/a$a;->values()[Lio/casper/android/e/c/a$a;

    move-result-object v0

    return-object v0
.end method
