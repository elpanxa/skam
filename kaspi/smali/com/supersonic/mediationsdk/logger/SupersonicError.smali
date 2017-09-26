.class public Lcom/supersonic/mediationsdk/logger/SupersonicError;
.super Ljava/lang/Object;
.source "SupersonicError.java"


# static fields
.field public static final ERROR_CODE_ADAPTER_INIT_FAILED:I = 0x1fc

.field public static final ERROR_CODE_APP_KEY_INCORRECT:I = 0x1f8

.field public static final ERROR_CODE_APP_KEY_NOT_SET:I = 0x1f7

.field private static final ERROR_CODE_GENERAL:I = 0x1

.field public static final ERROR_CODE_GENERIC:I = 0x1fe

.field public static final ERROR_CODE_INVALID_KEY_VALUE:I = 0x1fa

.field public static final ERROR_CODE_KEY_NOT_SET_FOR_PROVIDER:I = 0x1f9

.field public static final ERROR_CODE_NO_CONFIGURATION_AVAILABLE:I = 0x1f5

.field public static final ERROR_CODE_SHOW_VIDEO_FAILED:I = 0x1fd

.field public static final ERROR_CODE_UNSUPPORTED_SDK_VERSION:I = 0x1fb

.field public static final ERROR_CODE_USING_CACHED_CONFIGURATION:I = 0x1f6


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorCode:I

    .line 33
    if-nez p2, :cond_0

    .line 34
    const-string p2, ""

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorMsg:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
