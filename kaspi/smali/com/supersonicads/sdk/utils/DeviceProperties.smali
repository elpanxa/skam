.class public Lcom/supersonicads/sdk/utils/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# static fields
.field private static mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;


# instance fields
.field private mDeviceCarrier:Ljava/lang/String;

.field private mDeviceIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceOem:Ljava/lang/String;

.field private mDeviceOsType:Ljava/lang/String;

.field private mDeviceOsVersion:I

.field private final mSupersonicSdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "5.18"

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mSupersonicSdkVersion:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/supersonicads/sdk/utils/DeviceProperties;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/utils/DeviceProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    .line 33
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    .line 43
    const-string v0, "android"

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsVersion:I

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceIds:Ljava/util/Map;

    .line 48
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    .line 94
    return-void
.end method


# virtual methods
.method public getDeviceCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceIds:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsVersion:I

    return v0
.end method

.method public getSupersonicSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "5.18"

    return-object v0
.end method
