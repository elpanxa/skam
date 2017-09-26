.class public Lcom/avocarrot/androidsdk/CustomModel;
.super Lcom/avocarrot/androidsdk/BaseModel;
.source "CustomModel.java"


# direct methods
.method public constructor <init>(Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/avocarrot/androidsdk/BaseModel;-><init>(Lcom/avocarrot/androidsdk/BaseModel;)V

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    check-cast p1, Lcom/avocarrot/androidsdk/BaseModel;

    .line 37
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CustomModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getCTAText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClickUrls()Ljava/util/List;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getClickUrls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getDestinationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExtra()Ljava/util/List;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getExtra()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIcon()Lcom/avocarrot/androidsdk/CreativeModel;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CustomModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/CustomModel;->icon:Lcom/avocarrot/androidsdk/CreativeModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImage()Lcom/avocarrot/androidsdk/CreativeModel;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CustomModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/CustomModel;->image:Lcom/avocarrot/androidsdk/CreativeModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getImpressionUrls()Ljava/util/List;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getImpressionUrls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatingImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseModel;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CustomModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
