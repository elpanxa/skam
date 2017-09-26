.class Lcom/avocarrot/androidsdk/RedirectActivity$1;
.super Lcom/avocarrot/androidsdk/RedirectWebView;
.source "RedirectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/RedirectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/RedirectActivity;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/RedirectActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/avocarrot/androidsdk/RedirectActivity$1;->this$0:Lcom/avocarrot/androidsdk/RedirectActivity;

    invoke-direct {p0, p2, p3}, Lcom/avocarrot/androidsdk/RedirectWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onNeedToClose()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectActivity$1;->this$0:Lcom/avocarrot/androidsdk/RedirectActivity;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/RedirectActivity;->finish()V

    .line 30
    return-void
.end method
