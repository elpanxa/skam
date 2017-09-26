.class public Lio/casper/android/l/m;
.super Lio/casper/android/l/a/a;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/l/m$a;
    }
.end annotation


# static fields
.field public static final PREFERENCE_LOCATION_LATITUDE:Ljava/lang/String; = "pref_location_latitude"

.field public static final PREFERENCE_LOCATION_LONGITUDE:Ljava/lang/String; = "pref_location_longitude"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private mAndroidLocationManager:Landroid/location/LocationManager;

.field private mGeoFiltersTable:Lio/casper/android/n/c/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lio/casper/android/n/c/a/e;->i()Lio/casper/android/n/c/a/e;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/m;->mGeoFiltersTable:Lio/casper/android/n/c/a/e;

    .line 36
    iget-object v0, p0, Lio/casper/android/l/m;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lio/casper/android/l/m;->mAndroidLocationManager:Landroid/location/LocationManager;

    .line 38
    return-void
.end method

.method static synthetic a(Lio/casper/android/l/m;)Lio/casper/android/n/c/a/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/l/m;->mGeoFiltersTable:Lio/casper/android/n/c/a/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    const-string v0, "pref_location_latitude"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/m;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/l/m$a;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lio/casper/android/n/a/b/k;

    iget-object v1, p0, Lio/casper/android/l/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/n/a/b/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/l/m$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/l/m$1;-><init>(Lio/casper/android/l/m;Lio/casper/android/l/m$a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/k;->a(Lio/casper/android/c/c/a/a;)V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "pref_location_latitude"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    const-string v0, "pref_location_longitude"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/m;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const-string v0, "pref_location_longitude"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
