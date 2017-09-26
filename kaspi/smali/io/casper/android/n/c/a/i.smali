.class public Lio/casper/android/n/c/a/i;
.super Lio/casper/android/n/c/b;
.source "ZeltaTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/c/e/b/b/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZeltaTable"

.field private static sInstance:Lio/casper/android/n/c/a/i;


# instance fields
.field private mJsonSerializer:Lio/casper/android/util/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 64
    new-instance v0, Lio/casper/android/util/e;

    invoke-direct {v0}, Lio/casper/android/util/e;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/c/a/i;->mJsonSerializer:Lio/casper/android/util/e;

    .line 65
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/i;
    .locals 3

    .prologue
    .line 147
    const-class v1, Lio/casper/android/n/c/a/i;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/i;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/i;->sInstance:Lio/casper/android/n/c/a/i;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lio/casper/android/n/c/a/i;

    invoke-direct {v0}, Lio/casper/android/n/c/a/i;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/i;->sInstance:Lio/casper/android/n/c/a/i;

    .line 151
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/i;->sInstance:Lio/casper/android/n/c/a/i;

    .line 152
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit v1

    return-object v0

    .line 152
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

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lio/casper/android/c/e/b/b/a;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 85
    sget-object v1, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 86
    sget-object v1, Lio/casper/android/n/c/a/i$a;->CACHE_MILLIS:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 87
    sget-object v1, Lio/casper/android/n/c/a/i$a;->CACHE_UNTIL_TS:Lio/casper/android/n/c/a/i$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 88
    sget-object v1, Lio/casper/android/n/c/a/i$a;->HEADERS:Lio/casper/android/n/c/a/i$a;

    iget-object v2, p0, Lio/casper/android/n/c/a/i;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 89
    sget-object v1, Lio/casper/android/n/c/a/i$a;->PARAMS:Lio/casper/android/n/c/a/i$a;

    iget-object v2, p0, Lio/casper/android/n/c/a/i;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 90
    sget-object v1, Lio/casper/android/n/c/a/i$a;->USERNAME:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 92
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lio/casper/android/c/e/b/b/a;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/i;->a(Lio/casper/android/c/e/b/b/a;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/c/e/b/b/a;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 127
    monitor-enter p0

    :try_start_0
    const-string v0, "ZeltaTable"

    const-string v1, "Checking Database for ZeltaEndpoint[username=%s, endpoint=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lio/casper/android/e/a/f;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/i$a;->USERNAME:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/c/a/i;->a([Lio/casper/android/e/a/f;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/e/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/i;->b(Landroid/database/Cursor;)Lio/casper/android/c/e/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    const-string v0, "ZeltaTable"

    const-string v1, "Deleting ZeltaEndpoint: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/n/c/a/i;->c(Lio/casper/android/e/a/f;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/c/e/b/b/a;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 99
    new-instance v2, Lio/casper/android/c/e/b/b/a;

    invoke-direct {v2}, Lio/casper/android/c/e/b/b/a;-><init>()V

    .line 101
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/casper/android/c/e/b/b/a;->c(J)V

    .line 102
    sget-object v0, Lio/casper/android/n/c/a/i$a;->ENDPOINT:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/casper/android/c/e/b/b/a;->a(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lio/casper/android/n/c/a/i$a;->CACHE_MILLIS:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/casper/android/c/e/b/b/a;->a(J)V

    .line 104
    sget-object v0, Lio/casper/android/n/c/a/i$a;->CACHE_UNTIL_TS:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/casper/android/c/e/b/b/a;->b(J)V

    .line 105
    sget-object v0, Lio/casper/android/n/c/a/i$a;->USERNAME:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/casper/android/c/e/b/b/a;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lio/casper/android/n/c/a/i;->mJsonSerializer:Lio/casper/android/util/e;

    sget-object v1, Lio/casper/android/n/c/a/i$a;->HEADERS:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/casper/android/n/c/a/i$1;

    invoke-direct {v3, p0}, Lio/casper/android/n/c/a/i$1;-><init>(Lio/casper/android/n/c/a/i;)V

    invoke-virtual {v3}, Lio/casper/android/n/c/a/i$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v5}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 108
    iget-object v1, p0, Lio/casper/android/n/c/a/i;->mJsonSerializer:Lio/casper/android/util/e;

    sget-object v3, Lio/casper/android/n/c/a/i$a;->PARAMS:Lio/casper/android/n/c/a/i$a;

    invoke-virtual {v3}, Lio/casper/android/n/c/a/i$a;->getColumnNumber()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/casper/android/n/c/a/i$2;

    invoke-direct {v4, p0}, Lio/casper/android/n/c/a/i$2;-><init>(Lio/casper/android/n/c/a/i;)V

    invoke-virtual {v4}, Lio/casper/android/n/c/a/i$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v5}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    :cond_0
    if-nez v1, :cond_1

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    :cond_1
    invoke-virtual {v2, v0}, Lio/casper/android/c/e/b/b/a;->a(Ljava/util/Map;)V

    .line 119
    invoke-virtual {v2, v1}, Lio/casper/android/c/e/b/b/a;->b(Ljava/util/Map;)V

    .line 121
    return-object v2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "casper_zelta"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lio/casper/android/n/c/a/i$a;->values()[Lio/casper/android/n/c/a/i$a;

    move-result-object v0

    return-object v0
.end method
