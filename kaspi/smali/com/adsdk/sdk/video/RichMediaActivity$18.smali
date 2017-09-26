.class Lcom/adsdk/sdk/video/RichMediaActivity$18;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;->createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 613
    return-void
.end method

.method public onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public onReady(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    .prologue
    .line 604
    return-void
.end method
