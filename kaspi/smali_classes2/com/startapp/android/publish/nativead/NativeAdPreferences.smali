.class public Lcom/startapp/android/publish/nativead/NativeAdPreferences;
.super Lcom/startapp/android/publish/model/AdPreferences;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;
    }
.end annotation


# static fields
.field private static final DEFAULT_ADS_NUMBER:I = 0x1

.field private static final DEFAULT_AUTO_DOWNLOAD_BITMAP:Z = false

.field private static final DEFAULT_BITMAP_SIZE:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field private static final DEFAULT_USE_SIMPLE_TOKEN:Z = true

.field private static EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsNumber:I

.field private autoBitmapDownload:Z

.field private bitmapSize:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field private useSimpleToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Ads Number must be >= 1"

    sput-object v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE150X150:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    sput-object v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->DEFAULT_BITMAP_SIZE:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    .line 46
    iput v1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    .line 48
    sget-object v0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->DEFAULT_BITMAP_SIZE:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    .line 49
    iput-boolean v1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    return-void
.end method


# virtual methods
.method public getAdsNumber()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    return v0
.end method

.method public getImageSize()Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object v0
.end method

.method public isAutoBitmapDownload()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    return v0
.end method

.method public isSimpleToken()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    return v0
.end method

.method public setAdsNumber(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;
    .locals 2

    .prologue
    .line 56
    if-gtz p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput p1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    .line 61
    return-object p0
.end method

.method public setAutoBitmapDownload(Z)Lcom/startapp/android/publish/nativead/NativeAdPreferences;
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    .line 71
    return-object p0
.end method

.method public setImageSize(Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;)Lcom/startapp/android/publish/nativead/NativeAdPreferences;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    .line 81
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    const-string v1, "\n===== NativeAdConfig =====\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    adsNumber: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    autoBitmapDownload: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    bitmapSize: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    useSimpleToken: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->isSimpleToken()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, "===== End NativeAdConfig ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSimpleToken(Z)Lcom/startapp/android/publish/nativead/NativeAdPreferences;
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    .line 91
    return-object p0
.end method
