.class Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field image1200:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1200"
    .end annotation
.end field

.field image150:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "150"
    .end annotation
.end field

.field image320:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "320"
    .end annotation
.end field

.field image512:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "512"
    .end annotation
.end field

.field image960:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "960"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$1;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$1;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image150:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    .line 274
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image320:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    .line 275
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image512:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    .line 276
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image960:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    .line 277
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image1200:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    .line 278
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image150:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image320:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image512:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image960:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 286
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;->image1200:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 287
    return-void
.end method
