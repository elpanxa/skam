.class public abstract Lcom/revmob/client/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# instance fields
.field protected appOrSite:Ljava/lang/String;

.field protected campaignId:Ljava/lang/String;

.field protected clickUrl:Ljava/lang/String;

.field protected followRedirect:Z

.field protected impressionUrl:Ljava/lang/String;

.field protected openInside:Z

.field protected parallaxDelta:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/revmob/client/AdData;->impressionUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/revmob/client/AdData;->followRedirect:Z

    .line 17
    iput-object p4, p0, Lcom/revmob/client/AdData;->appOrSite:Ljava/lang/String;

    .line 18
    iput-boolean p5, p0, Lcom/revmob/client/AdData;->openInside:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getAppOrSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/revmob/client/AdData;->appOrSite:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    const-string v1, "&videoPosition="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/revmob/client/AdData;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/revmob/client/AdData;->impressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenInside()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/revmob/client/AdData;->openInside:Z

    return v0
.end method

.method public shouldFollowRedirect()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/revmob/client/AdData;->followRedirect:Z

    return v0
.end method
