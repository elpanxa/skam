.class public Lio/casper/android/n/a/b/k;
.super Lio/casper/android/n/a/b/a/a;
.source "LocationDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocationManager:Lio/casper/android/l/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lio/casper/android/l/m;

    iget-object v1, p0, Lio/casper/android/n/a/b/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/b/k;->mLocationManager:Lio/casper/android/l/m;

    .line 24
    const-string v0, "checksums_dict"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "lat"

    iget-object v1, p0, Lio/casper/android/n/a/b/k;->mLocationManager:Lio/casper/android/l/m;

    invoke-virtual {v1}, Lio/casper/android/l/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "long"

    iget-object v1, p0, Lio/casper/android/n/a/b/k;->mLocationManager:Lio/casper/android/l/m;

    invoke-virtual {v1}, Lio/casper/android/l/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "loc_accuracy_in_meters"

    const-string v1, "24.0"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "time_zone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "screen_width_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "screen_height_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "screen_width_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "screen_height_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "/loq/loc_data"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Lio/casper/android/n/a/c/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/k;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/n/a/c/h;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
