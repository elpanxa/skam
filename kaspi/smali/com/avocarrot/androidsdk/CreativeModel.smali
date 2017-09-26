.class Lcom/avocarrot/androidsdk/CreativeModel;
.super Ljava/lang/Object;
.source "CreativeModel.java"


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->url:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/avocarrot/androidsdk/CreativeModel;->width:I

    .line 11
    iput v1, p0, Lcom/avocarrot/androidsdk/CreativeModel;->height:I

    .line 14
    if-nez p1, :cond_0

    .line 20
    :goto_0
    return-void

    .line 17
    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->url:Ljava/lang/String;

    .line 18
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->width:I

    .line 19
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->height:I

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->width:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CreativeModel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
