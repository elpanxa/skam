.class public Lio/casper/android/activity/GoogleLoginActivity;
.super Lio/casper/android/activity/a/a;
.source "GoogleLoginActivity.java"


# static fields
.field public static final CALLBACK_NORMAL:Ljava/lang/String; = "normal"

.field public static final CALLBACK_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/activity/GoogleLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/activity/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lio/casper/android/activity/GoogleLoginActivity;->finish()V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 49
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lio/casper/android/activity/GoogleLoginActivity;->setContentView(I)V

    .line 52
    iput-object p0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 55
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 57
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 59
    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 60
    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 63
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    const v1, 0x7f0c00da

    invoke-virtual {p0, v1}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    const v2, 0x7f0c00d6

    invoke-virtual {p0, v2}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 66
    const v3, 0x7f0c00d7

    invoke-virtual {p0, v3}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 67
    const v4, 0x7f0c00d8

    invoke-virtual {p0, v4}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 69
    const v5, 0x7f0c008b

    invoke-virtual {p0, v5}, Lio/casper/android/activity/GoogleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    iput-object v5, p0, Lio/casper/android/activity/GoogleLoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 70
    iget-object v5, p0, Lio/casper/android/activity/GoogleLoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v5}, Lio/casper/android/activity/GoogleLoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 72
    iget-object v5, p0, Lio/casper/android/activity/GoogleLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v5}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v5

    .line 73
    iget-object v6, p0, Lio/casper/android/activity/GoogleLoginActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v6}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 76
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    const v5, 0x7f07003e

    iget-object v6, p0, Lio/casper/android/activity/GoogleLoginActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v6}, Lio/casper/android/l/p;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lio/casper/android/util/l;->a(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 85
    new-instance v4, Lio/casper/android/activity/GoogleLoginActivity$1;

    invoke-direct {v4, p0}, Lio/casper/android/activity/GoogleLoginActivity$1;-><init>(Lio/casper/android/activity/GoogleLoginActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Lio/casper/android/activity/GoogleLoginActivity$2;

    invoke-direct {v0, p0, v2, v3}, Lio/casper/android/activity/GoogleLoginActivity$2;-><init>(Lio/casper/android/activity/GoogleLoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 188
    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 189
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 190
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 192
    return-void
.end method
