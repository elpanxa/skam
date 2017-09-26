.class Lcom/avocarrot/androidsdk/BaseAdRequest;
.super Ljava/lang/Object;
.source "BaseAdRequest.java"


# instance fields
.field deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

.field placementName:Ljava/lang/String;

.field preloading:Z

.field requestDynamicLayout:Z

.field slot:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZLcom/avocarrot/androidsdk/DeviceInfo;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->placementName:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->slot:I

    .line 20
    iput-boolean p3, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->preloading:Z

    .line 21
    iput-object p4, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    .line 23
    iget-object v0, p4, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->requestDynamicLayout:Z

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAppJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v1, "bundle"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "version"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    return-object v0
.end method

.method getCarrier()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v1, "carrierName"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "isoCountryCode"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "mobileCountryCode"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "mobileNetworkCode"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    return-object v0
.end method

.method getDeviceJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const-string v1, "dnt"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDnt()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    const-string v1, "ua"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getUA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getGeoJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "carrier"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getCarrier()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "language"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "ifa"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "didsha1"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDigestedAdvertisingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "dpidsha1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "make"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "model"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "platform"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "osv"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "connectiontype"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOpenRTBConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "devicetype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v1, "width"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v1, "height"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getScreenHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    return-object v0
.end method

.method getGeoJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/DeviceInfo;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v2, "lng"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    const-string v2, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method getJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v1, "user"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getUserJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "device"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getDeviceJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "meta"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getMetaJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "placement"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getPlacementJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "preloading"

    iget-boolean v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->preloading:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    const-string v1, "app"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getAppJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    return-object v0
.end method

.method getMetaJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string v1, "sdkVersion"

    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "apiVersion"

    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "sandbox"

    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getInstance()Lcom/avocarrot/androidsdk/Avocarrot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/Avocarrot;->isInSandbox()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    const-string v1, "mediationAdapter"

    invoke-static {}, Lcom/avocarrot/androidsdk/Avocarrot;->getInstance()Lcom/avocarrot/androidsdk/Avocarrot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/Avocarrot;->getMediationAdapter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "configVersion"

    invoke-static {}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    return-object v0
.end method

.method getPlacementJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    const-string v1, "name"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "slots"

    iget v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->slot:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v1, "dynamicLayout"

    iget-boolean v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->requestDynamicLayout:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 94
    return-object v0
.end method

.method getUserJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseAdRequest;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/DeviceInfo;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getGeoJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "yob"

    invoke-static {}, Lcom/avocarrot/androidsdk/AvocarrotUser;->getYearOfBirth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "gender"

    invoke-static {}, Lcom/avocarrot/androidsdk/AvocarrotUser;->getGender()Lcom/avocarrot/androidsdk/AvocarrotUser$Gender;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    return-object v0
.end method
