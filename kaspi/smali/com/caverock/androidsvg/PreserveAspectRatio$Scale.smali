.class public final enum Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
.super Ljava/lang/Enum;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/PreserveAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

.field public static final enum Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

.field public static final enum Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    const-string v1, "Meet"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 156
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    const-string v1, "Slice"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    aput-object v1, v0, v3

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method
