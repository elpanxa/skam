.class public abstract Lcom/startapp/android/publish/a/d;
.super Lcom/startapp/android/publish/Ad;
.source "StartAppSDK"


# static fields
.field protected static launcherName:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adId:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private htmlUuid:Ljava/lang/String;

.field private orientation:I

.field private packageNames:[Ljava/lang/String;

.field public smartRedirect:[Z

.field private trackingClickUrls:[Ljava/lang/String;

.field public trackingUrls:[Ljava/lang/String;

.field private videoAdDetails:Lcom/startapp/android/publish/video/VideoAdDetails;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/a/d;->launcherName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->packageNames:[Ljava/lang/String;

    .line 30
    iput-object v4, p0, Lcom/startapp/android/publish/a/d;->videoAdDetails:Lcom/startapp/android/publish/video/VideoAdDetails;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->htmlUuid:Ljava/lang/String;

    .line 35
    iput-object v4, p0, Lcom/startapp/android/publish/a/d;->adId:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/startapp/android/publish/a/d;->orientation:I

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingClickUrls:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Z

    aput-boolean v2, v0, v2

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/startapp/android/publish/a/d;->launcherName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/startapp/android/publish/a/d;->initDefaultLauncherName()V

    .line 77
    :cond_0
    return-void
.end method

.method private extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-static {p1, p2, p2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDefaultLauncherName()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/a/d;->launcherName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private setAdInfoEnableOverride(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 256
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/d;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adinformation/b;->a(Z)V

    .line 257
    return-void
.end method

.method private setAdInfoPositionOverride(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/d;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    invoke-static {p1}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/b;->a(Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;)V

    .line 261
    return-void
.end method

.method private setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/a/d;->orientation:I

    .line 164
    if-eqz p1, :cond_0

    .line 165
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/a/d;->orientation:I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/startapp/android/publish/a/d;->orientation:I

    goto :goto_0
.end method

.method private setPackageNames(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->packageNames:[Ljava/lang/String;

    .line 236
    return-void
.end method

.method private setSmartRedirect(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    move v0, v1

    .line 182
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 183
    aget-object v3, v2, v0

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 190
    :cond_1
    return-void
.end method

.method private setTrackingClickUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingClickUrls:[Ljava/lang/String;

    .line 222
    return-void
.end method

.method private setTrackingUrls(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/startapp/android/publish/a/d;->height:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/a/d;->htmlUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->htmlUuid:Ljava/lang/String;

    return-object v0
.end method

.method protected getLauncherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/startapp/android/publish/a/d;->launcherName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/startapp/android/publish/a/d;->orientation:I

    return v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->packageNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSmartRedirect(I)Z
    .locals 1

    .prologue
    .line 193
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public getSmartRedirect()[Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    return-object v0
.end method

.method public getTrackingClickUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingClickUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingUrls(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getTrackingUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->videoAdDetails:Lcom/startapp/android/publish/video/VideoAdDetails;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/startapp/android/publish/a/d;->width:I

    return v0
.end method

.method public gtAdId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->adId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/d;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@adId@"

    const-string v2, "@adId@"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->adId:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lcom/startapp/android/publish/a/d;->apps:Ljava/util/List;

    .line 252
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/startapp/android/publish/a/d;->height:I

    .line 61
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->htmlUuid:Ljava/lang/String;

    .line 95
    const-string v0, "@smartRedirect@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setSmartRedirect(Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v0, "@trackingClickUrl@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setTrackingClickUrl(Ljava/lang/String;)V

    .line 106
    :cond_1
    const-string v0, "@tracking@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setTrackingUrls(Ljava/lang/String;)V

    .line 112
    :cond_2
    const-string v0, "@packageName@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setPackageNames(Ljava/lang/String;)V

    .line 118
    :cond_3
    const-string v0, "@orientation@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    invoke-static {v0}, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)V

    .line 124
    :cond_4
    const-string v0, "@adInfoEnable@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setAdInfoEnableOverride(Ljava/lang/String;)V

    .line 130
    :cond_5
    const-string v0, "@adInfoPosition@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/a/d;->setAdInfoPositionOverride(Ljava/lang/String;)V

    .line 135
    :cond_6
    const-string v0, "@videoJson@"

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;->extractMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    new-instance v2, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v2}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    const-class v3, Lcom/startapp/android/publish/video/VideoAdDetails;

    invoke-virtual {v2, v0, v3}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/video/VideoAdDetails;

    iput-object v0, p0, Lcom/startapp/android/publish/a/d;->videoAdDetails:Lcom/startapp/android/publish/video/VideoAdDetails;

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    array-length v0, v0

    iget-object v2, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 142
    const/4 v0, 0x6

    const-string v2, "Error in smartRedirect array in HTML"

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Z

    move v0, v1

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 147
    iget-object v3, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/startapp/android/publish/a/d;->trackingUrls:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 151
    aput-boolean v1, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_9
    iput-object v2, p0, Lcom/startapp/android/publish/a/d;->smartRedirect:[Z

    .line 156
    :cond_a
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/a/d;->setWidth(I)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/a/d;->setHeight(I)V

    .line 70
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/startapp/android/publish/a/d;->width:I

    .line 53
    return-void
.end method
