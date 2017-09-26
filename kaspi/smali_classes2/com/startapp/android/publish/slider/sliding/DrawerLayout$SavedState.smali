.class public Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1298
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1284
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1279
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    .line 1280
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->b:I

    .line 1281
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->c:I

    .line 1285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    .line 1286
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1289
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1279
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    .line 1280
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->b:I

    .line 1281
    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->c:I

    .line 1290
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1294
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1295
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    return-void
.end method
