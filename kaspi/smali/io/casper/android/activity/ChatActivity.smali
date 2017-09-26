.class public Lio/casper/android/activity/ChatActivity;
.super Lio/casper/android/activity/a/a;
.source "ChatActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mChatSession:Lio/casper/android/n/b/a;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lio/casper/android/n/a/c/b/f;

.field private mConversationId:Ljava/lang/String;

.field private mConversationUsername:Ljava/lang/String;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mListAdapter:Lio/casper/android/a/a;

.field private mMessageText:Landroid/widget/EditText;

.field private mMessagingAuth:Lio/casper/android/n/a/c/b/r;

.field private mMessagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRecipientSeqNum:J

.field private mRecyclerView:Lio/casper/android/ui/EndlessRecyclerView;

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSeqNum:J

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 41
    iput-wide v0, p0, Lio/casper/android/activity/ChatActivity;->mSeqNum:J

    .line 42
    iput-wide v0, p0, Lio/casper/android/activity/ChatActivity;->mRecipientSeqNum:J

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mChatSession:Lio/casper/android/n/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mChatSession:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->c()Lio/casper/android/n/b/a$a;

    move-result-object v0

    sget-object v1, Lio/casper/android/n/b/a$a;->CONNECTED:Lio/casper/android/n/b/a$a;

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mChatSession:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->b()V

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/casper/android/activity/ChatActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ChatActivity$1;-><init>(Lio/casper/android/activity/ChatActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lio/casper/android/activity/ChatActivity;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->setContentView(I)V

    .line 83
    iput-object p0, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 87
    invoke-virtual {p0}, Lio/casper/android/activity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    .line 90
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->a()Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversationUsername:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversationId:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mConversationUsername:Ljava/lang/String;

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, v4, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 101
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lio/casper/android/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 102
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 104
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mAdManager:Lio/casper/android/l/a;

    .line 106
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 108
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mMessageText:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mSendButton:Landroid/widget/ImageButton;

    .line 110
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 112
    const v0, 0x7f0c0099

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/EndlessRecyclerView;

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mRecyclerView:Lio/casper/android/ui/EndlessRecyclerView;

    .line 113
    new-instance v0, Lio/casper/android/a/a;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ChatActivity;->mListAdapter:Lio/casper/android/a/a;

    .line 114
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mRecyclerView:Lio/casper/android/ui/EndlessRecyclerView;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mListAdapter:Lio/casper/android/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/EndlessRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 117
    invoke-virtual {p0}, Lio/casper/android/activity/ChatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 120
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->s()V

    .line 122
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 187
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CHAT_UNSTABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CHAT_UNSTABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 194
    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 195
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 196
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/ChatActivity;->finish()V

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
