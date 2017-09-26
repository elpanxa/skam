.class Lcom/avocarrot/androidsdk/RedirectFragmentCompat$1;
.super Lcom/avocarrot/androidsdk/RedirectWebView;
.source "RedirectFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/RedirectFragmentCompat;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/RedirectFragmentCompat;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/avocarrot/androidsdk/RedirectFragmentCompat$1;->this$0:Lcom/avocarrot/androidsdk/RedirectFragmentCompat;

    invoke-direct {p0, p2, p3}, Lcom/avocarrot/androidsdk/RedirectWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onNeedToClose()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectFragmentCompat$1;->this$0:Lcom/avocarrot/androidsdk/RedirectFragmentCompat;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->closeMe()V

    .line 43
    return-void
.end method
