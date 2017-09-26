.class public Lcom/avocarrot/androidsdk/RedirectFragment;
.super Landroid/app/Fragment;
.source "RedirectFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "ArgumentUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/avocarrot/androidsdk/RedirectFragment;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/avocarrot/androidsdk/RedirectFragment;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/RedirectFragment;-><init>()V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string v2, "ArgumentUrl"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/RedirectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method closeMe()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Could not remove RedirectFragment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    const-string v0, ""

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ArgumentUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    new-instance v1, Lcom/avocarrot/androidsdk/RedirectFragment$1;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/avocarrot/androidsdk/RedirectFragment$1;-><init>(Lcom/avocarrot/androidsdk/RedirectFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-object v1

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method
