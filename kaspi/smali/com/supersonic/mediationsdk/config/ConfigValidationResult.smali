.class public Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
.super Ljava/lang/Object;
.source "ConfigValidationResult.java"


# instance fields
.field private mIsValid:Z

.field private mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .line 17
    return-void
.end method


# virtual methods
.method public getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    return v0
.end method

.method public setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 22
    iput-object p1, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .line 23
    return-void
.end method

.method public setValid()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SupersonicError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->mSupersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
