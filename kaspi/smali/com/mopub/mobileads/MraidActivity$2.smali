.class Lcom/mopub/mobileads/MraidActivity$2;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    # getter for: Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 126
    return-void
.end method

.method public onExpand()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onFailedToLoad()V
    .locals 4

    .prologue
    .line 117
    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 121
    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    # getter for: Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onOpen()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 137
    return-void
.end method
