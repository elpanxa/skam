.class Lcom/revmob/ads/fullscreen/RevMobVideo$9;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->createReplayButton()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$9;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$9;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 580
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$9;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayVideo()V

    .line 581
    return-void
.end method
