.class Lcom/mopub/mobileads/VastVideoViewController$1;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # invokes: Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # setter for: Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z
    invoke-static {v0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->access$102(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$200(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v2, v0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleClickForResult(Landroid/app/Activity;II)V

    .line 150
    :cond_0
    return v3

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$1;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method
