.class Lcom/adsdk/sdk/video/MediaController$ResourceHandler;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceHandler"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adsdk/sdk/video/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->mController:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/MediaController;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    # invokes: Lcom/adsdk/sdk/video/MediaController;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/MediaController;->access$0(Lcom/adsdk/sdk/video/MediaController;Landroid/os/Message;)V

    .line 129
    :cond_0
    return-void
.end method
