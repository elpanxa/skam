.class public final enum Lcom/mopub/common/event/BaseEvent$Category;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/event/BaseEvent$Category;

.field public static final enum NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

.field public static final enum REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;


# instance fields
.field private final mCategory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Category;

    const-string v1, "REQUESTS"

    const-string v2, "requests"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/event/BaseEvent$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    .line 86
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Category;

    const-string v1, "NATIVE_VIDEO"

    const-string v2, "native_video"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/event/BaseEvent$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->$VALUES:[Lcom/mopub/common/event/BaseEvent$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$Category;->mCategory:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/mopub/common/event/BaseEvent$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Category;->$VALUES:[Lcom/mopub/common/event/BaseEvent$Category;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Category;->mCategory:Ljava/lang/String;

    return-object v0
.end method
