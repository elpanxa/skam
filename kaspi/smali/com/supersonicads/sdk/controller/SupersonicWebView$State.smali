.class public final enum Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
.super Ljava/lang/Enum;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/supersonicads/sdk/controller/SupersonicWebView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

.field public static final enum Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

.field public static final enum Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3498
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    const-string v1, "Display"

    invoke-direct {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .line 3499
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    const-string v1, "Gone"

    invoke-direct {v0, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .line 3497
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->$VALUES:[Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

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
    .line 3497
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 3497
    const-class v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method public static values()[Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 3497
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->$VALUES:[Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0}, [Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method
