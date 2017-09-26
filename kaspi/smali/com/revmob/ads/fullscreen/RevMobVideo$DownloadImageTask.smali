.class Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "RevMobVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    .line 804
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 807
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 808
    const/4 v0, 0x0

    .line 810
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 811
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 816
    :goto_0
    return-object v0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 799
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 823
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 799
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
