.class public final enum Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;
.super Ljava/lang/Enum;
.source "Imoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

.field public static final enum Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

.field public static final enum Webp:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    const-string v1, "Webp"

    invoke-direct {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Webp:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    .line 53
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    const-string v1, "Png"

    invoke-direct {v0, v1, v3}, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Webp:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->$VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->$VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    invoke-virtual {v0}, [Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    return-object v0
.end method
