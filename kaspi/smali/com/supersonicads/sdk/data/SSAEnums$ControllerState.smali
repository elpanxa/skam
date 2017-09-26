.class public final enum Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum FailedToDownload:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum FailedToLoad:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum Loaded:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field public static final enum Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 45
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "FailedToDownload"

    invoke-direct {v0, v1, v4}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->FailedToDownload:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 46
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "FailedToLoad"

    invoke-direct {v0, v1, v5}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->FailedToLoad:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 48
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Loaded"

    invoke-direct {v0, v1, v6}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 49
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v7}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 50
    new-instance v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Failed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->FailedToDownload:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->FailedToLoad:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->$VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method public static values()[Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->$VALUES:[Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v0}, [Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method
