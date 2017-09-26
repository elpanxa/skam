.class Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "MraidNativeCommandHandler.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidNativeCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoPubMediaScannerConnectionClient"
.end annotation


# instance fields
.field private final mFilename:Ljava/lang/String;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    .line 581
    iput-object p2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    .line 582
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$1;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V

    return-void
.end method

.method private setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 586
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 600
    :cond_0
    return-void
.end method
