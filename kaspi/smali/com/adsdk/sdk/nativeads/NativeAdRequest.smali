.class public Lcom/adsdk/sdk/nativeads/NativeAdRequest;
.super Ljava/lang/Object;
.source "NativeAdRequest.java"


# static fields
.field private static final IMAGE_TYPES:Ljava/lang/String; = "icon,main"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "native"

.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"

.field private static final RESPONSE_TYPE:Ljava/lang/String; = "json"

.field private static final TEXT_TYPES:Ljava/lang/String; = "headline,description,cta,advertiser,rating"


# instance fields
.field private adDoNotTrack:Z

.field private adTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private androidAdId:Ljava/lang/String;

.field private gender:Lcom/adsdk/sdk/Gender;

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:D

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private request_url:Ljava/lang/String;

.field private userAge:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adDoNotTrack:Z

    .line 27
    iput-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    .line 28
    iput-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    .line 12
    return-void
.end method


# virtual methods
.method public getAdTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAndroidAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/adsdk/sdk/Gender;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "6.0.8"

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const-string v0, ""

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    const-string v0, ""

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAdDoNotTrack()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adDoNotTrack:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAdDoNotTrack(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adDoNotTrack:Z

    .line 126
    return-void
.end method

.method public setAdTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    .line 92
    return-void
.end method

.method public setAndroidAdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    .line 161
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    .line 187
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    .line 153
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    .line 145
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->publisherId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->request_url:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    .line 169
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->request_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 42
    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 44
    const-string v2, "rt"

    const-string v3, "android_app"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    const-string v2, "r_type"

    const-string v3, "native"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    const-string v2, "r_resp"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    const-string v2, "n_img"

    const-string v3, "icon,main"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    const-string v2, "n_txt"

    const-string v3, "headline,description,cta,advertiser,rating"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string v2, ", "

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v3, "n_type"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    :cond_0
    const-string v2, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const-string v2, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    const-string v2, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    const-string v2, "r_random"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    const-string v0, "o_andadvid"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    const-string v2, "o_andadvdnt"

    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adDoNotTrack:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    const-string v0, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "demo.age"

    iget v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "demo.gender"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v2}, Lcom/adsdk/sdk/Gender;->getServerParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const-string v0, ", "

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v2, "demo.keywords"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    :cond_3
    const-string v0, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    const-string v0, "u_br"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 78
    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    .line 79
    const-string v0, "longitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    const-string v0, "latitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 60
    :cond_5
    const-string v0, "0"

    goto :goto_0
.end method
