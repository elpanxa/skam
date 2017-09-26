.class Lcom/avocarrot/androidsdk/ExtraFieldModel;
.super Ljava/lang/Object;
.source "ExtraFieldModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private type:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->id:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->INVALID:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->type:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->value:Ljava/lang/String;

    .line 20
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->id:Ljava/lang/String;

    .line 25
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->type:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->value:Ljava/lang/String;

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static createList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/ExtraFieldModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 57
    new-instance v3, Lcom/avocarrot/androidsdk/ExtraFieldModel;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/avocarrot/androidsdk/ExtraFieldModel;-><init>(Lorg/json/JSONObject;)V

    .line 58
    invoke-virtual {v3}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->type:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->type:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    sget-object v1, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->INVALID:Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ExtraFieldModel;->id:Ljava/lang/String;

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
