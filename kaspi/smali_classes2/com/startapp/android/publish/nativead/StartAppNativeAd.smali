.class public Lcom/startapp/android/publish/nativead/StartAppNativeAd;
.super Lcom/startapp/android/publish/Ad;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/nativead/NativeAdDetails$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;,
        Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppNativeAd"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adEventDelegate:Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

.field private listNativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAd:Lcom/startapp/android/publish/a/g;

.field private preferences:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

.field private totalObjectsLoaded:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->initNativeAdList()V

    return-void
.end method

.method private getAdDetailsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    .line 201
    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a()Lcom/startapp/android/publish/model/AdDetails;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    return-object v1
.end method

.method private getPreferences()Lcom/startapp/android/publish/nativead/NativeAdPreferences;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    return-object v0
.end method

.method private initNativeAdList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    .line 84
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 92
    new-instance v2, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;-><init>(Lcom/startapp/android/publish/model/AdDetails;Lcom/startapp/android/publish/nativead/NativeAdPreferences;ILcom/startapp/android/publish/nativead/NativeAdDetails$a;)V

    .line 93
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private onNativeAdLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 115
    const-string v0, "StartAppNativeAd"

    const-string v1, "Ad Loaded successfully"

    invoke-static {v0, v2, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "StartAppNativeAd"

    const-string v1, "Calling original RecienedAd callback"

    invoke-static {v0, v2, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->a()Lcom/startapp/android/publish/AdEventListener;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p0}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 125
    :cond_0
    return-void
.end method

.method private setPreferences(Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 62
    return-void
.end method


# virtual methods
.method public getNativeAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/startapp/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getNativeAds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/startapp/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v0

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v2, p1}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 179
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    .line 181
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    new-instance v2, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    sget-object v3, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {v2, v3, p1}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->addAdDisplayEvent(Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;)V

    .line 193
    :cond_1
    :goto_1
    return-object v1

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getAdDetailsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getSimpleReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNumberOfAds()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;)Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 150
    const-string v0, "StartAppNativeAd"

    const-string v1, "Start loading StartAppNativeAd"

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    new-instance v0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

    invoke-direct {v0, p0, p2}, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;-><init>(Lcom/startapp/android/publish/nativead/StartAppNativeAd;Lcom/startapp/android/publish/AdEventListener;)V

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

    .line 153
    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configurtaion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->setPreferences(Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    .line 156
    new-instance v0, Lcom/startapp/android/publish/a/g;

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/a/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/a/g;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onNativeAdDetailsLoaded(I)V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    .line 105
    iget v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/android/publish/a/g;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->onNativeAdLoaded()V

    .line 109
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    const-string v0, "\n===== StartAppNativeAd =====\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getNumberOfAds()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "===== End StartAppNativeAd ====="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
