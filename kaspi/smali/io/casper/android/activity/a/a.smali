.class public Lio/casper/android/activity/a/a;
.super Landroid/support/v7/app/ActionBarActivity;
.source "CasperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/activity/a/a$a;
    }
.end annotation


# instance fields
.field private mActivityListener:Lio/casper/android/activity/a/a$a;

.field public mContext:Landroid/content/Context;

.field public mSnapchatAccount:Lio/casper/android/e/b/b;

.field public mSnapchatAccountManager:Lio/casper/android/l/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/activity/a/a$a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lio/casper/android/activity/a/a;->mActivityListener:Lio/casper/android/activity/a/a$a;

    .line 81
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 71
    :goto_0
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lio/casper/android/activity/a/a;->finish()V

    .line 75
    :cond_0
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lio/casper/android/activity/a/a;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/activity/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 56
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 58
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 36
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mActivityListener:Lio/casper/android/activity/a/a$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lio/casper/android/activity/a/a;->mActivityListener:Lio/casper/android/activity/a/a$a;

    invoke-interface {v0}, Lio/casper/android/activity/a/a$a;->a()V

    .line 39
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 31
    return-void
.end method
