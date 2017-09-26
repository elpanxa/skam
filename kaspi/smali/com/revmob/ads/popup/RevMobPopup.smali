.class public Lcom/revmob/ads/popup/RevMobPopup;
.super Ljava/lang/Object;
.source "RevMobPopup.java"

# interfaces
.implements Lcom/revmob/ads/internal/Ad;


# instance fields
.field private activity:Landroid/app/Activity;

.field public autoshow:Z

.field private data:Lcom/revmob/ads/popup/client/PopupData;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private state:Lcom/revmob/ads/internal/AdState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->autoshow:Z

    .line 30
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 32
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/popup/RevMobPopup;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/revmob/ads/popup/RevMobPopup;->buildAndDisplayDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/revmob/ads/popup/RevMobPopup;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/revmob/ads/popup/RevMobPopup;->playSoundOnShow()V

    return-void
.end method

.method static synthetic access$202(Lcom/revmob/ads/popup/RevMobPopup;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/revmob/ads/popup/RevMobPopup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/revmob/ads/popup/RevMobPopup;)Lcom/revmob/ads/popup/client/PopupData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/revmob/ads/popup/RevMobPopup;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method private buildAndDisplayDialog()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v1}, Lcom/revmob/ads/popup/client/PopupData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes, sure!"

    new-instance v2, Lcom/revmob/ads/popup/RevMobPopup$3;

    invoke-direct {v2, p0}, Lcom/revmob/ads/popup/RevMobPopup$3;-><init>(Lcom/revmob/ads/popup/RevMobPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No, thanks."

    new-instance v2, Lcom/revmob/ads/popup/RevMobPopup$2;

    invoke-direct {v2, p0}, Lcom/revmob/ads/popup/RevMobPopup$2;-><init>(Lcom/revmob/ads/popup/RevMobPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 130
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    .line 133
    :cond_0
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v1}, Lcom/revmob/ads/popup/client/PopupData;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->reportImpression(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v0, "Invalid activity as argument: is there an activity running?"

    .line 137
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isLoaded()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundOnShow()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v0}, Lcom/revmob/ads/popup/client/PopupData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v0}, Lcom/revmob/ads/popup/client/PopupData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/revmob/internal/RevMobSoundPlayer;

    invoke-direct {v0}, Lcom/revmob/internal/RevMobSoundPlayer;-><init>()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v2}, Lcom/revmob/ads/popup/client/PopupData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/RevMobSoundPlayer;->playPopupSound(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->autoshow:Z

    .line 104
    return-void
.end method

.method public load()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/popup/RevMobPopup;->load(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Popup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/ads/popup/client/PopupClientListener;

    iget-object v3, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v2, p0, v3}, Lcom/revmob/ads/popup/client/PopupClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/revmob/client/RevMobClient;->fetchPopup(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 52
    :cond_1
    return-void

    .line 47
    :cond_2
    const-string v0, "Loading Popup"

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->autoshow:Z

    .line 83
    invoke-direct {p0}, Lcom/revmob/ads/popup/RevMobPopup;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_1

    .line 84
    sget-object v0, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    .line 85
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/popup/RevMobPopup$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/popup/RevMobPopup$1;-><init>(Lcom/revmob/ads/popup/RevMobPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    .line 94
    const-string v0, "The ad is not completely loaded yet. As soon as it is loaded, it is going to be displayed automatically."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/AdData;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;

    .line 60
    check-cast p1, Lcom/revmob/ads/popup/client/PopupData;

    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Popup loaded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;

    invoke-virtual {v1}, Lcom/revmob/ads/popup/client/PopupData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/revmob/ads/popup/RevMobPopup;->autoshow:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/revmob/ads/popup/RevMobPopup;->show()V

    .line 68
    :cond_1
    return-void
.end method
