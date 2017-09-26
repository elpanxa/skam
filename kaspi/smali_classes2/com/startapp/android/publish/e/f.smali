.class public Lcom/startapp/android/publish/e/f;
.super Lcom/startapp/android/publish/e/b;
.source "StartAppSDK"


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;ILcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 20
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/e/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;Z)V

    .line 16
    iput v6, p0, Lcom/startapp/android/publish/e/f;->g:I

    .line 21
    iput p3, p0, Lcom/startapp/android/publish/e/f;->g:I

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/b;->a(Ljava/lang/Boolean;)V

    .line 47
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute, result=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/e/f;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    .line 39
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/a/d;->setHtml(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Lcom/startapp/android/publish/model/GetAdRequest;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/e/f;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/d;

    .line 27
    invoke-super {p0}, Lcom/startapp/android/publish/e/b;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/model/GetAdRequest;->setWidth(I)V

    .line 29
    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setHeight(I)V

    .line 30
    iget v0, p0, Lcom/startapp/android/publish/e/f;->g:I

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setOffset(I)V

    .line 31
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    .line 33
    return-object v1
.end method
