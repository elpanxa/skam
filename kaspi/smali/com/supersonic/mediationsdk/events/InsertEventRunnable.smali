.class Lcom/supersonic/mediationsdk/events/InsertEventRunnable;
.super Ljava/lang/Object;
.source "InsertEventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    .line 20
    if-nez p2, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mEvents:Ljava/util/ArrayList;

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mEvents:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getContentValuesForEvent(Lcom/supersonic/mediationsdk/events/Event;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 72
    const-string v1, "eventid"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v1, "provider"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "sessiondepth"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getSessionDepth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v1, "placement"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "reward_name"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "reward_amount"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "transId"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getTransId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/events/Event;

    .line 38
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;->getContentValuesForEvent(Lcom/supersonic/mediationsdk/events/Event;)Landroid/content/ContentValues;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    const-string v3, "events"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method
