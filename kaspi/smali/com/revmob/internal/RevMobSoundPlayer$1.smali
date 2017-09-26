.class Lcom/revmob/internal/RevMobSoundPlayer$1;
.super Ljava/lang/Object;
.source "RevMobSoundPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/RevMobSoundPlayer;->onTaskComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/RevMobSoundPlayer;


# direct methods
.method constructor <init>(Lcom/revmob/internal/RevMobSoundPlayer;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/revmob/internal/RevMobSoundPlayer$1;->this$0:Lcom/revmob/internal/RevMobSoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer$1;->this$0:Lcom/revmob/internal/RevMobSoundPlayer;

    # getter for: Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/revmob/internal/RevMobSoundPlayer;->access$000(Lcom/revmob/internal/RevMobSoundPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 43
    return-void
.end method
