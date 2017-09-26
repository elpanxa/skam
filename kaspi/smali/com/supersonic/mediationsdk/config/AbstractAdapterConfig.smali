.class public abstract Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.super Ljava/lang/Object;
.source "AbstractAdapterConfig.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/ConfigValidator;


# instance fields
.field protected final MAX_VIDEOS_KEY:Ljava/lang/String;

.field protected final MAX_VIDEOS_PER_ITERATION_KEY:Ljava/lang/String;

.field protected mJsonSettings:Lorg/json/JSONObject;

.field protected mMandatoryKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOptionalKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "maxVideosPerSession"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->MAX_VIDEOS_KEY:Ljava/lang/String;

    .line 23
    const-string v0, "maxVideosPerIteration"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->MAX_VIDEOS_PER_ITERATION_KEY:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getProviderJsonSettings(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->initializeMandatoryFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->initializeOptionalFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 41
    :cond_1
    return-void
.end method

.method private checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonic/mediationsdk/config/ConfigValidationResult;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 146
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Wrong configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildKeyNotSetForProviderError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 159
    :cond_4
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-direct {p0, v2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMandatoryField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOptionalField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private validateAllFields(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 6

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isMandatoryField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {p0, p1, v0, p2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Invalid configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 208
    :cond_1
    return-void

    .line 191
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {p0, p1, v0, p2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 193
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 196
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 201
    :cond_3
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Unknown key in configuration - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method protected getMaxVideosPerIterationToPresent()I
    .locals 3

    .prologue
    .line 48
    const v0, 0x7fffffff

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "maxVideosPerIteration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "maxVideosPerIteration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxVideosToPresent()I
    .locals 3

    .prologue
    .line 66
    const v0, 0x7fffffff

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "maxVideosPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "maxVideosPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getProviderName()Ljava/lang/String;
.end method

.method protected abstract initializeMandatoryFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract initializeOptionalFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 82
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 88
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 94
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 96
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 100
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid(config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 104
    return-object v0
.end method

.method protected logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method protected validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value should be \'true\'/\'false\'"

    invoke-static {p1, v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 300
    :cond_0
    return-void
.end method

.method protected abstract validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method protected validateMaxVideos(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4

    .prologue
    .line 238
    if-gez p1, :cond_0

    .line 239
    const-string v0, "maxVideos"

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxVideos value should be any integer >= 0, your value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 241
    :cond_0
    return-void
.end method

.method protected validateNonEmptyString(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value is empty"

    invoke-static {p1, v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected abstract validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method public validateOptionalKeys(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":validateOptionalKeys(config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    new-instance v1, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 125
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 127
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":validateOptionalKeys("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method protected validateRewards(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 251
    if-gtz p1, :cond_0

    .line 252
    :try_start_0
    const-string v0, "rewards"

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewards value should be any positive value."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v0, "rewards"

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewards value should be any positive value."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method
