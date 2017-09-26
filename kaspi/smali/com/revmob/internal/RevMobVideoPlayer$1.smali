.class Lcom/revmob/internal/RevMobVideoPlayer$1;
.super Ljava/lang/Object;
.source "RevMobVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/RevMobVideoPlayer;->onTaskComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/RevMobVideoPlayer;


# direct methods
.method constructor <init>(Lcom/revmob/internal/RevMobVideoPlayer;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/revmob/internal/RevMobVideoPlayer$1;->this$0:Lcom/revmob/internal/RevMobVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer$1;->this$0:Lcom/revmob/internal/RevMobVideoPlayer;

    # getter for: Lcom/revmob/internal/RevMobVideoPlayer;->media:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/revmob/internal/RevMobVideoPlayer;->access$000(Lcom/revmob/internal/RevMobVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 36
    return-void
.end method
