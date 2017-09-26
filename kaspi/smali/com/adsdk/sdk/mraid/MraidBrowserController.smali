.class Lcom/adsdk/sdk/mraid/MraidBrowserController;
.super Lcom/adsdk/sdk/mraid/MraidAbstractController;
.source "MraidBrowserController.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidBrowserController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidAbstractController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 47
    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowserController;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private canHandleApplicationUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowserController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adsdk/sdk/mraid/Utils;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not handle application specific action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    const-string v2, "You may be running in the emulator or another device which does not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    const-string v2, "have the required application."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v0, "MoPub"

    if-eqz p3, :cond_0

    :goto_1
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    const-string p3, "Unable to start intent."

    goto :goto_1
.end method

.method private isWebSiteUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchApplicationUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    const-string v1, "Unable to open intent."

    .line 91
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected open(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    const-string v0, "MraidBrowserController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;->onOpen(Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->isWebSiteUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->canHandleApplicationUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->launchApplicationUrl(Ljava/lang/String;)Z

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowserController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowserController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
