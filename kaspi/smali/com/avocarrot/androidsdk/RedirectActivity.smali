.class public Lcom/avocarrot/androidsdk/RedirectActivity;
.super Landroid/app/Activity;
.source "RedirectActivity.java"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "URL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string v0, ""

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectActivity;->finish()V

    .line 34
    :goto_1
    return-void

    .line 26
    :cond_0
    new-instance v1, Lcom/avocarrot/androidsdk/RedirectActivity$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/avocarrot/androidsdk/RedirectActivity$1;-><init>(Lcom/avocarrot/androidsdk/RedirectActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/avocarrot/androidsdk/RedirectActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 19
    :catch_0
    move-exception v1

    goto :goto_0
.end method
