.class public final enum Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/AdDisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotDisplayedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_NOT_READY:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_RULES:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum INTERNAL_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum NETWORK_PROBLEM:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum VIDEO_BACK:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

.field public static final enum VIDEO_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "NETWORK_PROBLEM"

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 14
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_RULES"

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 15
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_NOT_READY"

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 16
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "VIDEO_BACK"

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 17
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "VIDEO_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 18
    new-instance v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->$VALUES:[Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->$VALUES:[Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    return-object v0
.end method
