.class Lcom/adsdk/sdk/video/SDKVideoView$6;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/SDKVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$6;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$6;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p2}, Lcom/adsdk/sdk/video/SDKVideoView;->access$12(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 349
    return-void
.end method
