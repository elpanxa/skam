.class Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
.super Ljava/lang/Object;
.source "SupersonicAdsAdvertiserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field private mResponseCode:I

.field private mResponseString:Ljava/lang/String;

.field final synthetic this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 332
    invoke-virtual {p0, p3}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    .line 333
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->mResponseCode:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseCode(I)V
    .locals 0

    .prologue
    .line 339
    iput p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->mResponseCode:I

    .line 340
    return-void
.end method

.method public setResponseString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->mResponseString:Ljava/lang/String;

    .line 346
    return-void
.end method
