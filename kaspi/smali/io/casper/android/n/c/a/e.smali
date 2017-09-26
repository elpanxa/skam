.class public Lio/casper/android/n/c/a/e;
.super Lio/casper/android/n/c/b;
.source "GeoFiltersTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/c/b",
        "<",
        "Lio/casper/android/n/a/c/b/m;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lio/casper/android/n/c/a/e;


# instance fields
.field private mJsonSerializer:Lio/casper/android/util/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lio/casper/android/n/c/b;-><init>()V

    .line 57
    new-instance v0, Lio/casper/android/util/e;

    invoke-direct {v0}, Lio/casper/android/util/e;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/c/a/e;->mJsonSerializer:Lio/casper/android/util/e;

    .line 58
    return-void
.end method

.method public static declared-synchronized i()Lio/casper/android/n/c/a/e;
    .locals 3

    .prologue
    .line 110
    const-class v1, Lio/casper/android/n/c/a/e;

    monitor-enter v1

    :try_start_0
    const-class v2, Lio/casper/android/n/c/a/e;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    sget-object v0, Lio/casper/android/n/c/a/e;->sInstance:Lio/casper/android/n/c/a/e;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lio/casper/android/n/c/a/e;

    invoke-direct {v0}, Lio/casper/android/n/c/a/e;-><init>()V

    sput-object v0, Lio/casper/android/n/c/a/e;->sInstance:Lio/casper/android/n/c/a/e;

    .line 114
    :cond_0
    sget-object v0, Lio/casper/android/n/c/a/e;->sInstance:Lio/casper/android/n/c/a/e;

    .line 115
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit v1

    return-object v0

    .line 115
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

    .line 110
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/casper/android/e/a/d;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lio/casper/android/n/a/c/b/m;

    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/e;->a(Lio/casper/android/n/a/c/b/m;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/m;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lio/casper/android/e/a/a;

    invoke-direct {v0}, Lio/casper/android/e/a/a;-><init>()V

    .line 78
    sget-object v1, Lio/casper/android/n/c/a/e$a;->FILTER_ID:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 79
    sget-object v1, Lio/casper/android/n/c/a/e$a;->IMAGE:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;

    .line 80
    sget-object v1, Lio/casper/android/n/c/a/e$a;->POSITION:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/m;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/e/a/a;->a(Lio/casper/android/e/a/f;Ljava/util/List;)Lio/casper/android/e/a/a;

    .line 82
    invoke-virtual {v0}, Lio/casper/android/e/a/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/database/Cursor;)Lio/casper/android/e/a/d;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a/e;->b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lio/casper/android/n/a/c/b/m;
    .locals 5

    .prologue
    .line 89
    new-instance v1, Lio/casper/android/n/a/c/b/m;

    invoke-direct {v1}, Lio/casper/android/n/a/c/b/m;-><init>()V

    .line 91
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/n/a/c/b/m;->c(J)V

    .line 92
    sget-object v0, Lio/casper/android/n/c/a/e$a;->FILTER_ID:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/e$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/c/b/m;->a(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lio/casper/android/n/c/a/e$a;->IMAGE:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/e$a;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/c/b/m;->b(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lio/casper/android/n/c/a/e;->mJsonSerializer:Lio/casper/android/util/e;

    sget-object v2, Lio/casper/android/n/c/a/e$a;->POSITION:Lio/casper/android/n/c/a/e$a;

    invoke-virtual {v2}, Lio/casper/android/n/c/a/e$a;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/casper/android/n/c/a/e$1;

    invoke-direct {v3, p0}, Lio/casper/android/n/c/a/e$1;-><init>(Lio/casper/android/n/c/a/e;)V

    invoke-virtual {v3}, Lio/casper/android/n/c/a/e$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_0
    invoke-virtual {v1, v0}, Lio/casper/android/n/a/c/b/m;->a(Ljava/util/List;)V

    .line 102
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "snapchat_geofilters"

    return-object v0
.end method

.method public c()[Lio/casper/android/e/a/f;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lio/casper/android/n/c/a/e$a;->values()[Lio/casper/android/n/c/a/e$a;

    move-result-object v0

    return-object v0
.end method
