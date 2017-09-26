.class public Lcom/avocarrot/androidsdk/RedirectFragmentCompat;
.super Landroid/support/v4/app/Fragment;
.source "RedirectFragmentCompat.java"


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "ArgumentUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/avocarrot/androidsdk/RedirectFragmentCompat;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v2, "ArgumentUrl"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method closeMe()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Could not remove RedirectFragmentCompat"

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
    .line 35
    const-string v0, ""

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ArgumentUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    new-instance v1, Lcom/avocarrot/androidsdk/RedirectFragmentCompat$1;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat$1;-><init>(Lcom/avocarrot/androidsdk/RedirectFragmentCompat;Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-object v1

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method
