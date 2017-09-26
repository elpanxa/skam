.class public Lcom/supersonic/mediationsdk/events/EventsHelper;
.super Ljava/lang/Object;
.source "EventsHelper.java"


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;


# instance fields
.field private final AVAILABILITY_CHANGED:I

.field private final DEFAULT_BACKUP_THRESHOLD:I

.field private final DEFAULT_EVENTS_URL:Ljava/lang/String;

.field private final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field private final GET_INSTANCE_CODE:I

.field private final INIT_INTERSTITISL_CODE:I

.field private final INIT_OFFERWALL_CODE:I

.field private final INIT_REWARDED_VIDEO_CODE:I

.field private final INIT_REWARDED_VIDEO_RESULT:I

.field private final IS_REWARDED_VIDEO_AVAILABLE_CODE:I

.field private final PAUSE_CODE:I

.field private final RELEASE_CODE:I

.field private final RESUME_CODE:I

.field private final REWARDED_VIDEO_AD_CLOSED:I

.field private final REWARDED_VIDEO_AD_OPENED:I

.field private final SHOW_REWARDED_VIDEO_CODE:I

.field private final SHOW_REWARDED_VIDEO_RESULT:I

.field private final VIDEO_AD_REWARDED:I

.field private final VIDEO_END:I

.field private final VIDEO_START:I

.field private mBackupThreshold:I

.field private mCurrentPlacement:Ljava/lang/String;

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

.field private mIsEventsEnabled:Z

.field private mMaxNumberOfEvents:I

.field private mServerUrl:Ljava/lang/String;

.field private mSessionDepth:I

.field private mTotalEvents:I

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_REWARDED_VIDEO_CODE:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->SHOW_REWARDED_VIDEO_CODE:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->IS_REWARDED_VIDEO_AVAILABLE_CODE:I

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_REWARDED_VIDEO_RESULT:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->REWARDED_VIDEO_AD_OPENED:I

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->REWARDED_VIDEO_AD_CLOSED:I

    .line 30
    const/4 v0, 0x7

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->AVAILABILITY_CHANGED:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_START:I

    .line 32
    const/16 v0, 0x9

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_END:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_AD_REWARDED:I

    .line 35
    const/16 v0, 0xb

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->RELEASE_CODE:I

    .line 36
    const/16 v0, 0xc

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->RESUME_CODE:I

    .line 37
    const/16 v0, 0xd

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->PAUSE_CODE:I

    .line 39
    const/16 v0, 0xe

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->GET_INSTANCE_CODE:I

    .line 40
    const/16 v0, 0xf

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_OFFERWALL_CODE:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_INTERSTITISL_CODE:I

    .line 43
    const/16 v0, 0x11

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->SHOW_REWARDED_VIDEO_RESULT:I

    .line 45
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_EVENTS_URL:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_BACKUP_THRESHOLD:I

    .line 47
    iput v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    .line 53
    iput v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mMaxNumberOfEvents:I

    .line 54
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mBackupThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mIsEventsEnabled:Z

    .line 72
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->initState()V

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_REWARDED_VIDEO_CODE:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->SHOW_REWARDED_VIDEO_CODE:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->IS_REWARDED_VIDEO_AVAILABLE_CODE:I

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_REWARDED_VIDEO_RESULT:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->REWARDED_VIDEO_AD_OPENED:I

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->REWARDED_VIDEO_AD_CLOSED:I

    .line 30
    const/4 v0, 0x7

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->AVAILABILITY_CHANGED:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_START:I

    .line 32
    const/16 v0, 0x9

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_END:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->VIDEO_AD_REWARDED:I

    .line 35
    const/16 v0, 0xb

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->RELEASE_CODE:I

    .line 36
    const/16 v0, 0xc

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->RESUME_CODE:I

    .line 37
    const/16 v0, 0xd

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->PAUSE_CODE:I

    .line 39
    const/16 v0, 0xe

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->GET_INSTANCE_CODE:I

    .line 40
    const/16 v0, 0xf

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_OFFERWALL_CODE:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->INIT_INTERSTITISL_CODE:I

    .line 43
    const/16 v0, 0x11

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->SHOW_REWARDED_VIDEO_RESULT:I

    .line 45
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_EVENTS_URL:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_BACKUP_THRESHOLD:I

    .line 47
    iput v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    .line 53
    iput v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mMaxNumberOfEvents:I

    .line 54
    iput v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mBackupThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mIsEventsEnabled:Z

    .line 67
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->initState()V

    .line 68
    new-instance v0, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    invoke-direct {v0, p1}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    .line 69
    return-void
.end method

.method private addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    .locals 6

    .prologue
    .line 263
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mIsEventsEnabled:Z

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mTotalEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mTotalEvents:I

    .line 272
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->shouldSendEvents(Lcom/supersonic/mediationsdk/events/Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Lcom/supersonic/mediationsdk/events/SuperLooper;->getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mServerUrl:Ljava/lang/String;

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;-><init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mTotalEvents:I

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/supersonic/mediationsdk/events/SuperLooper;->getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/supersonic/mediationsdk/events/InsertEventRunnable;-><init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;
    .locals 2

    .prologue
    .line 111
    const-class v1, Lcom/supersonic/mediationsdk/events/EventsHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/supersonic/mediationsdk/events/EventsHelper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/events/EventsHelper;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    .line 114
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initState()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mEvents:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mTotalEvents:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private setCurrentPlacement(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    goto :goto_0
.end method

.method private shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/events/Event;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 305
    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mBackupThreshold:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 310
    :cond_0
    return v0
.end method

.method private shouldSendEvents(Lcom/supersonic/mediationsdk/events/Event;)Z
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getEventId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "Mediation"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/events/Event;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mTotalEvents:I

    iget v1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mMaxNumberOfEvents:I

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized start(Landroid/content/Context;)Lcom/supersonic/mediationsdk/events/EventsHelper;
    .locals 7

    .prologue
    .line 85
    const-class v1, Lcom/supersonic/mediationsdk/events/EventsHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/supersonic/mediationsdk/events/EventsHelper;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/events/EventsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    .line 88
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    sget-object v2, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "https://outcome.supersonicads.com/mediation/"

    invoke-static {p0, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mServerUrl:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    new-instance v2, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    invoke-direct {v2, p0}, Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    .line 96
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getGeneralProperties(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/supersonic/mediationsdk/events/SuperLooper;->getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;

    move-result-object v2

    new-instance v3, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;

    sget-object v4, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    iget-object v4, v4, Lcom/supersonic/mediationsdk/events/EventsHelper;->mDbHelper:Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;

    sget-object v5, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/events/EventsHelper;->mServerUrl:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/supersonic/mediationsdk/events/SendStoredEventsRunnable;-><init>(Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/supersonic/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 103
    invoke-static {}, Lcom/supersonic/mediationsdk/events/SuperLooper;->getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v2, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-direct {v2, p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/supersonic/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 106
    :cond_1
    sget-object v0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mInstance:Lcom/supersonic/mediationsdk/events/EventsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized notifyGetInstanceEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xe

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 243
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyInitInterstitialEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0x10

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 254
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyInitOfferwallEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xf

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 249
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyInitRewardedVideoEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x1

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 145
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x4

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 163
    invoke-virtual {v1, p2}, Lcom/supersonic/mediationsdk/events/Event;->setStatus(Z)V

    .line 164
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x3

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 157
    invoke-virtual {v1, p2}, Lcom/supersonic/mediationsdk/events/Event;->setStatus(Z)V

    .line 158
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyMediationVideoAdRewardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setCurrentPlacement(Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xa

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 210
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, p3}, Lcom/supersonic/mediationsdk/events/Event;->setRewardName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, p4}, Lcom/supersonic/mediationsdk/events/Event;->setRewardAmount(I)V

    .line 213
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyPauseEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xd

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 238
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyProviderVideoAdRewardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setCurrentPlacement(Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xa

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 219
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, p3}, Lcom/supersonic/mediationsdk/events/Event;->setRewardName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, p4}, Lcom/supersonic/mediationsdk/events/Event;->setRewardAmount(I)V

    .line 222
    invoke-virtual {v1, p5}, Lcom/supersonic/mediationsdk/events/Event;->setTransId(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyReleaseEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xb

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 228
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyResumeEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0xc

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 233
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyShowRewardedVideoEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setCurrentPlacement(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x2

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 151
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyShowRewardedVideoResultEvent(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0x11

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 169
    invoke-virtual {v1, p2}, Lcom/supersonic/mediationsdk/events/Event;->setStatus(Z)V

    .line 170
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyVideoAdClosedEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x6

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 181
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 183
    const-string v0, "Mediation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    .line 186
    :cond_0
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyVideoAdOpenedEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x5

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 175
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyVideoAvailabilityChangedEvent(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/4 v2, 0x7

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 191
    invoke-virtual {v1, p2}, Lcom/supersonic/mediationsdk/events/Event;->setStatus(Z)V

    .line 192
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyVideoEndEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0x9

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 203
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyVideoStartEvent(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/supersonic/mediationsdk/events/Event;

    const/16 v2, 0x8

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v4

    iget v6, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mSessionDepth:I

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/supersonic/mediationsdk/events/Event;-><init>(ILjava/lang/String;JI)V

    .line 197
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/Event;->setPlacementName(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->addEvent(Lcom/supersonic/mediationsdk/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackupThreshold(I)V
    .locals 0

    .prologue
    .line 120
    if-lez p1, :cond_0

    .line 121
    iput p1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mBackupThreshold:I

    .line 122
    :cond_0
    return-void
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mServerUrl:Ljava/lang/String;

    .line 133
    invoke-static {p2, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mIsEventsEnabled:Z

    .line 139
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 0

    .prologue
    .line 125
    if-lez p1, :cond_0

    .line 126
    iput p1, p0, Lcom/supersonic/mediationsdk/events/EventsHelper;->mMaxNumberOfEvents:I

    .line 127
    :cond_0
    return-void
.end method
