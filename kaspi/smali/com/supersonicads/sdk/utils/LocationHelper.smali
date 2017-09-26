.class public Lcom/supersonicads/sdk/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 8

    .prologue
    .line 19
    const/4 v2, 0x0

    .line 20
    const-wide/high16 v4, -0x8000000000000000L

    .line 23
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/LocationHelper;->locationPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    return-object v2

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 30
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 36
    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    :goto_1
    move-object v2, v1

    .line 39
    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private static locationPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 51
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 53
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
