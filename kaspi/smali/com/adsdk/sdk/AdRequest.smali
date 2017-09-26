.class public Lcom/adsdk/sdk/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"


# instance fields
.field private adDoNotTrack:Z

.field private adspaceHeight:I

.field private adspaceStrict:Z

.field private adspaceWidth:I

.field private androidAdId:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private gender:Lcom/adsdk/sdk/Gender;

.field private headers:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private isVideoRequest:Z

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

.field private listAds:Ljava/lang/String;

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private timestamp:J

.field private userAge:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;

.field private videoMaxDuration:I

.field private videoMinDuration:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    .line 21
    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adDoNotTrack:Z

    .line 10
    return-void
.end method


# virtual methods
.method public getAdspaceHeight()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    return v0
.end method

.method public getAdspaceWidth()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    return v0
.end method

.method public getAndroidAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    const-string v0, ""

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-wide v0
.end method

.method public getListAds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "6.0.8"

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "android_app"

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-wide v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoMaxDuration()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    return v0
.end method

.method public getVideoMinDuration()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    return v0
.end method

.method public hasAdDoNotTrack()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adDoNotTrack:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAdspaceStrict()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    return v0
.end method

.method public isVideoRequest()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    return v0
.end method

.method public setAdDoNotTrack(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdRequest;->adDoNotTrack:Z

    .line 274
    return-void
.end method

.method public setAdspaceHeight(I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    .line 258
    return-void
.end method

.method public setAdspaceStrict(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    .line 242
    return-void
.end method

.method public setAdspaceWidth(I)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    .line 250
    return-void
.end method

.method public setAndroidAdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    .line 302
    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    .line 123
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
    .line 309
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    .line 310
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    .line 127
    return-void
.end method

.method public setListAds(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    .line 135
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    .line 147
    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    .line 306
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 0

    .prologue
    .line 297
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    .line 298
    return-void
.end method

.method public setVideoMinDuration(I)V
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    .line 290
    return-void
.end method

.method public setVideoRequest(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 165
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 166
    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 168
    const-string v0, "rt"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    const-string v0, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    const-string v0, "i"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    const-string v0, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    const-string v0, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    const-string v0, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    const-string v0, "o_andadvid"

    iget-object v3, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    const-string v3, "o_andadvdnt"

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adDoNotTrack:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    const-string v0, "r_random"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    const-string v0, "t"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    const-string v0, "connection_type"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    const-string v0, "listads"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getListAds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    const-string v0, "c_customevents"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    const-string v0, "c.mraid"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    if-eqz v0, :cond_8

    .line 183
    const-string v0, "r_type"

    const-string v2, "video"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    const-string v0, "r_resp"

    const-string v2, "vast20"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "v_dur_max"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "v_dur_min"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    :cond_1
    :goto_1
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "demo.age"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    if-eqz v0, :cond_3

    .line 200
    const-string v0, "demo.gender"

    iget-object v2, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v2}, Lcom/adsdk/sdk/Gender;->getServerParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 204
    const-string v0, ", "

    iget-object v2, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v2, "demo.keywords"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 208
    :cond_4
    const-string v0, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    const-string v0, "u_br"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 210
    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_5

    .line 211
    const-string v0, "longitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    const-string v0, "latitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    :cond_5
    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    if-eqz v0, :cond_6

    .line 216
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    if-eqz v0, :cond_9

    .line 217
    const-string v0, "adspace.strict"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    :goto_2
    const-string v0, "adspace.width"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    const-string v0, "adspace.height"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 225
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 175
    :cond_7
    const-string v0, "0"

    goto/16 :goto_0

    .line 192
    :cond_8
    const-string v0, "r_type"

    const-string v2, "banner"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_1

    .line 219
    :cond_9
    const-string v0, "adspace.strict"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2
.end method
