.class public final enum Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;
.super Ljava/lang/Enum;
.source "Imoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

.field public static final enum ImageSize320:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

.field public static final enum ImageSize512:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

.field public static final enum ImageSizeFullResolution:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

.field public static final enum ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    const-string v1, "ImageSizeThumbnail"

    invoke-direct {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    .line 32
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    const-string v1, "ImageSizeFullResolution"

    invoke-direct {v0, v1, v3}, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeFullResolution:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    .line 37
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    const-string v1, "ImageSize320"

    invoke-direct {v0, v1, v4}, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSize320:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    .line 41
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    const-string v1, "ImageSize512"

    invoke-direct {v0, v1, v5}, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSize512:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeFullResolution:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSize320:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSize512:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->$VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->$VALUES:[Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {v0}, [Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    return-object v0
.end method
