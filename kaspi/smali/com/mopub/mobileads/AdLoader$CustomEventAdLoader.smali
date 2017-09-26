.class Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;
.super Lcom/mopub/mobileads/AdLoader;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomEventAdLoader"
.end annotation


# instance fields
.field private mCustomEventClassName:Ljava/lang/String;

.field private mServerExtras:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/AdViewController;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdLoader;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    .line 45
    iput-object p2, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mCustomEventClassName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mServerExtras:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method getServerExtras()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

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
    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mServerExtras:Ljava/util/Map;

    return-object v0
.end method

.method load()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mWeakAdViewController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdViewController;

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mCustomEventClassName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 59
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mCustomEventClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubView;->loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
