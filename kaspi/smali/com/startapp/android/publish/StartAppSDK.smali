.class public Lcom/startapp/android/publish/StartAppSDK;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/StartAppSDK$a;
    }
.end annotation


# instance fields
.field private a:Lcom/startapp/android/publish/SDKAdPreferences;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:Landroid/app/Application;

.field private g:Lcom/startapp/android/publish/a/k;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/Runnable;

.field private o:Z

.field private p:Lcom/startapp/android/publish/AdEventListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 126
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->d:Z

    .line 128
    iput-object v2, p0, Lcom/startapp/android/publish/StartAppSDK;->f:Landroid/app/Application;

    .line 129
    iput-object v2, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    .line 133
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->i:Z

    .line 137
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->k:Z

    .line 141
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->m:Z

    .line 142
    iput-object v2, p0, Lcom/startapp/android/publish/StartAppSDK;->n:Ljava/lang/Runnable;

    .line 145
    iput-boolean v1, p0, Lcom/startapp/android/publish/StartAppSDK;->o:Z

    .line 432
    new-instance v0, Lcom/startapp/android/publish/StartAppSDK$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/StartAppSDK$2;-><init>(Lcom/startapp/android/publish/StartAppSDK;)V

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->p:Lcom/startapp/android/publish/AdEventListener;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/StartAppSDK$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/startapp/android/publish/StartAppSDK;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    const-string v2, "Sending Download Event"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/StartAppSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/StartAppSDK$1;-><init>(Lcom/startapp/android/publish/StartAppSDK;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->startNewSession(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 481
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    const-class v0, Lcom/startapp/android/publish/FullScreenActivity;

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "StartAppSDK"

    const-string v1, "FullScreenActivity decleration missing from AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->k:Z

    if-nez v0, :cond_3

    .line 154
    invoke-static {p1}, Lcom/startapp/android/publish/model/MetaData;->init(Landroid/content/Context;)V

    .line 155
    iput-boolean v3, p0, Lcom/startapp/android/publish/StartAppSDK;->k:Z

    .line 156
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->l:Ljava/lang/String;

    .line 160
    :cond_1
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize StartAppSDK with DevID:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], AppID:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/h/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p4, p0, Lcom/startapp/android/publish/StartAppSDK;->a:Lcom/startapp/android/publish/SDKAdPreferences;

    .line 163
    const-string v0, "shared_prefs_sdk_ad_prefs"

    new-instance v1, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    invoke-virtual {v1, p4}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lcom/startapp/android/publish/h/b;->b(Landroid/content/Context;)V

    .line 165
    const-string v0, "shared_prefs_first_init"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 166
    const-string v1, "StartAppSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Initialization: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;)V

    .line 169
    const-string v0, "totalSessions"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v0, "firstSessionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "shared_prefs_first_init"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 173
    :cond_2
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->LAUNCH:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 177
    :cond_3
    invoke-direct {p0, p1, p5}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Z)V

    .line 179
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 180
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/StartAppSDK;->registerApplicationLifeCycle(Landroid/app/Activity;)V

    .line 182
    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/StartAppSDK;->a(Z)V

    .line 188
    invoke-static {}, Lcom/startapp/android/publish/h/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/StartAppSDK;->a(Z)V

    .line 193
    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return Ads: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "StartAppSDK"

    const/4 v1, 0x6

    const-string v2, "Cannot activate return ads - api lower than 14"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/startapp/android/publish/StartAppSDK;->b:Z

    .line 452
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/StartAppSDK;->e:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getReturnAdMinBackgroundTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/startapp/android/publish/StartAppSDK;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/startapp/android/publish/StartAppSDK;->i:Z

    return p1
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/StartAppSDK;->e:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getSessionMaxBackgroundTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/startapp/android/publish/StartAppSDK;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK$a;->a()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    return-object v0
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/StartAppSDK;->inAppPurchaseMade(Landroid/content/Context;D)V

    .line 106
    return-void
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;D)V
    .locals 5

    .prologue
    .line 109
    const-string v0, "payingUser"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v0, "inAppPurchaseAmount"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 112
    const-string v1, "inAppPurchaseAmount"

    float-to-double v2, v0

    add-double/2addr v2, p1

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 113
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->IN_APP_PURCHASE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-direct {v0, p0, v1}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 114
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;)V

    .line 64
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;)V
    .locals 6

    .prologue
    .line 67
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 68
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V
    .locals 6

    .prologue
    .line 75
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 76
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 72
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;)V

    .line 83
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 88
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 98
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/SDKAdPreferences;Z)V

    .line 93
    return-void
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->CUSTOM:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-direct {v0, p0, v1}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getSDKAdPrefs(Landroid/content/Context;)Lcom/startapp/android/publish/SDKAdPreferences;
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->a:Lcom/startapp/android/publish/SDKAdPreferences;

    if-nez v0, :cond_0

    .line 461
    const-string v0, "shared_prefs_sdk_ad_prefs"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    new-instance v0, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/SDKAdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->a:Lcom/startapp/android/publish/SDKAdPreferences;

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->a:Lcom/startapp/android/publish/SDKAdPreferences;

    return-object v0

    .line 465
    :cond_1
    new-instance v1, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    const-class v2, Lcom/startapp/android/publish/SDKAdPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/SDKAdPreferences;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->a:Lcom/startapp/android/publish/SDKAdPreferences;

    goto :goto_0
.end method

.method public isReturnAdsEnabled()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->b:Z

    return v0
.end method

.method public isShowingAd()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->o:Z

    return v0
.end method

.method public loadReturnAd()V
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/StartAppSDK;->loadReturnAd(Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 487
    return-void
.end method

.method public loadReturnAd(Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isDisableReturnAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->i:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->i:Z

    .line 492
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->p:Lcom/startapp/android/publish/AdEventListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/a/k;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 494
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p2, :cond_1

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 240
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/b/a;->a(Landroid/content/Context;)Lcom/startapp/android/publish/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iput-boolean v2, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iput-boolean v2, p0, Lcom/startapp/android/publish/StartAppSDK;->k:Z

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/StartAppSDK;->e:J

    .line 387
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->m:Z

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->m:Z

    .line 317
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->d(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->n:Ljava/lang/Runnable;

    .line 324
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/b/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/a/k;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 253
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    iput-boolean v3, p0, Lcom/startapp/android/publish/StartAppSDK;->d:Z

    .line 258
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/startapp/android/publish/a/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isDisableReturnAd()Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isShowingAd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/startapp/android/publish/StartAppSDK;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v1, v5}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/k;->show()Z

    move-result v0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {v1, v2, v5}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/adrules/SessionManager;->addAdDisplayEvent(Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;)V

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->loadReturnAd()V

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/startapp/android/publish/StartAppSDK;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;->APP_IDLE:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/StartAppSDK;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 284
    :cond_3
    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    if-eqz v0, :cond_4

    .line 285
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 286
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/h/l;->a(Landroid/content/Context;)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 291
    if-nez v0, :cond_6

    .line 292
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 294
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->loadReturnAd()V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity Added:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :goto_1
    iput-boolean v3, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 306
    return-void

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->g:Lcom/startapp/android/publish/a/k;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/k;->getTrackingUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getSimpleReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v5, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_6
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 402
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 405
    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 410
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_0
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity removed:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->d:Z

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppSDK;->loadReturnAd()V

    .line 421
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 422
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/h/l;->b(Landroid/content/Context;)V

    .line 430
    :cond_1
    :goto_1
    return-void

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    :cond_3
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity hadn\'t been found:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->c:Z

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/StartAppSDK;->d:Z

    .line 457
    return-void
.end method

.method public registerApplicationLifeCycle(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 221
    invoke-static {}, Lcom/startapp/android/publish/h/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->f:Landroid/app/Application;

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->f:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppSDK;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/app/Application;Ljava/lang/Object;)V

    .line 227
    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    const-string v2, "Unregistered LifeCycle Callbacks"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    const-string v0, "StartAppSDK"

    const-string v1, "Registring LifeCycle Callbacks"

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->f:Landroid/app/Application;

    invoke-static {v0}, Lcom/startapp/android/publish/h/b;->a(Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppSDK;->j:Ljava/lang/Object;

    .line 235
    :goto_1
    return-void

    .line 233
    :cond_1
    const-string v0, "StartAppSDK"

    const/4 v1, 0x6

    const-string v2, "Cannot register activity life cycle callbacks - api lower than 14"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setShowingAd(Z)V
    .locals 0

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/startapp/android/publish/StartAppSDK;->o:Z

    .line 342
    return-void
.end method
