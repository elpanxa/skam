.class Lcom/mopub/nativeads/NativeClickHandler$2;
.super Ljava/lang/Object;
.source "NativeClickHandler.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeClickHandler;

.field final synthetic val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeSpinningProgressView()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-virtual {v0}, Lcom/mopub/nativeads/SpinningProgressView;->removeFromRoot()Z

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->removeSpinningProgressView()V

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 v1, 0x0

    # setter for: Lcom/mopub/nativeads/NativeClickHandler;->mClickInProgress:Z
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeClickHandler;->access$002(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    .line 140
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->removeSpinningProgressView()V

    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 v1, 0x0

    # setter for: Lcom/mopub/nativeads/NativeClickHandler;->mClickInProgress:Z
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeClickHandler;->access$002(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    .line 133
    return-void
.end method