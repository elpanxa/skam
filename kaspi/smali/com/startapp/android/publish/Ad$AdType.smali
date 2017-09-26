.class public final enum Lcom/startapp/android/publish/Ad$AdType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/Ad$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/Ad$AdType;

.field public static final enum INTERSTITIAL:Lcom/startapp/android/publish/Ad$AdType;

.field public static final enum NON_VIDEO:Lcom/startapp/android/publish/Ad$AdType;

.field public static final enum RICH_TEXT:Lcom/startapp/android/publish/Ad$AdType;

.field public static final enum VIDEO:Lcom/startapp/android/publish/Ad$AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/startapp/android/publish/Ad$AdType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/Ad$AdType;->INTERSTITIAL:Lcom/startapp/android/publish/Ad$AdType;

    new-instance v0, Lcom/startapp/android/publish/Ad$AdType;

    const-string v1, "RICH_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/Ad$AdType;->RICH_TEXT:Lcom/startapp/android/publish/Ad$AdType;

    new-instance v0, Lcom/startapp/android/publish/Ad$AdType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    new-instance v0, Lcom/startapp/android/publish/Ad$AdType;

    const-string v1, "NON_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/startapp/android/publish/Ad$AdType;

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->INTERSTITIAL:Lcom/startapp/android/publish/Ad$AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->RICH_TEXT:Lcom/startapp/android/publish/Ad$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/startapp/android/publish/Ad$AdType;->$VALUES:[Lcom/startapp/android/publish/Ad$AdType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/Ad$AdType;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/startapp/android/publish/Ad$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/Ad$AdType;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/Ad$AdType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/startapp/android/publish/Ad$AdType;->$VALUES:[Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/Ad$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/Ad$AdType;

    return-object v0
.end method
