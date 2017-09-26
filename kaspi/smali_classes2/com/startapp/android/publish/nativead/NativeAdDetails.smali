.class public Lcom/startapp/android/publish/nativead/NativeAdDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/startapp/android/publish/h/f$a;
.implements Lcom/startapp/android/publish/nativead/NativeAdInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/nativead/NativeAdDetails$3;,
        Lcom/startapp/android/publish/nativead/NativeAdDetails$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/startapp/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/startapp/android/publish/model/AdDetails;

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Lcom/startapp/android/publish/nativead/NativeAdDetails$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/startapp/android/publish/nativead/NativeAdDetails$2;

    invoke-direct {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails$2;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    if-ne v0, v1, :cond_0

    .line 276
    const-class v0, Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    if-ne v0, v1, :cond_1

    .line 280
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a(Landroid/graphics/Bitmap;)V

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    iput-boolean v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    .line 284
    if-ne v0, v1, :cond_2

    .line 285
    iput-boolean v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    .line 288
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/model/AdDetails;Lcom/startapp/android/publish/nativead/NativeAdPreferences;ILcom/startapp/android/publish/nativead/NativeAdDetails$a;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    .line 47
    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializiang SingleAd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    .line 49
    iput p3, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    .line 50
    iput-object p4, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->e:Lcom/startapp/android/publish/nativead/NativeAdDetails$a;

    .line 52
    invoke-virtual {p2}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/startapp/android/publish/h/f;

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/startapp/android/publish/h/f;-><init>(Ljava/lang/String;Lcom/startapp/android/publish/h/f$a;I)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/h/f;->a()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/startapp/android/publish/nativead/NativeAdDetails;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->c:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/nativead/NativeAdDetails;)Lcom/startapp/android/publish/nativead/NativeAdDetails$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->e:Lcom/startapp/android/publish/nativead/NativeAdDetails$a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v1, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails$1;-><init>(Lcom/startapp/android/publish/nativead/NativeAdDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method


# virtual methods
.method protected a()Lcom/startapp/android/publish/model/AdDetails;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-direct {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b()V

    .line 87
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getCampaignAction()Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;->b:Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;

    .line 180
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->isCPE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    sget-object v0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;

    .line 186
    :cond_0
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    const-string v0, ""

    .line 162
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string v0, ""

    .line 121
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const-string v0, "http://www.dummy.com"

    .line 139
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    const-string v0, ""

    .line 153
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public getPackacgeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    const-string v0, ""

    .line 171
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    return-object v0
.end method

.method public getRating()F
    .locals 2

    .prologue
    .line 129
    const/high16 v0, 0x40a00000    # 5.0f

    .line 130
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getRating()F

    move-result v0

    .line 133
    :cond_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const-string v0, ""

    .line 112
    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public sendClick(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 197
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/startapp/android/publish/nativead/NativeAdDetails$3;->a:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/startapp/android/publish/h/s;

    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getSmartRedirectTimeout()J

    move-result-wide v6

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;J)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/h/s;

    iget-object v3, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapp/android/publish/h/s;

    iget-object v4, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/h/s;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendImpression(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 215
    iget-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    if-nez v0, :cond_1

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    .line 217
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Impression for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/h/s;

    iget-object v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already sent impression for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Title: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Description: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]...\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Rating: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Installs: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Category: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         PackageName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         CampaginAction: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/android/publish/nativead/StartAppNativeAd$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    if-eqz v0, :cond_4

    move v0, v1

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 250
    :goto_1
    iget-boolean v4, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->d:Z

    if-eqz v4, :cond_0

    move v2, v1

    .line 255
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    if-ne v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->a:Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 259
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    if-ne v3, v1, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 263
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return-void

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method
