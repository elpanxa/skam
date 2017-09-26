.class Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/banner3d/Banner3D;
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
            "Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adDisplayEventRecorded:Z

.field public adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

.field public adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

.field public bDefaultLoad:Z

.field public bIsVisible:Z

.field private currentImage:I

.field private details:[Lcom/startapp/android/publish/model/AdDetails;

.field public faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

.field private firstRotation:I

.field public loaded:Z

.field public loading:Z

.field public options:Lcom/startapp/android/publish/banner/BannerOptions;

.field public overrides:Lcom/startapp/android/publish/adinformation/b;

.field private rotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 829
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 832
    if-ne v2, v0, :cond_6

    .line 833
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    .line 838
    const-class v2, Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_0

    .line 840
    array-length v3, v2

    new-array v3, v3, [Lcom/startapp/android/publish/model/AdDetails;

    iput-object v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    .line 841
    iget-object v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 845
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 846
    if-ne v2, v0, :cond_1

    .line 847
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 850
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 851
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 852
    if-ne v2, v0, :cond_2

    .line 853
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 856
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    .line 858
    if-ne v2, v0, :cond_3

    .line 859
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    .line 862
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adDisplayEventRecorded:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 867
    if-lez v2, :cond_5

    .line 868
    new-array v0, v2, [Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    .line 870
    :goto_0
    if-ge v1, v2, :cond_5

    .line 871
    iget-object v3, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    const-class v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    aput-object v0, v3, v1

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adinformation/b;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adinformation/b;

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/BannerOptions;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdPreferences;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 883
    :goto_1
    return-void

    .line 881
    :cond_6
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;)V
    .locals 0

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 790
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentImage()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    return v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    return v0
.end method

.method public isFirstRotation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 809
    iget v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentImage(I)V
    .locals 0

    .prologue
    .line 793
    iput p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    .line 794
    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/startapp/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    .line 819
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 820
    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    aput-object v0, v2, v1

    .line 819
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method public setFirstRotation(Z)V
    .locals 1

    .prologue
    .line 813
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    .line 814
    return-void

    .line 813
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0

    .prologue
    .line 801
    iput p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    .line 802
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 890
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 896
    iget v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 900
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 903
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 909
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 915
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adDisplayEventRecorded:Z

    if-eqz v0, :cond_1

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    :goto_5
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1
    move v1, v2

    .line 917
    goto :goto_4

    .line 926
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adinformation/b;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 927
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 928
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 929
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method
