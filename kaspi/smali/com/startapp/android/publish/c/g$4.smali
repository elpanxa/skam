.class Lcom/startapp/android/publish/c/g$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->S()Ljava/lang/Runnable;
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
    .line 575
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$4;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$4;->a:Lcom/startapp/android/publish/c/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Z)V

    .line 579
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$4;->a:Lcom/startapp/android/publish/c/g;

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$4;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoSkippedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Ljava/lang/String;)V

    .line 580
    return-void
.end method
