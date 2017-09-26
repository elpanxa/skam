.class abstract Lcom/mopub/mobileads/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;
    }
.end annotation


# instance fields
.field mWeakAdViewController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/AdViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdLoader;->mWeakAdViewController:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method

.method static fromAdResponse(Lcom/mopub/network/AdResponse;Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/AdLoader;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    const-string v0, "Performing custom event."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v2

    .line 30
    new-instance v0, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;

    invoke-direct {v0, p1, v1, v2}, Lcom/mopub/mobileads/AdLoader$CustomEventAdLoader;-><init>(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "Failed to create custom event."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract load()V
.end method
