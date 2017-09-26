.class public Lio/casper/android/activity/ConversationActivity;
.super Lio/casper/android/activity/a/a;
.source "ConversationActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lio/casper/android/n/a/c/b/f;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/ConversationActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 48
    :cond_0
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ConversationActivity;->setContentView(I)V

    .line 50
    iput-object p0, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mAdManager:Lio/casper/android/l/a;

    .line 54
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ConversationActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    iget-object v1, p0, Lio/casper/android/activity/ConversationActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 59
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    iput-object v0, p0, Lio/casper/android/activity/ConversationActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    const-string v2, "conversation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lio/casper/android/i/a;

    invoke-direct {v1}, Lio/casper/android/i/a;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Lio/casper/android/i/a;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lio/casper/android/activity/ConversationActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 82
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 83
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 182
    :goto_0
    return v0

    .line 94
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/ConversationActivity;->finish()V

    goto :goto_0

    .line 100
    :sswitch_1
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 102
    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 103
    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 104
    new-instance v2, Lio/casper/android/h/a/a;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2}, Lio/casper/android/h/a/a;->a()V

    goto :goto_0

    .line 118
    :sswitch_2
    iget-object v1, p0, Lio/casper/android/activity/ConversationActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    iget-object v2, p0, Lio/casper/android/activity/ConversationActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    iget-object v3, p0, Lio/casper/android/activity/ConversationActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-static {v2, v3}, Lio/casper/android/util/i;->a(Lio/casper/android/e/b/b;Lio/casper/android/n/a/c/b/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :sswitch_3
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v2, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 128
    const v1, 0x7f070099

    invoke-virtual {p0, v1}, Lio/casper/android/activity/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 129
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 131
    new-instance v2, Lio/casper/android/h/a/a;

    invoke-direct {v2, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2}, Lio/casper/android/h/a/a;->a()V

    .line 133
    new-instance v2, Lio/casper/android/n/a/b/d;

    iget-object v3, p0, Lio/casper/android/activity/ConversationActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lio/casper/android/activity/ConversationActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-direct {v2, v3, v4}, Lio/casper/android/n/a/b/d;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/f;)V

    .line 134
    new-instance v3, Lio/casper/android/activity/ConversationActivity$1;

    invoke-direct {v3, p0, v1, v2}, Lio/casper/android/activity/ConversationActivity$1;-><init>(Lio/casper/android/activity/ConversationActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lio/casper/android/n/a/b/d;)V

    invoke-virtual {v2, v3}, Lio/casper/android/n/a/b/d;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c014f -> :sswitch_2
        0x7f0c0150 -> :sswitch_1
        0x7f0c0151 -> :sswitch_3
    .end sparse-switch
.end method
