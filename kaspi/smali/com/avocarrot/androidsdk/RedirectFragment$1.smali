.class Lcom/avocarrot/androidsdk/RedirectFragment$1;
.super Lcom/avocarrot/androidsdk/RedirectWebView;
.source "RedirectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/RedirectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/RedirectFragment;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/RedirectFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avocarrot/androidsdk/RedirectFragment$1;->this$0:Lcom/avocarrot/androidsdk/RedirectFragment;

    invoke-direct {p0, p2, p3}, Lcom/avocarrot/androidsdk/RedirectWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onNeedToClose()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectFragment$1;->this$0:Lcom/avocarrot/androidsdk/RedirectFragment;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/RedirectFragment;->closeMe()V

    .line 44
    return-void
.end method
