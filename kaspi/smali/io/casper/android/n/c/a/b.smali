.class public Lio/casper/android/n/c/a/b;
.super Lio/casper/android/n/c/b;
.source "BackgroundUploadsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/e/b/a;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/b;


# instance fields
.field private mJsonSerializer:Lio/casper/android/util/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 59
    new-instance v0, Lio/casper/android/util/e;

    invoke-direct {v0}, Lio/casper/android/util/e;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/c/a/b;->mJsonSerializer:Lio/casper/android/util/e;

    .line 60
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/b;
    .locals 3

    .prologue
    .line 108
    const-class v1, Lio/casper/android/n/c/a/b;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/b;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/b;->sInstance:Lio/casper/android/n/c/a/b;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lio/casper/android/n/c/a/b;

    invoke-direct {v0}, Lio/casper/android/n/c/a/b;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/b;->sInstance:Lio/casper/android/n/c/a/b;

    .line 112
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/b;->sInstance:Lio/casper/android/n/c/a/b;

    .line 113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit v1

    return-object v0

    .line 113
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

    .line 108
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lio/casper/android/e/b/a;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/b;->a(Lio/casper/android/e/b/a;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/e/b/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/b$a;->TIMESTAMP:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 81
    sget-object v1, Lio/casper/android/n/c/a/b$a;->UPLOAD_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    iget-object v2, p0, Lio/casper/android/n/c/a/b;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {p1}, Lio/casper/android/e/b/a;->a()Lio/casper/android/n/a/b/b/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 82
    sget-object v1, Lio/casper/android/n/c/a/b$a;->SEND_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    iget-object v2, p0, Lio/casper/android/n/c/a/b;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {p1}, Lio/casper/android/e/b/a;->b()Lio/casper/android/n/a/b/b/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 83
    sget-object v1, Lio/casper/android/n/c/a/b$a;->STATE:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {p1}, Lio/casper/android/e/b/a;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;

    .line 85
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/b;->b(Landroid/database/Cursor;)Lio/casper/android/e/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/e/b/a;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lio/casper/android/e/b/a;

    invoke-direct {v0}, Lio/casper/android/e/b/a;-><init>()V

    .line 94
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/e/b/a;->c(J)V

    .line 95
    sget-object v1, Lio/casper/android/n/c/a/b$a;->TIMESTAMP:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/b$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/e/b/a;->a(J)V

    .line 96
    sget-object v1, Lio/casper/android/n/c/a/b$a;->UPLOAD_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/b$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/a;->a(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lio/casper/android/n/c/a/b$a;->SEND_MEDIA_PAYLOAD:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/b$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/a;->b(Ljava/lang/String;)V

    .line 98
    sget-object v1, Lio/casper/android/n/c/a/b$a;->STATE:Lio/casper/android/n/c/a/b$a;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/b$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/a;->a(I)V

    .line 100
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "snapchat_background_uploads"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lio/casper/android/n/c/a/b$a;->values()[Lio/casper/android/n/c/a/b$a;

    move-result-object v0

    return-object v0
.end method
