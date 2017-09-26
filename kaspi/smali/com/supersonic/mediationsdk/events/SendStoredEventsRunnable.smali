.class Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;
.super Ljava/lang/Object;
.source "SendStoredEventsRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final KEY_EVENTS:Ljava/lang/String;

.field private mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

.field private mGeneralProperties:Lorg/json/JSONObject;

.field private mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "events"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->KEY_EVENTS:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    .line 34
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    .line 36
    if-nez p4, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    .line 41
    :goto_0
    if-nez p3, :cond_1

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    .line 45
    :goto_1
    return-void

    .line 39
    :cond_0
    iput-object p4, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    goto :goto_0

    .line 44
    :cond_1
    iput-object p3, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method private createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    const-string v0, ""

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v2

    .line 168
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    const-string v2, "events"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mGeneralProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createEventsArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/events/Event;

    .line 136
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 139
    :cond_1
    return-object p1
.end method

.method private createJSONForEvent(ILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_0
    const-string v1, "eventId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v1, "provider"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "sessionDepth"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    if-eq p6, v3, :cond_0

    .line 203
    const-string v2, "status"

    const/4 v1, 0x1

    if-ne p6, v1, :cond_5

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const-string v1, "placement"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_1
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    const-string v1, "rewardName"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    if-eq p9, v3, :cond_3

    .line 212
    const-string v1, "rewardAmount"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    :cond_3
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    const-string v1, "transId"

    invoke-virtual {v0, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_4
    :goto_1
    return-object v0

    .line 203
    :cond_5
    const-string v1, "false"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 219
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendEvents(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromPost(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 51
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 63
    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 72
    const-string v2, "eventid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 73
    const-string v2, "provider"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string v2, "sessiondepth"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 75
    const-string v2, "timestamp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 76
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 77
    const-string v2, "placement"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    const-string v2, "reward_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    const-string v2, "reward_amount"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 80
    const-string v2, "transId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    .line 83
    invoke-direct/range {v2 .. v12}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createJSONForEvent(ILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 93
    :cond_3
    :try_start_1
    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->mLocalEvents:Ljava/util/ArrayList;

    invoke-direct {p0, v13, v1}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createEventsArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 103
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;->sendEvents(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v1
.end method
