.class public Lcom/supersonicads/sdk/data/AdUnitsReady;
.super Lcom/supersonicads/sdk/data/SSAObj;
.source "AdUnitsReady.java"


# static fields
.field private static FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

.field private static NUM_OF_AD_UNITS:Ljava/lang/String;

.field private static PRODUCT_TYPE:Ljava/lang/String;

.field private static TOTAL_NUMBER_CREDITS:Ljava/lang/String;

.field private static TYPE:Ljava/lang/String;


# instance fields
.field private mFirstCampaignCredits:Ljava/lang/String;

.field private mNumOfAdUnits:Ljava/lang/String;

.field private mNumOfAdUnitsExist:Z

.field private mProductType:Ljava/lang/String;

.field private mTotalNumberCredits:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "type"

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    .line 7
    const-string v0, "numOfAdUnits"

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    .line 8
    const-string v0, "firstCampaignCredits"

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    .line 9
    const-string v0, "totalNumberCredits"

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    .line 10
    const-string v0, "productType"

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setType(Ljava/lang/String;)V

    .line 26
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setNumOfAdUnits(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setNumOfAdUnitsExist(Z)V

    .line 33
    :goto_0
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setFirstCampaignCredits(Ljava/lang/String;)V

    .line 37
    :cond_1
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setTotalNumberCredits(Ljava/lang/String;)V

    .line 41
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    sget-object v0, Lcom/supersonicads/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setProductType(Ljava/lang/String;)V

    .line 44
    :cond_3
    return-void

    .line 30
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsReady;->setNumOfAdUnitsExist(Z)V

    goto :goto_0
.end method

.method private setNumOfAdUnitsExist(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mNumOfAdUnitsExist:Z

    .line 80
    return-void
.end method


# virtual methods
.method public getFirstCampaignCredits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mFirstCampaignCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfAdUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mNumOfAdUnits:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mProductType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumberCredits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mTotalNumberCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isNumOfAdUnitsExist()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mNumOfAdUnitsExist:Z

    return v0
.end method

.method public setFirstCampaignCredits(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mFirstCampaignCredits:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setNumOfAdUnits(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mNumOfAdUnits:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mProductType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTotalNumberCredits(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mTotalNumberCredits:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsReady;->mType:Ljava/lang/String;

    .line 52
    return-void
.end method
