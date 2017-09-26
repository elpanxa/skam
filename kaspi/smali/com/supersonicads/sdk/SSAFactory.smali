.class public Lcom/supersonicads/sdk/SSAFactory;
.super Ljava/lang/Object;
.source "SSAFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertiserInstance()Lcom/supersonicads/sdk/SSAAdvertiser;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getInstance()Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getAdvertiserTestInstance()Lcom/supersonicads/sdk/SSAAdvertiserTest;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getInstance()Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherTestInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherTestInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method
