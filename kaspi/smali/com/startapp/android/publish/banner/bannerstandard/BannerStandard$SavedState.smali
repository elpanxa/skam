.class Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

.field public firstLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->firstLoad:Z

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 356
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 350
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->firstLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 363
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
