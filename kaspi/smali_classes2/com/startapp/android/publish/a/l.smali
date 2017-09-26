.class public Lcom/startapp/android/publish/a/l;
.super Lcom/startapp/android/publish/a/f;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/f;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/a/l;->adsDetails:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/startapp/android/publish/a/l;->adsDetails:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/a/l;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/startapp/android/publish/a/l;->adsDetails:Ljava/util/List;

    .line 44
    return-void
.end method

.method public load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-super {p0, p1, p2, v0}, Lcom/startapp/android/publish/a/f;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 38
    new-instance v1, Lcom/startapp/android/publish/e/n;

    iget-object v0, p0, Lcom/startapp/android/publish/a/l;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/startapp/android/publish/e/n;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/a/l;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v1}, Lcom/startapp/android/publish/e/n;->c()V

    .line 40
    return-void
.end method
