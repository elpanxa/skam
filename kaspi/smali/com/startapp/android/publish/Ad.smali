.class public abstract Lcom/startapp/android/publish/Ad;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/Ad$AdType;,
        Lcom/startapp/android/publish/Ad$AdState;
    }
.end annotation


# static fields
.field private static init:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field adInfoOverride:Lcom/startapp/android/publish/adinformation/b;

.field protected transient context:Landroid/content/Context;

.field protected errorMessage:Ljava/lang/String;

.field protected extraData:Ljava/io/Serializable;

.field private notDisplayedReason:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field protected placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private state:Lcom/startapp/android/publish/Ad$AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/startapp/android/publish/Ad;->init:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/startapp/android/publish/Ad;->extraData:Ljava/io/Serializable;

    .line 33
    invoke-static {}, Lcom/startapp/android/publish/adinformation/b;->a()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/Ad;->adInfoOverride:Lcom/startapp/android/publish/adinformation/b;

    .line 36
    iput-object v1, p0, Lcom/startapp/android/publish/Ad;->errorMessage:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    iput-object v0, p0, Lcom/startapp/android/publish/Ad;->state:Lcom/startapp/android/publish/Ad$AdState;

    .line 45
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/startapp/android/publish/Ad;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 47
    return-void
.end method


# virtual methods
.method public getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->adInfoOverride:Lcom/startapp/android/publish/adinformation/b;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->extraData:Ljava/io/Serializable;

    return-object v0
.end method

.method public getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->notDisplayedReason:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    return-object v0
.end method

.method protected getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getState()Lcom/startapp/android/publish/Ad$AdState;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->state:Lcom/startapp/android/publish/Ad$AdState;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->state:Lcom/startapp/android/publish/Ad$AdState;

    sget-object v1, Lcom/startapp/android/publish/Ad$AdState;->READY:Lcom/startapp/android/publish/Ad$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/Ad;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/Ad;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/startapp/android/publish/model/AdPreferences;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/Ad;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/Ad;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 118
    new-instance v3, Lcom/startapp/android/publish/b;

    invoke-direct {v3, p2}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    .line 120
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v1, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    const-string v4, "User-Agent"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-boolean v0, Lcom/startapp/android/publish/Ad;->init:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->d(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/l;->c(Landroid/content/Context;)V

    .line 127
    sput-boolean v6, Lcom/startapp/android/publish/Ad;->init:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 132
    const-string v0, ""

    .line 133
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    :cond_1
    const-string v0, "publisher ID and/or product ID were not set."

    move v1, v6

    .line 138
    :goto_0
    iget-object v4, p0, Lcom/startapp/android/publish/Ad;->state:Lcom/startapp/android/publish/Ad$AdState;

    sget-object v5, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    if-eq v4, v5, :cond_2

    .line 140
    const-string v0, "load() was already called."

    move v1, v6

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    const-string v0, "network not available."

    move v1, v6

    .line 148
    :cond_3
    if-eqz v1, :cond_4

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad wasn\'t loaded: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 150
    invoke-interface {v3, p0}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 173
    :goto_1
    return v2

    .line 154
    :cond_4
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->PROCESSING:Lcom/startapp/android/publish/Ad$AdState;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/Ad;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 158
    new-instance v5, Lcom/startapp/android/publish/Ad$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/startapp/android/publish/Ad$1;-><init>(Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 172
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getSessionRequestReason()Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    move-result-object v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;ZLcom/startapp/android/publish/e/p;)V

    move v2, v6

    .line 173
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method protected abstract loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
.end method

.method public setAdInfoOverride(Lcom/startapp/android/publish/adinformation/b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->adInfoOverride:Lcom/startapp/android/publish/adinformation/b;

    .line 87
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->errorMessage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setExtraData(Ljava/io/Serializable;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->extraData:Ljava/io/Serializable;

    .line 63
    return-void
.end method

.method protected setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->notDisplayedReason:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 191
    return-void
.end method

.method protected setPlacement(Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 95
    return-void
.end method

.method public setState(Lcom/startapp/android/publish/Ad$AdState;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/startapp/android/publish/Ad;->state:Lcom/startapp/android/publish/Ad$AdState;

    .line 71
    return-void
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
