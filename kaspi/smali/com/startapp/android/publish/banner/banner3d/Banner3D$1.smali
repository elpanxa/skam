.class Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/banner3d/Banner3D;
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
    .line 109
    iput-object p1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->loaded:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$000(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->visible:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$200(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I
    invoke-static {v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$300(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;

    .line 119
    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$400(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    new-instance v2, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    sget-object v3, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v4, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getAdTag()Ljava/lang/String;
    invoke-static {v4}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->addAdDisplayEvent(Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;)V

    .line 122
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # setter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->adDisplayEventRecorded:Z
    invoke-static {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$402(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotationEnabled:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$600(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->b()I

    move-result v3

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$800(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$900(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/BannerOptions;->p()I

    move-result v0

    :goto_1
    mul-int/2addr v0, v3

    int-to-float v0, v0

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotate(F)V
    invoke-static {v2, v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1000(Lcom/startapp/android/publish/banner/banner3d/Banner3D;F)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)F

    move-result v0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->b()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotation:F
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1100(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)F

    move-result v0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1200(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # getter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1300(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/BannerOptions;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # setter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z
    invoke-static {v0, v5}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1402(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getNextBannerIndex()I
    invoke-static {v0}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1500(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # setter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->firstRotation:Z
    invoke-static {v0, v5}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1202(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 128
    goto :goto_1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    iget-object v2, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # invokes: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    invoke-static {v2}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/startapp/android/publish/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iget-object v0, p0, Lcom/startapp/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/banner/banner3d/Banner3D;

    # setter for: Lcom/startapp/android/publish/banner/banner3d/Banner3D;->rotating:Z
    invoke-static {v0, v1}, Lcom/startapp/android/publish/banner/banner3d/Banner3D;->access$1402(Lcom/startapp/android/publish/banner/banner3d/Banner3D;Z)Z

    goto :goto_2
.end method
