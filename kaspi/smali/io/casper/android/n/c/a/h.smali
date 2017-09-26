.class public Lio/casper/android/n/c/a/h;
.super Lio/casper/android/n/c/b;
.source "StoryNotesTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/z;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/h;
    .locals 3

    .prologue
    .line 92
    const-class v1, Lio/casper/android/n/c/a/h;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/h;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/h;->sInstance:Lio/casper/android/n/c/a/h;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lio/casper/android/n/c/a/h;

    invoke-direct {v0}, Lio/casper/android/n/c/a/h;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/h;->sInstance:Lio/casper/android/n/c/a/h;

    .line 96
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/h;->sInstance:Lio/casper/android/n/c/a/h;

    .line 97
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v1

    return-object v0

    .line 97
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

    .line 92
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
    check-cast p1, Lio/casper/android/n/a/c/b/z;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/h;->a(Lio/casper/android/n/a/c/b/z;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/z;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 67
    sget-object v1, Lio/casper/android/n/c/a/h$a;->VIEWER:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 68
    sget-object v1, Lio/casper/android/n/c/a/h$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/z;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;

    .line 69
    sget-object v1, Lio/casper/android/n/c/a/h$a;->TIMESTAMP:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/z;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;

    .line 70
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/h;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/z;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    new-instance v1, Lio/casper/android/n/a/c/b/z;

    invoke-direct {v1}, Lio/casper/android/n/a/c/b/z;-><init>()V

    .line 79
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/n/a/c/b/z;->c(J)V

    .line 80
    sget-object v2, Lio/casper/android/n/c/a/h$a;->VIEWER:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {v2}, Lio/casper/android/n/c/a/h$a;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/c/b/z;->a(Ljava/lang/String;)V

    .line 81
    sget-object v2, Lio/casper/android/n/c/a/h$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {v2}, Lio/casper/android/n/c/a/h$a;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lio/casper/android/n/a/c/b/z;->a(Z)V

    .line 82
    sget-object v0, Lio/casper/android/n/c/a/h$a;->TIMESTAMP:Lio/casper/android/n/c/a/h$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/h$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/c/b/z;->a(Ljava/lang/Long;)V

    .line 84
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "snapchat_story_notes"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lio/casper/android/n/c/a/h$a;->values()[Lio/casper/android/n/c/a/h$a;

    move-result-object v0

    return-object v0
.end method
