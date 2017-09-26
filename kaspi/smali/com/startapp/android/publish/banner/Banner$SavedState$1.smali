.class final Lcom/startapp/android/publish/banner/Banner$SavedState$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/Banner$SavedState;
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
        "Lcom/startapp/android/publish/banner/Banner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/startapp/android/publish/banner/Banner$SavedState;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/startapp/android/publish/banner/Banner$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/startapp/android/publish/banner/Banner$SavedState;-><init>(Landroid/os/Parcel;Lcom/startapp/android/publish/banner/Banner$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/banner/Banner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/startapp/android/publish/banner/Banner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/startapp/android/publish/banner/Banner$SavedState;
    .locals 1

    .prologue
    .line 312
    new-array v0, p1, [Lcom/startapp/android/publish/banner/Banner$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/banner/Banner$SavedState$1;->newArray(I)[Lcom/startapp/android/publish/banner/Banner$SavedState;

    move-result-object v0

    return-object v0
.end method
