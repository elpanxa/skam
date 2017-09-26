.class public Lcom/startapp/android/publish/splash/SplashConfig;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/splash/SplashConfig$1;,
        Lcom/startapp/android/publish/splash/SplashConfig$Theme;,
        Lcom/startapp/android/publish/splash/SplashConfig$Orientation;,
        Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;,
        Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_LOAD:J = 0x0L

.field private static final INT_EMPTY_VALUE:I = -0x1

.field private static final STRING_EMPTY_VALUE:Ljava/lang/String; = ""

.field private static final VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field private static final VALUE_DEFAULT_MAXLOAD:J

.field private static final VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

.field private static final VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

.field private static final VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appName:Ljava/lang/String;

.field private customScreen:I

.field private defaultMaxAdDisplayTime:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field private defaultMaxLoadTime:Ljava/lang/Long;

.field private defaultMinSplashTime:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

.field private defaultOrientation:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

.field private defaultTheme:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

.field private transient errMsg:Ljava/lang/String;

.field private transient logo:Landroid/graphics/drawable/Drawable;

.field private logoRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x1d4c

    sput-wide v0, Lcom/startapp/android/publish/splash/SplashConfig;->DEFAULT_MAX_LOAD:J

    .line 26
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$Theme;->OCEAN:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    .line 27
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->REGULAR:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 28
    sget-wide v0, Lcom/startapp/android/publish/splash/SplashConfig;->DEFAULT_MAX_LOAD:J

    sput-wide v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    .line 29
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    .line 30
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->customScreen:I

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    .line 192
    iput v1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logoRes:I

    .line 195
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    .line 196
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 197
    sget-wide v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    .line 198
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    .line 199
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    .line 204
    return-void
.end method

.method private static applyDefaultSplashConfig(Lcom/startapp/android/publish/splash/SplashConfig;)V
    .locals 4

    .prologue
    .line 218
    invoke-static {}, Lcom/startapp/android/publish/splash/SplashConfig;->getDefaultSplashConfig()Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_4

    .line 237
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 239
    :cond_4
    return-void
.end method

.method public static getDefaultSplashConfig()Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/splash/SplashConfig;-><init>()V

    .line 208
    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-wide v2, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    invoke-virtual {v1, v2, v3}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 214
    return-object v0
.end method

.method private setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    .line 274
    return-object p0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomScreen()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->customScreen:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 395
    .line 396
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 411
    invoke-static {p1, p0}, Lcom/startapp/android/publish/splash/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 402
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getCustomScreen()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "StartApp: Can\'t find Custom layout resource"

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :catch_1
    move-exception v0

    .line 406
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "StartApp: Can\'t inflate layout in Custom mode, Are you sure layout resource is valid?"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getLogoResource()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logoRes:I

    return v0
.end method

.method public getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method

.method protected getMaxLoadAdTimeout()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    return-object v0
.end method

.method public getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    return-object v0
.end method

.method protected getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public setCustomScreen(I)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->customScreen:I

    .line 256
    return-object p0
.end method

.method public setDefaults(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 423
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getSplashConfig()Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v0

    .line 424
    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Lcom/startapp/android/publish/splash/SplashConfig;->getDefaultSplashConfig()Lcom/startapp/android/publish/splash/SplashConfig;

    move-result-object v0

    .line 429
    :cond_0
    invoke-static {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->applyDefaultSplashConfig(Lcom/startapp/android/publish/splash/SplashConfig;)V

    .line 431
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    .line 436
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/startapp/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 439
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_3

    .line 440
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_4

    .line 444
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_5

    .line 448
    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 450
    :cond_5
    return-void
.end method

.method public setLogo(I)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->logoRes:I

    .line 268
    return-object p0
.end method

.method public setMaxAdDisplayTime(Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    .line 296
    return-object p0
.end method

.method protected setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 1

    .prologue
    .line 278
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    .line 280
    return-object p0
.end method

.method public setMinSplashTime(Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 291
    return-object p0
.end method

.method public setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    .line 286
    return-object p0
.end method

.method public setTheme(Lcom/startapp/android/publish/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/startapp/android/publish/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    .line 250
    return-object p0
.end method

.method protected validate(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 351
    const/4 v0, 0x1

    .line 352
    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 368
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "Welcome!"

    invoke-static {p1, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getLogoResource()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 386
    :cond_1
    :goto_0
    return v0

    .line 355
    :pswitch_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getCustomScreen()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 356
    const/4 v0, 0x0

    .line 357
    const-string v1, "StartApp: Exception getting custom screen resource id, make sure it is set"

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/SplashConfig;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/splash/SplashConfig;

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
