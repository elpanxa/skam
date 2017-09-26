.class Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fileSize:J

.field height:I

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info$1;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info$1;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->url:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->width:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->height:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->fileSize:J

    .line 244
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-wide v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    return-void
.end method
