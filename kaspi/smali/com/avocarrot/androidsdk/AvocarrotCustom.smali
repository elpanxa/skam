.class public Lcom/avocarrot/androidsdk/AvocarrotCustom;
.super Lcom/avocarrot/androidsdk/BaseController;
.source "AvocarrotCustom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avocarrot/androidsdk/BaseController",
        "<",
        "Lcom/avocarrot/androidsdk/AvocarrotCustomListener;",
        ">;"
    }
.end annotation


# instance fields
.field model2view:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/avocarrot/androidsdk/CustomModel;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->model2view:Ljava/util/WeakHashMap;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->model2view:Ljava/util/WeakHashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public bindView(Lcom/avocarrot/androidsdk/CustomModel;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->model2view:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->bindAdModel2AdView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V

    .line 63
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseController;->clear()V

    .line 80
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->model2view:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 81
    return-void
.end method

.method public handleClick(Lcom/avocarrot/androidsdk/CustomModel;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->model2view:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->handleClickOnAdView(Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)Z

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Ad could not be clicked. Have you invoked bindView with the container view?"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public impressionRegistered(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/avocarrot/androidsdk/BaseController;->impressionRegistered(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V

    .line 75
    return-void
.end method

.method public loadAd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0, v0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->loadAd(IZ)V

    .line 37
    return-void
.end method

.method public loadAds(I)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->loadAd(IZ)V

    .line 33
    return-void
.end method

.method public loadIcon(Lcom/avocarrot/androidsdk/CustomModel;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/CustomModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 58
    return-void
.end method

.method public loadImage(Lcom/avocarrot/androidsdk/CustomModel;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotCustom;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/CustomModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 55
    return-void
.end method

.method onLoadAdDone(Z)V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdDone(Z)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 45
    new-instance v3, Lcom/avocarrot/androidsdk/CustomModel;

    invoke-direct {v3, v0}, Lcom/avocarrot/androidsdk/CustomModel;-><init>(Lcom/avocarrot/androidsdk/BaseModel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotCustomListener;

    .line 49
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/AvocarrotCustomListener;->onAdLoaded(Ljava/util/List;)V

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/avocarrot/androidsdk/BaseController;->setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSandbox(Z)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->setSandbox(Z)V

    return-void
.end method
