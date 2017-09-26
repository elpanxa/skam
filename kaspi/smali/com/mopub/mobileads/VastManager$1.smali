.class Lcom/mopub/mobileads/VastManager$1;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastManager;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastManager;

.field final synthetic val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    iput-object p2, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    # invokes: Lcom/mopub/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z
    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastManager;->access$000(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    # getter for: Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;
    invoke-static {v0}, Lcom/mopub/mobileads/VastManager;->access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "Failed to download VAST video."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    # getter for: Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;
    invoke-static {v0}, Lcom/mopub/mobileads/VastManager;->access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0
.end method
