.class Lcom/revmob/ads/fullscreen/RevMobVideo$12;
.super Ljava/lang/Thread;
.source "RevMobVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->getEvent(Ljava/lang/String;)V
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
    .line 776
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 779
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getGettingEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 780
    if-lez v5, :cond_1

    move v3, v4

    .line 781
    :goto_0
    if-ge v3, v5, :cond_1

    .line 782
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getGettingEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 783
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;->val$event:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 784
    new-instance v6, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v6}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    .line 785
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 786
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 787
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/revmob/internal/HTTPHelper;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 786
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 781
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 793
    :cond_1
    return-void
.end method
