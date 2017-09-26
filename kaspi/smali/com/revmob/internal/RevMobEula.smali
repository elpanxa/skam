.class public Lcom/revmob/internal/RevMobEula;
.super Ljava/lang/Object;
.source "RevMobEula.java"

# interfaces
.implements Lcom/revmob/internal/AsyncTaskCompleteListener;


# instance fields
.field private EULA_PREFIX:Ljava/lang/String;

.field private dialog:Landroid/content/DialogInterface;

.field private downloader:Lcom/revmob/internal/DownloadManager;

.field private eulaKey:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private message:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private revmobListener:Lcom/revmob/RevMobAdsListener;

.field private wasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "RevMobEula_v"

    iput-object v0, p0, Lcom/revmob/internal/RevMobEula;->EULA_PREFIX:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    .line 31
    return-void
.end method

.method private load()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/revmob/internal/HTTPHelper;->getEulaUrl()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/revmob/internal/DownloadManager;

    iget-object v3, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/revmob/internal/DownloadManager;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/AsyncTaskCompleteListener;)V

    iput-object v2, p0, Lcom/revmob/internal/RevMobEula;->downloader:Lcom/revmob/internal/DownloadManager;

    .line 79
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->downloader:Lcom/revmob/internal/DownloadManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    :cond_0
    return-void
.end method

.method private show()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "RevMob EULA"

    .line 48
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/RevMobEula;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "I agree"

    new-instance v2, Lcom/revmob/internal/RevMobEula$2;

    invoke-direct {v2, p0}, Lcom/revmob/internal/RevMobEula$2;-><init>(Lcom/revmob/internal/RevMobEula;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "I don\'t agree"

    new-instance v2, Lcom/revmob/internal/RevMobEula$1;

    invoke-direct {v2, p0}, Lcom/revmob/internal/RevMobEula$1;-><init>(Lcom/revmob/internal/RevMobEula;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobEula;->dialog:Landroid/content/DialogInterface;

    .line 68
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->dialog:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 70
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaIsShown()V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptAndDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-boolean v0, p0, Lcom/revmob/internal/RevMobEula;->wasDismissed:Z

    if-nez v0, :cond_0

    .line 105
    const-string v0, "Eula accepted and dismissed."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/revmob/internal/RevMobEula;->eulaKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    iput-boolean v2, p0, Lcom/revmob/internal/RevMobEula;->wasDismissed:Z

    .line 111
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaWasAcceptedAndDismissed()V

    .line 114
    :cond_0
    return-void
.end method

.method public loadAndShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/revmob/internal/HTTPHelper;->getShouldShowEula()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-boolean v2, p0, Lcom/revmob/internal/RevMobEula;->wasDismissed:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/revmob/internal/RevMobEula;->EULA_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/revmob/internal/HTTPHelper;->getEulaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobEula;->eulaKey:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobEula;->prefs:Landroid/content/SharedPreferences;

    .line 39
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/revmob/internal/RevMobEula;->eulaKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/revmob/internal/RevMobEula;->load()V

    .line 43
    :cond_0
    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getIsSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->downloader:Lcom/revmob/internal/DownloadManager;

    invoke-virtual {v0}, Lcom/revmob/internal/DownloadManager;->getFile()Ljava/io/File;

    move-result-object v0

    .line 88
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 91
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 92
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobEula;->message:Ljava/lang/String;

    .line 95
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 96
    invoke-direct {p0}, Lcom/revmob/internal/RevMobEula;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/revmob/internal/RevMobEula;->wasDismissed:Z

    if-nez v0, :cond_1

    .line 118
    const-string v0, "Eula rejected."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/RevMobEula;->wasDismissed:Z

    .line 120
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->revmobListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaWasRejected()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 123
    iget-object v0, p0, Lcom/revmob/internal/RevMobEula;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 124
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 126
    :cond_1
    return-void
.end method
