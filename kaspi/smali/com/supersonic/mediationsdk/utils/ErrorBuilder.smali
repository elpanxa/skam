.class public Lcom/supersonic/mediationsdk/utils/ErrorBuilder;
.super Ljava/lang/Object;
.source "ErrorBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 4

    .prologue
    .line 65
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1fc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static buildAppKeyIncorrectError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1f8

    const-string v2, "Mediation - App key incorrect"

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildAppKeyNotSetError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1f7

    const-string v2, "Mediation - App key wasn\'t set"

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 2

    .prologue
    .line 86
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string p0, "An error occurred"

    .line 89
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1fe

    invoke-direct {v0, v1, p0}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 5

    .prologue
    .line 41
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v2, 0x1fa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediation - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " value is not valid for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static buildKeyNotSetForProviderError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 4

    .prologue
    .line 32
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1f9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static buildNoConfigurationAvailableError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1f5

    const-string v2, "Mediation - Unable to retrieve configurations from Supersonic server"

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 4

    .prologue
    .line 75
    invoke-static {p0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1fd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show video failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static buildUnsupportedSdkVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 4

    .prologue
    .line 52
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    if-nez p0, :cond_1

    .line 56
    const-string p0, ""

    .line 58
    :cond_1
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1fb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediation - Unsupported SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v1, 0x1f6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediation - Unable to retrieve configurations from Supersonic server, using cached configurations with appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static getGenericErrorForMissingParams()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 1

    .prologue
    .line 94
    const-string v0, "Mediation - wrong configuration"

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    return-object v0
.end method
