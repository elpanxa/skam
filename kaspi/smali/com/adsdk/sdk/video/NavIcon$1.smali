.class Lcom/adsdk/sdk/video/NavIcon$1;
.super Ljava/lang/Object;
.source "NavIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/NavIcon;->setImageDrawable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/NavIcon;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon$1;->val$url:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/NavIcon$1;)Lcom/adsdk/sdk/video/NavIcon;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/adsdk/sdk/video/NavIcon;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/NavIcon;->access$0(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    # getter for: Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/video/NavIcon;->access$1(Lcom/adsdk/sdk/video/NavIcon;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/adsdk/sdk/video/NavIcon$1$1;

    invoke-direct {v2, p0, v0}, Lcom/adsdk/sdk/video/NavIcon$1$1;-><init>(Lcom/adsdk/sdk/video/NavIcon$1;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_0
    return-void
.end method
