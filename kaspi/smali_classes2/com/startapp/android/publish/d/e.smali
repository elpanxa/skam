.class public Lcom/startapp/android/publish/d/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/startapp/android/publish/model/AdPreferences;

.field private final c:Lcom/startapp/android/publish/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/d/b;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/startapp/android/publish/d/e;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/startapp/android/publish/d/e;->b:Lcom/startapp/android/publish/model/AdPreferences;

    .line 22
    iput-object p3, p0, Lcom/startapp/android/publish/d/e;->c:Lcom/startapp/android/publish/d/b;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/d/e$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/d/e$1;-><init>(Lcom/startapp/android/publish/d/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v2, 0x3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending InfoEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/d/e;->c:Lcom/startapp/android/publish/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 37
    new-instance v3, Lcom/startapp/android/publish/d/c;

    iget-object v0, p0, Lcom/startapp/android/publish/d/e;->c:Lcom/startapp/android/publish/d/b;

    invoke-direct {v3, v0}, Lcom/startapp/android/publish/d/c;-><init>(Lcom/startapp/android/publish/d/b;)V

    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/d/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/d/e;->b:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/d/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/d/e;->b:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v3, v0, v1}, Lcom/startapp/android/publish/d/c;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 42
    const/4 v0, 0x3

    :try_start_0
    const-string v1, "Networking InfoEvent"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/startapp/android/publish/d/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/d/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/d/a;->c()I

    move-result v5

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/d/a;->d()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;IJ)Z
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v1, 0x6

    const-string v2, "Unable to send InfoEvent command!!!!"

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
