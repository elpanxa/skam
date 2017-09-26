.class public abstract Lcom/startapp/android/publish/a/e;
.super Lcom/startapp/android/publish/a/d;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/e;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/a/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 26
    return-void
.end method

.method private b()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/startapp/android/publish/FullScreenActivity;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-class v0, Lcom/startapp/android/publish/FullScreenActivity;

    .line 99
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/startapp/android/publish/OverlayActivity;

    const-class v2, Lcom/startapp/android/publish/AppWallActivity;

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/startapp/android/publish/h/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "back"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/a/e;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    .line 92
    :goto_0
    return v1

    .line 37
    :cond_0
    sget-object v0, Lcom/startapp/android/publish/d;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/a/e;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 42
    sget-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/a/e;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 51
    :goto_1
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v2, "fileUrl"

    const-string v5, "exit.html"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getTrackingUrls()[Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {}, Lcom/startapp/android/publish/h/u;->c()Ljava/lang/String;

    move-result-object v6

    move v2, v1

    .line 56
    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_4

    .line 57
    aget-object v7, v5, v2

    if-eqz v7, :cond_3

    const-string v7, ""

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 56
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 62
    :cond_4
    const-string v2, "tracking"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "trackingClickUrl"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getTrackingClickUrls()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "packageNames"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getPackageNames()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "htmlUuid"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getHtmlUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "smartRedirect"

    iget-object v5, p0, Lcom/startapp/android/publish/a/e;->smartRedirect:[Z

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 67
    const-string v2, "placement"

    iget-object v5, p0, Lcom/startapp/android/publish/a/e;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v5}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->getIndex()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v2, "adInfoOverride"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    const-string v2, "ad"

    invoke-virtual {v4, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v2, "videoAd"

    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->d()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v2, "fullscreen"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v0, "orientation"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/e;->a()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v0, "adTag"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    instance-of v0, p0, Lcom/startapp/android/publish/a/m;

    if-eqz v0, :cond_5

    .line 78
    const-string v0, "isSplash"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    :cond_5
    const-string v0, "position"

    invoke-static {}, Lcom/startapp/android/publish/h/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-direct {p0}, Lcom/startapp/android/publish/a/e;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 83
    const/high16 v0, 0x14880000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lcom/startapp/android/publish/a/e;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_7
    move v1, v3

    .line 92
    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public getLauncherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/startapp/android/publish/a/d;->getLauncherName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
