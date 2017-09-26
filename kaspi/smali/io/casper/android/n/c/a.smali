.class public Lio/casper/android/n/c/a;
.super Lio/casper/android/e/a/c;
.source "SnapchatDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/c/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapchatDatabaseHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    const-string v0, "casper_snapchat.db"

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lio/casper/android/e/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    const-string v1, "SnapchatDatabaseHelper"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Creating Database"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lio/casper/android/n/c/a$a;->values()[Lio/casper/android/n/c/a$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 47
    invoke-virtual {v3}, Lio/casper/android/n/c/a$a;->getTable()Lio/casper/android/n/c/b;

    move-result-object v3

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lio/casper/android/n/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lio/casper/android/n/c/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 64
    const-string v0, "SnapchatDatabaseHelper"

    const-string v1, "Downgrading database from version %d to %d, destroying all old data!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 55
    const-string v0, "SnapchatDatabaseHelper"

    const-string v1, "Upgrading database from version %d to %d, destroying all old data!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-virtual {p0, p1}, Lio/casper/android/n/c/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    return-void
.end method
