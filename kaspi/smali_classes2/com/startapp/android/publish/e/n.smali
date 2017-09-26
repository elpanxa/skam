.class public Lcom/startapp/android/publish/e/n;
.super Lcom/startapp/android/publish/e/c;
.source "StartAppSDK"


# instance fields
.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/a/l;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 6

    .prologue
    .line 27
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/e/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 28
    iput-object p1, p0, Lcom/startapp/android/publish/e/n;->g:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/n;->b()Lcom/startapp/android/publish/model/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/c;->a(Ljava/lang/Boolean;)V

    .line 93
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/startapp/android/publish/model/GetAdResponse;

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "Error Empty Response"

    invoke-static {v3, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    move v0, v2

    .line 86
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/e/n;->f:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error msg = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/e/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    move v0, v2

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/startapp/android/publish/e/n;->b:Lcom/startapp/android/publish/Ad;

    check-cast v1, Lcom/startapp/android/publish/a/l;

    .line 66
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/a/l;->a(Ljava/util/List;)V

    .line 67
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/a/l;->setAdInfoOverride(Lcom/startapp/android/publish/adinformation/b;)V

    .line 69
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 72
    :goto_1
    if-nez v0, :cond_3

    .line 73
    const-string v1, "Empty Response"

    iput-object v1, p0, Lcom/startapp/android/publish/e/n;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    goto :goto_1

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/startapp/android/publish/e/n;->g:Landroid/app/Activity;

    const-string v3, "slideEvent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    iget-object v1, p0, Lcom/startapp/android/publish/e/n;->g:Landroid/app/Activity;

    const-string v3, "trackingEvent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    iget-object v1, p0, Lcom/startapp/android/publish/e/n;->g:Landroid/app/Activity;

    const-string v2, "trackingUrl"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()Lcom/startapp/android/publish/model/BaseResponse;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-super {p0}, Lcom/startapp/android/publish/e/c;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v0

    .line 34
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/startapp/android/publish/e/n;->a:Landroid/content/Context;

    sget-object v3, Lcom/startapp/android/publish/d$a;->b:Lcom/startapp/android/publish/d$a;

    invoke-static {v3}, Lcom/startapp/android/publish/d;->a(Lcom/startapp/android/publish/d$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/startapp/android/publish/model/GetAdResponse;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/startapp/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/GetAdResponse;
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const/4 v2, 0x6

    const-string v3, "Unable to handle GetSearchBoxService!!!!"

    invoke-static {v2, v3, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {v0}, Lcom/startapp/android/publish/h/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/e/n;->f:Ljava/lang/String;

    move-object v0, v1

    .line 45
    goto :goto_0
.end method
