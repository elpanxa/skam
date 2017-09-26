.class final Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialMultiSelectListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;
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
        "Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;
    .locals 1

    .prologue
    .line 197
    new-array v0, p1, [Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState$1;->newArray(I)[Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
