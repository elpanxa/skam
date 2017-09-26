.class final Lcom/startapp/android/publish/banner/banner3d/Banner3DFace$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;
    .locals 1

    .prologue
    .line 199
    new-array v0, p1, [Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace$1;->a(Landroid/os/Parcel;)Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace$1;->a(I)[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    move-result-object v0

    return-object v0
.end method
