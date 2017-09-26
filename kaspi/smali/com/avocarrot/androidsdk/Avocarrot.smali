.class public Lcom/avocarrot/androidsdk/Avocarrot;
.super Ljava/lang/Object;
.source "Avocarrot.java"


# static fields
.field public static final Executor:Ljava/util/concurrent/Executor;

.field static _instance:Lcom/avocarrot/androidsdk/Avocarrot;


# instance fields
.field final DEVICE_ANDROID_VERSION:I

.field final MIN_SDK_SUPPORTED_VERSION:I

.field apiKey:Ljava/lang/String;

.field deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

.field inSandbox:Z

.field mediationAdapter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->Executor:Ljava/util/concurrent/Executor;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->_instance:Lcom/avocarrot/androidsdk/Avocarrot;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->DEVICE_ANDROID_VERSION:I

    .line 22
    iput v1, p0, Lcom/avocarrot/androidsdk/Avocarrot;->MIN_SDK_SUPPORTED_VERSION:I

    .line 24
    iput-object v2, p0, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    .line 26
    iput-object v2, p0, Lcom/avocarrot/androidsdk/Avocarrot;->apiKey:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->mediationAdapter:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->inSandbox:Z

    .line 35
    if-nez p1, :cond_1

    .line 36
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Context not passed"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->DEVICE_ANDROID_VERSION:I

    if-ge v0, v1, :cond_2

    .line 41
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Android SDK version not supported"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->initialize(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/avocarrot/androidsdk/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    goto :goto_0
.end method

.method public static final getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "2.7.0"

    return-object v0
.end method

.method public static getInstance()Lcom/avocarrot/androidsdk/Avocarrot;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->_instance:Lcom/avocarrot/androidsdk/Avocarrot;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/avocarrot/androidsdk/Avocarrot;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->_instance:Lcom/avocarrot/androidsdk/Avocarrot;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/Avocarrot;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->_instance:Lcom/avocarrot/androidsdk/Avocarrot;

    .line 100
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->_instance:Lcom/avocarrot/androidsdk/Avocarrot;

    return-object v0
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "3.5.3"

    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/avocarrot/androidsdk/DeviceInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    return-object v0
.end method

.method public getMediationAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->mediationAdapter:Ljava/lang/String;

    return-object v0
.end method

.method public isInSandbox()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/avocarrot/androidsdk/Avocarrot;->inSandbox:Z

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avocarrot/androidsdk/Avocarrot;->apiKey:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLogger(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->enableWithLevel(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->disable()V

    goto :goto_0
.end method

.method public setMediationAdapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avocarrot/androidsdk/Avocarrot;->mediationAdapter:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSandbox(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/avocarrot/androidsdk/Avocarrot;->inSandbox:Z

    .line 62
    return-void
.end method
