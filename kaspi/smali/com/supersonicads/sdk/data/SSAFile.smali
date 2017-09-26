.class public Lcom/supersonicads/sdk/data/SSAFile;
.super Lcom/supersonicads/sdk/data/SSAObj;
.source "SSAFile.java"


# instance fields
.field private FILE:Ljava/lang/String;

.field private LAST_UPDATE_TIME:Ljava/lang/String;

.field private PATH:Ljava/lang/String;

.field private mErrMsg:Ljava/lang/String;

.field private mFile:Ljava/lang/String;

.field private mLastUpdateTime:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, "file"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    .line 6
    const-string v0, "path"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    .line 7
    const-string v0, "lastUpdateTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setFile(Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setPath(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setLastUpdateTime(Ljava/lang/String;)V

    .line 28
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>()V

    .line 5
    const-string v0, "file"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    .line 6
    const-string v0, "path"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    .line 7
    const-string v0, "lastUpdateTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/SSAFile;->setFile(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p2}, Lcom/supersonicads/sdk/data/SSAFile;->setPath(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private setFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAFile;->mFile:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAFile;->mPath:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->mErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->mLastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAFile;->mErrMsg:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAFile;->mLastUpdateTime:Ljava/lang/String;

    .line 61
    return-void
.end method
