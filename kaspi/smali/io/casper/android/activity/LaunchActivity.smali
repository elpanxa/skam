.class public Lio/casper/android/activity/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchActivity"


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mRoutingManager:Lio/casper/android/l/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/LaunchActivity;)Lio/casper/android/l/l;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mLearnManager:Lio/casper/android/l/l;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/LaunchActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-static {p0}, Lio/casper/android/CasperApplication;->a(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lio/casper/android/activity/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lio/casper/android/activity/LaunchActivity;->finish()V

    .line 104
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-static {p0}, Lio/casper/android/CasperApplication;->a(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lio/casper/android/activity/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lio/casper/android/activity/LaunchActivity;->finish()V

    .line 111
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lio/casper/android/activity/LaunchActivity;->b()V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0}, Lio/casper/android/activity/LaunchActivity;->b()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 95
    :cond_2
    invoke-direct {p0}, Lio/casper/android/activity/LaunchActivity;->c()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lio/casper/android/activity/LaunchActivity;->setContentView(I)V

    .line 34
    iput-object p0, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lio/casper/android/b/a/a;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/casper/android/activity/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/a;->a(Landroid/content/Intent;)Lio/casper/android/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 38
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 39
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 40
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mAccountManager:Lio/casper/android/l/s;

    .line 41
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 42
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 44
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0}, Lio/casper/android/l/k;->c()V

    .line 47
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mLearnManager:Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->AGREEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/LaunchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 53
    const v1, 0x7f0700fb

    invoke-virtual {p0, v1}, Lio/casper/android/activity/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/casper/android/activity/LaunchActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v3}, Lio/casper/android/l/p;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 54
    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 55
    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 56
    invoke-virtual {v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 57
    new-instance v1, Lio/casper/android/activity/LaunchActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/LaunchActivity$1;-><init>(Lio/casper/android/activity/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 71
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/LaunchActivity;->a()V

    goto :goto_0
.end method
