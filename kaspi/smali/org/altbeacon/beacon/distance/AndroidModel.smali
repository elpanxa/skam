.class public Lorg/altbeacon/beacon/distance/AndroidModel;
.super Ljava/lang/Object;
.source "AndroidModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidModel"


# instance fields
.field mBuildNumber:Ljava/lang/String;

.field mManufacturer:Ljava/lang/String;

.field mModel:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lorg/altbeacon/beacon/distance/AndroidModel;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 77
    .line 78
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    iget-object v5, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 81
    :goto_0
    if-ne v0, v3, :cond_0

    iget-object v5, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    iget-object v6, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 84
    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v5, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    iget-object v6, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 87
    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v5, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    iget-object v6, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    const/4 v0, 0x4

    .line 90
    :cond_2
    const-string v5, "AndroidModel"

    const-string v6, "Score is %s for %s compared to %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {p0}, Lorg/altbeacon/beacon/distance/AndroidModel;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v5, v6, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return v0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
