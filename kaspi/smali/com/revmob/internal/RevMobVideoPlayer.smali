.class public Lcom/revmob/internal/RevMobVideoPlayer;
.super Ljava/lang/Object;
.source "RevMobVideoPlayer.java"

# interfaces
.implements Lcom/revmob/internal/AsyncTaskCompleteListener;


# instance fields
.field private downloader:Lcom/revmob/internal/DownloadManager;

.field private media:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/revmob/internal/RevMobVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->media:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private playVideoFromUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 20
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/revmob/internal/DownloadManager;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/revmob/internal/DownloadManager;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/AsyncTaskCompleteListener;)V

    iput-object v1, p0, Lcom/revmob/internal/RevMobVideoPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    .line 22
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public onTaskComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getIsSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->media:Landroid/media/MediaPlayer;

    .line 30
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getFile()Ljava/io/File;

    .line 31
    const-string v0, "onTaskComplete"

    const-string v1, "revmobvideoplayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/revmob/internal/RevMobVideoPlayer;->media:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/revmob/internal/RevMobVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/revmob/internal/RevMobVideoPlayer$1;-><init>(Lcom/revmob/internal/RevMobVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 49
    :cond_0
    return-void
.end method

.method public playFullscreenVideo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/RevMobVideoPlayer;->playVideoFromUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    return-void
.end method
