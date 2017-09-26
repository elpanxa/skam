.class Lcom/startapp/android/publish/c/g$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$1;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$1;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$1;->a:Lcom/startapp/android/publish/c/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$1;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 159
    return-void
.end method
