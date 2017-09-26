.class public Lcom/revmob/internal/RevMobSoundPlayer;
.super Ljava/lang/Object;
.source "RevMobSoundPlayer.java"

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

.method static synthetic access$000(Lcom/revmob/internal/RevMobSoundPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private playSoundFromUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/revmob/internal/DownloadManager;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/revmob/internal/DownloadManager;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/AsyncTaskCompleteListener;)V

    iput-object v1, p0, Lcom/revmob/internal/RevMobSoundPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    .line 30
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public onTaskComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getIsSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    .line 37
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getFile()Ljava/io/File;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/revmob/internal/RevMobSoundPlayer$1;

    invoke-direct {v2, p0}, Lcom/revmob/internal/RevMobSoundPlayer$1;-><init>(Lcom/revmob/internal/RevMobSoundPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 49
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 50
    iget-object v0, p0, Lcom/revmob/internal/RevMobSoundPlayer;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playBannerSound(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/RevMobSoundPlayer;->playSoundFromUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public playFullscreenSound(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/RevMobSoundPlayer;->playSoundFromUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public playPopupSound(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/RevMobSoundPlayer;->playSoundFromUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    return-void
.end method
