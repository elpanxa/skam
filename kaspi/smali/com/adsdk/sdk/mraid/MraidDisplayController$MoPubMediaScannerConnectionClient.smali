.class Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubMediaScannerConnectionClient"
.end annotation


# instance fields
.field private final mFilename:Ljava/lang/String;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private final mMimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    .line 847
    iput-object p3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    .line 848
    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0, p1, p2, p3}, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V

    return-void
.end method

.method private setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 852
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 866
    :cond_0
    return-void
.end method
