.class Lcom/avocarrot/androidsdk/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field private clickUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ctaText:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private destinationUrl:Ljava/lang/String;

.field private extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/ExtraFieldModel;",
            ">;"
        }
    .end annotation
.end field

.field protected icon:Lcom/avocarrot/androidsdk/CreativeModel;

.field private id:Ljava/lang/String;

.field protected image:Lcom/avocarrot/androidsdk/CreativeModel;

.field private impressionUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rating:Ljava/lang/Double;

.field private requestId:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->requestId:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->timestamp:J

    .line 166
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->requestId:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->impressionUrls:Ljava/util/List;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->impressionUrls:Ljava/util/List;

    .line 169
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->clickUrls:Ljava/util/List;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->clickUrls:Ljava/util/List;

    .line 170
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->destinationUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->destinationUrl:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->title:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->description:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->ctaText:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->ctaText:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    .line 175
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    .line 176
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->rating:Ljava/lang/Double;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->rating:Ljava/lang/Double;

    .line 177
    iget-object v0, p1, Lcom/avocarrot/androidsdk/BaseModel;->extra:Ljava/util/List;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->extra:Ljava/util/List;

    .line 178
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->requestId:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->timestamp:J

    .line 32
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/avocarrot/androidsdk/BaseModel;->requestId:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_2
    const-string v0, "headline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->title:Ljava/lang/String;

    .line 44
    const-string v0, "subHeadline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->description:Ljava/lang/String;

    .line 45
    const-string v0, "ctaText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->ctaText:Ljava/lang/String;

    .line 46
    const-string v0, "destinationUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->destinationUrl:Ljava/lang/String;

    .line 47
    const-string v0, "rating"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->rating:Ljava/lang/Double;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->impressionUrls:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->clickUrls:Ljava/util/List;

    .line 50
    const-string v0, "trackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 53
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    .line 54
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    const-string v4, "type"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v5, "impression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 60
    iget-object v4, p0, Lcom/avocarrot/androidsdk/BaseModel;->impressionUrls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_4
    const-string v5, "click"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    iget-object v4, p0, Lcom/avocarrot/androidsdk/BaseModel;->clickUrls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_5
    new-instance v0, Lcom/avocarrot/androidsdk/CreativeModel;

    const-string v1, "image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avocarrot/androidsdk/CreativeModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    .line 70
    new-instance v0, Lcom/avocarrot/androidsdk/CreativeModel;

    const-string v1, "iconImage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avocarrot/androidsdk/CreativeModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    .line 72
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->createList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->extra:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->timestamp:J

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 153
    check-cast p1, Lcom/avocarrot/androidsdk/BaseModel;

    .line 154
    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->ctaText:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrls()Ljava/util/List;
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
    .line 104
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->clickUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->destinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/ExtraFieldModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->extra:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Lcom/avocarrot/androidsdk/CreativeModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/avocarrot/androidsdk/CreativeModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    return-object v0
.end method

.method public getImpressionUrls()Ljava/util/List;
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
    .line 100
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->impressionUrls:Ljava/util/List;

    return-object v0
.end method

.method public getRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->rating:Ljava/lang/Double;

    return-object v0
.end method

.method public getRatingImageUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 127
    const-string v0, "00"

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseModel;->rating:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    const-string v1, "https://s3.amazonaws.com/avocarrot-assets/media/images/ads/ratings/##.png"

    const-string v2, "##"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method hasExpired(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avocarrot/androidsdk/BaseModel;->timestamp:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {p1, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseModel;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CreativeModel;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CreativeModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
