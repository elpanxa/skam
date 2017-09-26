.class public Lcom/startapp/android/publish/e/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/startapp/android/publish/model/AdPreferences;

.field private c:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field private d:Lcom/startapp/android/publish/model/MetaData;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/e/h;->d:Lcom/startapp/android/publish/model/MetaData;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/e/h;->e:Z

    .line 27
    iput-object p1, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/startapp/android/publish/e/h;->b:Lcom/startapp/android/publish/model/AdPreferences;

    .line 29
    iput-object p3, p0, Lcom/startapp/android/publish/e/h;->c:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/e/h$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/e/h$1;-><init>(Lcom/startapp/android/publish/e/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/e/h;->e:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->d:Lcom/startapp/android/publish/model/MetaData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/e/h;->d:Lcom/startapp/android/publish/model/MetaData;

    invoke-static {v0, v2}, Lcom/startapp/android/publish/model/MetaData;->update(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaData;)V

    .line 79
    :cond_0
    :goto_0
    monitor-exit v1

    .line 80
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->failedLoading()V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/e/h;->e:Z

    .line 50
    return-void
.end method

.method protected c()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 53
    const-string v0, "Loading MetaData"

    invoke-static {v1, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 54
    new-instance v2, Lcom/startapp/android/publish/model/MetaDataRequest;

    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/e/h;->c:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-direct {v2, v0, v1}, Lcom/startapp/android/publish/model/MetaDataRequest;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/e/h;->b:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v2, v0, v1}, Lcom/startapp/android/publish/model/MetaDataRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 58
    const/4 v0, 0x3

    :try_start_0
    const-string v1, "Networking MetaData"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/e/h;->a:Landroid/content/Context;

    sget-object v1, Lcom/startapp/android/publish/d$a;->c:Lcom/startapp/android/publish/d$a;

    invoke-static {v1}, Lcom/startapp/android/publish/d;->a(Lcom/startapp/android/publish/d$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-class v4, Lcom/startapp/android/publish/model/MetaData;

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getGson()Lcom/startapp/android/publish/gson/Gson;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;Lcom/startapp/android/publish/gson/Gson;)Lcom/startapp/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/MetaData;

    iput-object v0, p0, Lcom/startapp/android/publish/e/h;->d:Lcom/startapp/android/publish/model/MetaData;
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v1, 0x6

    const-string v2, "Unable to handle GetMetaData command!!!!"

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
