.class public Lio/casper/android/g/b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private mAch:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ach"
    .end annotation
.end field

.field private mAid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aid"
    .end annotation
.end field

.field private mBrand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private mCpuAbi:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpu_abi"
    .end annotation
.end field

.field private mCpuAbi2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpu_abi2"
    .end annotation
.end field

.field private mDih:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dih"
    .end annotation
.end field

.field private mGid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gid"
    .end annotation
.end field

.field private mHasLibHoudini:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_libhoudini"
    .end annotation
.end field

.field private mHasRoot:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_root"
    .end annotation
.end field

.field private mIsEmulator:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_emu"
    .end annotation
.end field

.field private mModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lio/casper/android/util/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/g/b;->mAid:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/g/b;->mGid:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p2}, Lio/casper/android/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/g/b;->mDih:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lio/casper/android/util/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lio/casper/android/g/b;->mAch:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libhoudini.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/g/b;->mHasLibHoudini:Z

    .line 61
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/g/b;->mIsEmulator:Z

    .line 62
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/g/b;->mHasRoot:Z

    .line 64
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/g/b;->mCpuAbi:Ljava/lang/String;

    .line 65
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/g/b;->mCpuAbi2:Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/g/b;->mBrand:Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/g/b;->mModel:Ljava/lang/String;

    .line 69
    return-void

    .line 58
    :cond_0
    const-string v0, "ce"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->getSHA256([B)[B

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ie"

    goto :goto_0
.end method
