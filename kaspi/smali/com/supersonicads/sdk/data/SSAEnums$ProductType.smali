.class public final enum Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/supersonicads/sdk/data/SSAEnums$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

.field public static final enum BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

.field public static final enum Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

.field public static final enum OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

.field public static final enum OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v1, "BrandConnect"

    invoke-direct {v0, v1, v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .line 26
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v1, "OfferWall"

    invoke-direct {v0, v1, v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .line 27
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v1, "Interstitial"

    invoke-direct {v0, v1, v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .line 28
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v1, "OfferWallCredits"

    invoke-direct {v0, v1, v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->$VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    return-object v0
.end method

.method public static values()[Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->$VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, [Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    return-object v0
.end method
