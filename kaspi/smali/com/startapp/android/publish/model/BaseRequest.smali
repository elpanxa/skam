.class public abstract Lcom/startapp/android/publish/model/BaseRequest;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/model/NameValueSerializer;


# static fields
.field private static final OS:Ljava/lang/String; = "android"


# instance fields
.field private clientSessionId:Ljava/lang/String;

.field private deviceVersion:Ljava/lang/String;

.field private height:I

.field private isp:Ljava/lang/String;

.field private ispName:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private sdkId:I

.field private sdkVersion:Ljava/lang/String;

.field private signalLevel:Ljava/lang/String;

.field private subProductId:Ljava/lang/String;

.field private subPublisherId:Ljava/lang/String;

.field private unknownSourcesAllowed:Ljava/lang/Boolean;

.field private userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/startapp/android/publish/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    .line 48
    const-string v0, "android"

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkId:I

    .line 57
    return-void
.end method

.method private setNetworkType(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Lcom/startapp/android/publish/h/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->networkType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private setSignalLevel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "e106"

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setPublisherId(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setProductId(Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Lcom/startapp/android/publish/h/a;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/a$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setUserAdvertisingId(Lcom/startapp/android/publish/h/a$c;)V

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setPackageId(Ljava/lang/String;)V

    .line 238
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setManufacturer(Ljava/lang/String;)V

    .line 239
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setModel(Ljava/lang/String;)V

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setDeviceVersion(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setLocale(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setWidth(I)V

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setHeight(I)V

    .line 244
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/model/BaseRequest;->setNetworkType(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setSignalLevel(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setSessionId(Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Lcom/startapp/android/publish/h/b;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setUnknownSourcesAllowed(Ljava/lang/Boolean;)V

    .line 256
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/model/BaseRequest;->setIsp(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/model/BaseRequest;->setIspName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->height:I

    return v0
.end method

.method public getIsp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getIspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNameValueMap()Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    const-string v1, "publisherId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 269
    const-string v1, "productId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 270
    const-string v1, "os"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 271
    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 272
    const-string v1, "packageId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 273
    iget-object v1, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "userAdvertisingId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/h/a$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 275
    iget-object v1, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    invoke-virtual {v1}, Lcom/startapp/android/publish/h/a$c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "limat"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/h/a$c;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 280
    :cond_0
    const-string v1, "model"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 281
    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 282
    const-string v1, "deviceVersion"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 283
    const-string v1, "locale"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 284
    const-string v1, "isp"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 285
    const-string v1, "ispName"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 286
    const-string v1, "subPublisherId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 287
    const-string v1, "subProductId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 290
    const-string v1, "grid"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 291
    const-string v1, "silev"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getSignalLevel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 292
    const-string v1, "outsource"

    invoke-virtual {p0}, Lcom/startapp/android/publish/model/BaseRequest;->isUnknownSourcesAllowed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 294
    const-string v1, "width"

    iget v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 295
    const-string v1, "height"

    iget v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->height:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 297
    const-string v1, "sdkId"

    iget v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 299
    const-string v1, "clientSessionId"

    iget-object v2, p0, Lcom/startapp/android/publish/model/BaseRequest;->clientSessionId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 301
    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/16 v6, 0x26

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/NameValueObject;

    .line 315
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 329
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 333
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->clientSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAdvertisingId()Lcom/startapp/android/publish/h/a$c;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->width:I

    return v0
.end method

.method public isUnknownSourcesAllowed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/startapp/android/publish/model/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->height:I

    .line 201
    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIspName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->clientSessionId:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSubProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setSubPublisherId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setUnknownSourcesAllowed(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    .line 225
    return-void
.end method

.method public setUserAdvertisingId(Lcom/startapp/android/publish/h/a$c;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->userAdvertisingId:Lcom/startapp/android/publish/h/a$c;

    .line 117
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/startapp/android/publish/model/BaseRequest;->width:I

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRequest [parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
