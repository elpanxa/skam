.class public Lcom/startapp/android/publish/model/GetAdRequest;
.super Lcom/startapp/android/publish/model/BaseRequest;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;
    }
.end annotation


# instance fields
.field private adsDisplayed:I

.field private adsNumber:I

.field private advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;

.field private engInclude:Z

.field private gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private offset:I

.field private packageExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private profileId:Ljava/lang/String;

.field private simpleToken:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private testMode:Z

.field private timeSinceSessionStart:J

.field private type:Lcom/startapp/android/publish/Ad$AdType;

.field private videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseRequest;-><init>()V

    .line 29
    iput v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsNumber:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->offset:I

    .line 35
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 36
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 37
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    .line 38
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    .line 41
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->engInclude:Z

    .line 366
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    .line 367
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getSessionStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->timeSinceSessionStart:J

    .line 53
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getNumOfAdsDisplayed()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsDisplayed:I

    .line 54
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->profileId:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public addCategoryExclude(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public fillAdPreferences(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    iput-object p3, p0, Lcom/startapp/android/publish/model/GetAdRequest;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 256
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->e()Lcom/startapp/android/publish/adinformation/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->isSimpleToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iput-object p4, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    .line 261
    :goto_0
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    .line 262
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    .line 263
    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/model/AdPreferences;->getAge(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->age:Ljava/lang/String;

    .line 264
    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/model/AdPreferences;->getGender(Landroid/content/Context;)Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 265
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    .line 266
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->isTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->testMode:Z

    .line 267
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getCategories()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 268
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getCategoriesExclude()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 273
    iget-object v0, p2, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setCountry(Ljava/lang/String;)V

    .line 274
    iget-object v0, p2, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdvertiser(Ljava/lang/String;)V

    .line 275
    iget-object v0, p2, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setTemplate(Ljava/lang/String;)V

    .line 276
    iget-object v0, p2, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setType(Lcom/startapp/android/publish/Ad$AdType;)V

    .line 278
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    if-ne v0, v1, :cond_2

    .line 280
    sget-object v0, Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    .line 296
    :cond_0
    :goto_1
    iget-object v0, p2, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setPackageInclude(Ljava/util/Set;)V

    .line 297
    return-void

    .line 259
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    if-ne v0, v1, :cond_0

    .line 282
    sget-object v0, Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;->FORCED:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    goto :goto_1

    .line 285
    :cond_3
    invoke-static {p1}, Lcom/startapp/android/publish/video/f;->a(Landroid/content/Context;)Lcom/startapp/android/publish/video/f$c;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/f$c;->a:Lcom/startapp/android/publish/video/f$c;

    if-ne v0, v1, :cond_4

    .line 286
    sget-object v0, Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;->ENABLED:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    goto :goto_1

    .line 288
    :cond_4
    sget-object v0, Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    goto :goto_1
.end method

.method public getAdsDisplayed()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsDisplayed:I

    return v0
.end method

.method public getAdsNumber()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsNumber:I

    return v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/startapp/android/publish/SDKAdPreferences$Gender;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNameValueMap()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-super {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    .line 303
    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    :cond_0
    const-string v1, "placement"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 308
    const-string v1, "testMode"

    iget-boolean v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->testMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 309
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 310
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 311
    const-string v1, "gender"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 312
    const-string v1, "age"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->age:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 313
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 314
    const-string v1, "template"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 315
    const-string v1, "adsNumber"

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 316
    const-string v1, "category"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 317
    const-string v1, "categoryExclude"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 318
    const-string v1, "packageExclude"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 319
    const-string v1, "offset"

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 320
    const-string v1, "token"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 321
    const-string v1, "engInclude"

    iget-boolean v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->engInclude:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 322
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->isDisableTwoClicks()Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    const-string v1, "twoClicks"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 326
    :cond_1
    const-string v1, "video"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->videoRequestType:Lcom/startapp/android/publish/model/GetAdRequest$VideoRequestType;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 327
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getType()Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/Ad$AdType;

    if-eq v1, v2, :cond_2

    .line 328
    const-string v1, "type"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->type:Lcom/startapp/android/publish/Ad$AdType;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 332
    :cond_2
    const-string v1, "timeSinceSessionStart"

    iget-wide v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->timeSinceSessionStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 333
    const-string v1, "adsDisplayed"

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsDisplayed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 334
    const-string v1, "profileId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->profileId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 337
    const-string v1, "videoMode"

    const-string v2, "INTERSTITIAL"

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 338
    const-string v1, "downloadingMode"

    const-string v2, "CACHE"

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 345
    const-string v1, "country"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 349
    const-string v1, "advertiserId"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 356
    :cond_4
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getPackageInclude()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 357
    const-string v1, "packageInclude"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/GetAdRequest;->getPackageInclude()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 360
    :cond_5
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->offset:I

    return v0
.end method

.method public getPackageExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getPackageInclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    return-object v0
.end method

.method public getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getTineSinceSessionStart()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->timeSinceSessionStart:J

    return-wide v0
.end method

.method public getType()Lcom/startapp/android/publish/Ad$AdType;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->type:Lcom/startapp/android/publish/Ad$AdType;

    return-object v0
.end method

.method public isEngInclude()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->engInclude:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->testMode:Z

    return v0
.end method

.method public setAdsDisplayed(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsDisplayed:I

    .line 215
    return-void
.end method

.method public setAdsNumber(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsNumber:I

    .line 127
    return-void
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->age:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    .line 135
    return-void
.end method

.method public setCategoriesExclude(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    .line 151
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setEngInclude(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->engInclude:Z

    .line 199
    return-void
.end method

.method public setGender(Lcom/startapp/android/publish/SDKAdPreferences$Gender;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 95
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 86
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    .line 87
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    .line 79
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->offset:I

    .line 183
    return-void
.end method

.method public setPackageExclude(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    .line 167
    return-void
.end method

.method public setPackageInclude(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    .line 175
    return-void
.end method

.method public setPlacement(Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 63
    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->profileId:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setSimpleToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->testMode:Z

    .line 71
    return-void
.end method

.method public setTimeSinceSessionStart(J)V
    .locals 1

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->timeSinceSessionStart:J

    .line 207
    return-void
.end method

.method public setType(Lcom/startapp/android/publish/Ad$AdType;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdRequest;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetAdRequest ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->placement:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", testMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->testMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", gender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", template="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adsNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categoriesExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packageExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packageInclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->packageInclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", simpleToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", engInclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->engInclude:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", advertiserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->type:Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sessionStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->timeSinceSessionStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adsDisplayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->adsDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", profileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/model/GetAdRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
