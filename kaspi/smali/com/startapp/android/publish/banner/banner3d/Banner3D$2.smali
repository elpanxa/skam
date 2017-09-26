.class Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/banner3d/Banner3D;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1600(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->load()V

    .line 254
    :cond_0
    return-void
.end method
