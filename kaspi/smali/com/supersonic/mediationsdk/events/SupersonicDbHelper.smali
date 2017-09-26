.class Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SupersonicDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/events/SupersonicDbHelper$EventEntry;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "supersonic_sdk.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,provider TEXT,timestamp INTEGER,sessiondepth INTEGER,status INTEGER,placement TEXT,reward_name TEXT,reward_amount INTEGER,transId TEXT )"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS events"

.field private static final TYPE_INTEGER:Ljava/lang/String; = " INTEGER"

.field private static final TYPE_TEXT:Ljava/lang/String; = " TEXT"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,provider TEXT,timestamp INTEGER,sessiondepth INTEGER,status INTEGER,placement TEXT,reward_name TEXT,reward_amount INTEGER,transId TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method
