.class public Lio/casper/android/activity/SnapchatLoginActivity;
.super Lio/casper/android/activity/a/a;
.source "SnapchatLoginActivity.java"


# static fields
.field private static final GOOGLE_LOGIN:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SnapchatLoginActivity"


# instance fields
.field private mAuthTokenText:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mFriendManager:Lio/casper/android/l/h;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mHavingTroubleText:Landroid/widget/TextView;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mLearnMoreButton:Landroid/widget/Button;

.field private mPasswordText:Landroid/widget/EditText;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPreAuthToken:Ljava/lang/String;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatAccountsTable:Lio/casper/android/e/c/a;

.field private mSnapchatSyncManager:Lio/casper/android/l/u;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUpdateManager:Lio/casper/android/l/x;

.field private mUsernameText:Landroid/widget/EditText;

.field private mVerificationRequired:Z

.field private mZeltaTable:Lio/casper/android/n/c/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mVerificationRequired:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPreAuthToken:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lio/casper/android/activity/SnapchatLoginActivity;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mVerificationRequired:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPreAuthToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/n/c/a/i;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mZeltaTable:Lio/casper/android/n/c/a/i;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUsernameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPasswordText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mAuthTokenText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/i;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/x;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUpdateManager:Lio/casper/android/l/x;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic k(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/u;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatSyncManager:Lio/casper/android/l/u;

    return-object v0
.end method

.method static synthetic l(Lio/casper/android/activity/SnapchatLoginActivity;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mVerificationRequired:Z

    return v0
.end method

.method static synthetic m(Lio/casper/android/activity/SnapchatLoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lio/casper/android/activity/SnapchatLoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPreAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 665
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/GoogleLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    const-string v1, "type"

    const-string v2, "root"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 739
    :goto_0
    return-void

    .line 674
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 675
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 676
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 678
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 681
    new-instance v1, Lio/casper/android/util/a/a;

    new-instance v2, Lio/casper/android/activity/SnapchatLoginActivity$8;

    invoke-direct {v2, p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity$8;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-direct {v1, v2}, Lio/casper/android/util/a/a;-><init>(Ljava/lang/Runnable;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 737
    invoke-virtual {v1, v0}, Lio/casper/android/util/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 437
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 439
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 441
    new-instance v0, Lio/casper/android/n/a/b/a;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lio/casper/android/e/b/b;

    invoke-direct {v2, p1, p2}, Lio/casper/android/e/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/b/a;-><init>(Landroid/content/Context;Lio/casper/android/e/b/b;)V

    .line 442
    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$5;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$5;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/a;->a(Lio/casper/android/c/c/a/a;)V

    .line 501
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 231
    new-instance v0, Lio/casper/android/h/a/a;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {v0, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0}, Lio/casper/android/h/a/a;->a()V

    .line 233
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 235
    new-instance v0, Lio/casper/android/o/i;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    new-instance v5, Lio/casper/android/activity/SnapchatLoginActivity$4;

    invoke-direct {v5, p0, p1, p2}, Lio/casper/android/activity/SnapchatLoginActivity$4;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/casper/android/o/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/i$a;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 430
    invoke-virtual {v0, v1}, Lio/casper/android/o/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 505
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 507
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 509
    const-string v0, "normal"

    const-string v1, "type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const-string v0, "root"

    const-string v1, "type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lio/casper/android/activity/SnapchatLoginActivity;->a()V

    goto :goto_0

    .line 515
    :cond_2
    if-nez p2, :cond_0

    .line 517
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 519
    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 520
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 521
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->setContentView(I)V

    .line 98
    iput-object p0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    .line 101
    invoke-static {}, Lio/casper/android/n/c/a/i;->i()Lio/casper/android/n/c/a/i;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mZeltaTable:Lio/casper/android/n/c/a/i;

    .line 103
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 104
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 105
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    .line 106
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 107
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mFriendManager:Lio/casper/android/l/h;

    .line 108
    new-instance v0, Lio/casper/android/l/x;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUpdateManager:Lio/casper/android/l/x;

    .line 109
    new-instance v0, Lio/casper/android/l/u;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatSyncManager:Lio/casper/android/l/u;

    .line 111
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 113
    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 114
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 115
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 117
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mLearnMoreButton:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContinueButton:Landroid/widget/Button;

    .line 119
    const v0, 0x7f0c00db

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUsernameText:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPasswordText:Landroid/widget/EditText;

    .line 121
    const v0, 0x7f0c00dc

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mAuthTokenText:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mHavingTroubleText:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 125
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 127
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUsernameText:Landroid/widget/EditText;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1}, Lio/casper/android/l/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPasswordText:Landroid/widget/EditText;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1}, Lio/casper/android/l/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUsernameText:Landroid/widget/EditText;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mPasswordText:Landroid/widget/EditText;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mHavingTroubleText:Landroid/widget/TextView;

    const v1, 0x7f07003e

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v2}, Lio/casper/android/l/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/casper/android/util/l;->a(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mLearnMoreButton:Landroid/widget/Button;

    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$1;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$2;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$2;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mUpdateManager:Lio/casper/android/l/x;

    invoke-virtual {v0}, Lio/casper/android/l/x;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Lio/casper/android/c/b/a/b;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/c/b/a/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$3;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/b;->a(Lio/casper/android/c/c/a/a;)V

    .line 226
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 532
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 533
    invoke-virtual {p0}, Lio/casper/android/activity/SnapchatLoginActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 534
    const v2, 0x7f0f0008

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 536
    const v0, 0x7f0c015c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 537
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    return v1

    .line 537
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 563
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 660
    :goto_0
    return v1

    .line 566
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 567
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/casper/android/l/r;->a(Z)V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 573
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/casper/android/l/r;->b(Z)V

    goto :goto_0

    .line 579
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/GoogleLoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    const-string v2, "type"

    const-string v3, "normal"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 586
    :cond_2
    new-instance v0, Lio/casper/android/h/a;

    invoke-direct {v0}, Lio/casper/android/h/a;-><init>()V

    .line 587
    new-instance v2, Lio/casper/android/activity/SnapchatLoginActivity$6;

    invoke-direct {v2, p0}, Lio/casper/android/activity/SnapchatLoginActivity$6;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, p0, v2}, Lio/casper/android/h/a;->a(Landroid/app/Activity;Lio/casper/android/h/a$a;)V

    goto :goto_0

    .line 601
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/UpdatesActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 606
    :pswitch_4
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/a;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 612
    :pswitch_5
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v2, Lio/casper/android/l/l;->ROOT_SNAPCHAT_SESSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 614
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v2, Lio/casper/android/l/l;->ROOT_SNAPCHAT_SESSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    const v2, 0x7f0701bd

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 618
    const v2, 0x7f0700f6

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 619
    const v2, 0x7f070038

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 620
    new-instance v2, Lio/casper/android/activity/SnapchatLoginActivity$7;

    invoke-direct {v2, p0}, Lio/casper/android/activity/SnapchatLoginActivity$7;-><init>(Lio/casper/android/activity/SnapchatLoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 630
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0

    .line 633
    :cond_3
    invoke-virtual {p0}, Lio/casper/android/activity/SnapchatLoginActivity;->a()V

    goto/16 :goto_0

    .line 640
    :pswitch_6
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->j()V

    .line 641
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    goto/16 :goto_0

    .line 646
    :pswitch_7
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 647
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a;->f()V

    .line 648
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 649
    new-instance v0, Lio/casper/android/b/a/g;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/b/a/g;-><init>(Landroid/content/Context;)V

    const-string v2, "Remove All"

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/g;->a(Ljava/lang/String;)Lio/casper/android/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto/16 :goto_0

    .line 654
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v3}, Lio/casper/android/l/p;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    new-instance v0, Lio/casper/android/b/a/h;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/b/a/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v2}, Lio/casper/android/l/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/h;->a(Ljava/lang/String;)Lio/casper/android/b/a/h;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto/16 :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c015c
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 546
    const v0, 0x7f0c015d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 547
    const v1, 0x7f0c015e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 549
    if-eqz v0, :cond_0

    .line 550
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v2}, Lio/casper/android/l/r;->p()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 553
    :cond_0
    if-eqz v1, :cond_1

    .line 554
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->q()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 557
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
