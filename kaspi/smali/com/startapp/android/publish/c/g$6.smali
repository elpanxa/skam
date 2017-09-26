.class Lcom/startapp/android/publish/c/g$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 175
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0, p1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 179
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->c(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->d(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->e(Lcom/startapp/android/publish/c/g;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->c(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$6;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->f(Lcom/startapp/android/publish/c/g;)V

    .line 185
    :cond_1
    return-void
.end method
