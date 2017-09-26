.class Lcom/avocarrot/androidsdk/InstreamDynamicView$1;
.super Ljava/lang/Object;
.source "InstreamView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/InstreamDynamicView;->onBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/InstreamDynamicView;

.field final synthetic val$model:Lcom/avocarrot/androidsdk/BaseModel;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/InstreamDynamicView;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->this$0:Lcom/avocarrot/androidsdk/InstreamDynamicView;

    iput-object p2, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->val$model:Lcom/avocarrot/androidsdk/BaseModel;

    iput-object p3, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->this$0:Lcom/avocarrot/androidsdk/InstreamDynamicView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->val$model:Lcom/avocarrot/androidsdk/BaseModel;

    iget-object v2, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->handleClickOnAdView(Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)Z

    .line 91
    return-void
.end method
