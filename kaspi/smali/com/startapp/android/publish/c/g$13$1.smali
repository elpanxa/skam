.class Lcom/startapp/android/publish/c/g$13$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/startapp/android/publish/c/g$13;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g$13;I)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$13$1;->b:Lcom/startapp/android/publish/c/g$13;

    iput p2, p0, Lcom/startapp/android/publish/c/g$13$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/startapp/android/publish/c/g$13$1;->a:I

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$13$1;->b:Lcom/startapp/android/publish/c/g$13;

    iget-object v1, v1, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->h(Lcom/startapp/android/publish/c/g;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13$1;->b:Lcom/startapp/android/publish/c/g$13;

    iget-object v0, v0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 438
    :cond_0
    return-void
.end method
