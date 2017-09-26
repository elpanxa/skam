.class Lcom/revmob/ads/fullscreen/RevMobVideo$11;
.super Ljava/lang/Thread;
.source "RevMobVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 754
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getTrackingEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getTrackingEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 756
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->val$event:Ljava/lang/String;

    if-ne v1, v4, :cond_1

    .line 757
    new-instance v6, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v6}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    move v4, v5

    .line 758
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 759
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    iget-object v7, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-wide v8, v7, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 761
    const-string v7, "&videoPosition="

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    const-string v7, "%.2f"

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-wide v10, v9, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 763
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    :cond_0
    iget-object v7, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v7, v7, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-static {v7}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/revmob/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 758
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 754
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 770
    :cond_2
    return-void
.end method
