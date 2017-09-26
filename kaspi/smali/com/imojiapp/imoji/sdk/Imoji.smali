.class public Lcom/imojiapp/imoji/sdk/Imoji;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/Imoji$Image;,
        Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;,
        Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$1;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/Imoji$1;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->tags:Ljava/util/ArrayList;

    .line 75
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Imoji$Image;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Imoji$Image;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/Imoji;->id:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    .line 69
    iput-object p3, p0, Lcom/imojiapp/imoji/sdk/Imoji;->tags:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$2;->$SwitchMap$com$imojiapp$imoji$sdk$Imoji$ImageFormat:[I

    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 169
    :goto_1
    if-eqz v1, :cond_0

    .line 174
    sget-object v2, Lcom/imojiapp/imoji/sdk/Imoji$2;->$SwitchMap$com$imojiapp$imoji$sdk$Imoji$ImageSize:[I

    invoke-virtual {p2}, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move-object v1, v0

    .line 196
    :goto_2
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->url:Ljava/lang/String;

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image;->webp:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image;->png:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    goto :goto_1

    .line 176
    :pswitch_2
    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image150:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    goto :goto_2

    .line 180
    :pswitch_3
    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image1200:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    goto :goto_2

    .line 184
    :pswitch_4
    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image320:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    goto :goto_2

    .line 188
    :pswitch_5
    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image512:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    goto :goto_2

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getImojiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/Imoji;->tags:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {p0, v0, v1}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeFullResolution:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {p0, v0, v1}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebpThumbUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Webp:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {p0, v0, v1}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebpUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Webp:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v1, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeFullResolution:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {p0, v0, v1}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->tags:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
