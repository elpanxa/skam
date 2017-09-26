.class final enum Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
.super Ljava/lang/Enum;
.source "ExtraFieldModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/ExtraFieldModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

.field public static final enum IMAGE:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

.field public static final enum INVALID:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

.field public static final enum TEXT:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->INVALID:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    .line 48
    new-instance v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->TEXT:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    .line 49
    new-instance v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->IMAGE:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    sget-object v1, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->INVALID:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->TEXT:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->IMAGE:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->$VALUES:[Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->$VALUES:[Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    return-object v0
.end method
