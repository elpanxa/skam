.class public abstract Lio/casper/android/e/a/e;
.super Ljava/lang/Object;
.source "DatabaseTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/e/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/casper/android/e/a/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRIMARY_KEY:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "DatabaseTable"


# instance fields
.field public mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public mDatabaseHelper:Lio/casper/android/e/a/c;

.field private sTableLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->a()Lio/casper/android/e/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/e/a/e;->mDatabaseHelper:Lio/casper/android/e/a/c;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Get Count, but getDatabase returned null!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    const-wide/16 v0, 0x0

    .line 419
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 412
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 417
    const-string v0, "DatabaseTable"

    const-string v2, "[%s] contains %d item(s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    int-to-long v0, v1

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract a()Lio/casper/android/e/a/c;
.end method

.method public a(J)Lio/casper/android/e/a/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 93
    const-string v2, "_id = ?"

    .line 94
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 95
    invoke-virtual/range {v0 .. v6}, Lio/casper/android/e/a/e;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/a/d;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public abstract a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/e/a/f;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 68
    invoke-virtual/range {v0 .. v6}, Lio/casper/android/e/a/e;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a([Lio/casper/android/e/a/f;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/casper/android/e/a/f;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    const/4 v0, 0x1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v3}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 79
    invoke-virtual/range {v0 .. v6}, Lio/casper/android/e/a/e;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    invoke-virtual {p0, v0}, Lio/casper/android/e/a/e;->a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    :cond_3
    monitor-exit p0

    return-object v8

    .line 125
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lio/casper/android/e/a/e;->a(Ljava/util/List;ZLjava/lang/String;Lio/casper/android/e/a/e$a;)V

    .line 244
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;ZLjava/lang/String;Lio/casper/android/e/a/e$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z",
            "Ljava/lang/String;",
            "Lio/casper/android/e/a/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    if-nez p1, :cond_1

    .line 249
    :try_start_0
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Insert items into Table, but Item List is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/a/d;

    .line 265
    invoke-virtual {p0, v0}, Lio/casper/android/e/a/e;->a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 269
    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {v0}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/casper/android/e/a/e;->b(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    iget-object v3, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {p4, v0}, Lio/casper/android/e/a/e$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 288
    :try_start_3
    const-string v1, "DatabaseTable"

    const-string v2, "[%s] Inserting items into Table failed with Exception %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    :try_start_4
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_3
    :try_start_5
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 292
    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 281
    :cond_4
    :try_start_7
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 282
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Inserted %d items(s) into Table"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 292
    :try_start_8
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized b(Lio/casper/android/e/a/d;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 154
    if-nez p1, :cond_1

    .line 155
    :try_start_0
    const-string v2, "DatabaseTable"

    const-string v3, "[%s] Attempting to Insert 1 item in Table, but Item is null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 159
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/casper/android/e/a/e;->b(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Insert 1 item in Table, but Primary Key exists. Updating instead"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, p1}, Lio/casper/android/e/a/e;->c(Lio/casper/android/e/a/d;)J

    move-result-wide v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 172
    invoke-virtual {p0, p1}, Lio/casper/android/e/a/e;->a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 174
    iget-object v3, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 177
    :cond_3
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 178
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    const-string v2, "DatabaseTable"

    const-string v3, "[%s] Inserted 1 item into Table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :try_start_3
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catch_0
    move-exception v2

    .line 184
    :try_start_4
    const-string v3, "DatabaseTable"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[%s] Inserting item into Table failed with Exception %s"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :try_start_5
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/e/a/f;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 87
    invoke-virtual/range {v0 .. v6}, Lio/casper/android/e/a/e;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    monitor-enter p0

    cmp-long v2, p1, v6

    if-nez v2, :cond_0

    .line 325
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lio/casper/android/e/a/e;->a(Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lio/casper/android/e/a/d;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 200
    if-nez p1, :cond_1

    .line 201
    :try_start_0
    const-string v2, "DatabaseTable"

    const-string v3, "[%s] Attempting to Update 1 item in Table, but Item is null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 205
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/casper/android/e/a/e;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Update 1 item in Table, but Primary Key does not exist. Inserting instead"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0, p1}, Lio/casper/android/e/a/e;->b(Lio/casper/android/e/a/d;)J

    move-result-wide v0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 218
    invoke-virtual {p0, p1}, Lio/casper/android/e/a/e;->a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 220
    iget-object v3, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 223
    :cond_3
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 224
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 226
    const-string v2, "DatabaseTable"

    const-string v3, "[%s] Updated 1 item in Table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    :try_start_3
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :catch_0
    move-exception v2

    .line 230
    :try_start_4
    const-string v3, "DatabaseTable"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[%s] Updating item in Table failed with Exception %s"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    :try_start_5
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized c(Lio/casper/android/e/a/f;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 373
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 381
    iget-object v2, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 383
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 384
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 386
    const-string v1, "DatabaseTable"

    const-string v2, "[%s] Deleted %s item(s) from Table"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :try_start_2
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 390
    :try_start_3
    const-string v1, "DatabaseTable"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[%s] Deleting item(s) from Table failed with Exception %s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :try_start_4
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public abstract c()[Lio/casper/android/e/a/f;
.end method

.method public d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v0, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->c()[Lio/casper/android/e/a/f;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 43
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v4}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {v4}, Lio/casper/android/e/a/f;->getDataType()Lio/casper/android/e/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lio/casper/android/e/a/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {v4}, Lio/casper/android/e/a/f;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d(Lio/casper/android/e/a/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    if-nez p1, :cond_1

    .line 331
    :try_start_0
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Delete 1 item from Table, but Item is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/e/a/e;->b(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Attempting to Delete 1 item from Table, but Item doesn\'t exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    :try_start_3
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 348
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lio/casper/android/e/a/d;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 351
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 353
    const-string v0, "DatabaseTable"

    const-string v1, "[%s] Deleted 1 item from Table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    :try_start_4
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    :try_start_5
    const-string v1, "DatabaseTable"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[%s] Deleting item from Table failed with Exception %s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 361
    :try_start_6
    iget-object v0, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lio/casper/android/e/a/e;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f()V
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lio/casper/android/e/a/e;->h()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "DatabaseTable"

    const-string v2, "[%s] Attempting to Empty Table, but getDatabase returned null!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/casper/android/e/a/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    :try_start_3
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    :goto_1
    const-string v1, "DatabaseTable"

    const-string v2, "[%s] Emptied Table"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 311
    :catch_0
    move-exception v1

    .line 314
    :try_start_4
    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/casper/android/e/a/e;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized g()J
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lio/casper/android/e/a/e;->a(Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabaseHelper:Lio/casper/android/e/a/c;

    if-nez v1, :cond_0

    .line 448
    const-string v1, "DatabaseTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DatabaseHelper is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_0
    monitor-exit p0

    return-object v0

    .line 452
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 453
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 456
    :cond_1
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabaseHelper:Lio/casper/android/e/a/c;

    invoke-virtual {v1}, Lio/casper/android/e/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 457
    iget-object v1, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 458
    iget-object v0, p0, Lio/casper/android/e/a/e;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 461
    :cond_2
    const-string v1, "DatabaseTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "WritableDatabase is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
