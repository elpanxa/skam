.class Lcom/startapp/android/publish/c/g$12;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 347
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->c(Lcom/startapp/android/publish/c/g;I)I

    move-result v0

    .line 348
    if-ltz v0, :cond_1

    iget-boolean v1, p0, Lcom/startapp/android/publish/c/g$12;->b:Z

    if-nez v1, :cond_1

    .line 349
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->k(Lcom/startapp/android/publish/c/g;)I

    move-result v1

    iget-object v2, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v2}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/video/VideoAdDetails;->getSkippableAfter()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    if-lt v1, v2, :cond_3

    .line 350
    :cond_0
    iput-boolean v4, p0, Lcom/startapp/android/publish/c/g$12;->b:Z

    .line 351
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    const-string v1, "videoApi.setSkipTimer"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    div-int/lit16 v0, v0, 0x3e8

    .line 357
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    const-string v2, "videoApi.setVideoCurrentPosition"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->j(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->m(Lcom/startapp/android/publish/c/g;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    :cond_2
    return-void

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$12;->a:Lcom/startapp/android/publish/c/g;

    const-string v2, "videoApi.setSkipTimer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
