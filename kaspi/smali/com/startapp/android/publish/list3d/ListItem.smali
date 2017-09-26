.class public Lcom/startapp/android/publish/list3d/ListItem;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/startapp/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:F

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/startapp/android/publish/list3d/ListItem$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/list3d/ListItem$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/list3d/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    .line 22
    iput-boolean v3, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    .line 23
    iput-object v1, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    if-ne v0, v2, :cond_1

    .line 66
    iput-boolean v2, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    .line 70
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->m:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    .line 73
    return-void

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 68
    :cond_1
    iput-boolean v3, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    goto :goto_1
.end method

.method public constructor <init>(Lcom/startapp/android/publish/model/AdDetails;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    .line 23
    iput-object v1, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getAdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getRating()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    .line 40
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    .line 41
    iput-object v1, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getTemplate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdDetails;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->m:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/ListItem;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/ListItem;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget-boolean v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 157
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return-void

    .line 142
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
