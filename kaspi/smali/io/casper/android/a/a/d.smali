.class public Lio/casper/android/a/a/d;
.super Lio/casper/android/a/a/a/a;
.source "FriendsAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# static fields
.field private static final TYPE_FRIEND:I = 0x0

.field private static final VIEW_COUNT:I = 0x1


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mFriendHttpCallback:Lio/casper/android/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/c/c/a/a",
            "<",
            "Lio/casper/android/n/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mSnapchatSyncManager:Lio/casper/android/l/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 289
    new-instance v0, Lio/casper/android/a/a/d$4;

    invoke-direct {v0, p0}, Lio/casper/android/a/a/d$4;-><init>(Lio/casper/android/a/a/d;)V

    iput-object v0, p0, Lio/casper/android/a/a/d;->mFriendHttpCallback:Lio/casper/android/c/c/a/a;

    .line 42
    new-instance v0, Lio/casper/android/l/u;

    iget-object v1, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/d;->mSnapchatSyncManager:Lio/casper/android/l/u;

    .line 43
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/d;->mAccountManager:Lio/casper/android/l/s;

    .line 45
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 47
    iget-object v1, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 48
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/d;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 49
    iget-object v0, p0, Lio/casper/android/a/a/d;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 51
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/d;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/a/a/d;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/a/a/d;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/a/a/d;->mFriendHttpCallback:Lio/casper/android/c/c/a/a;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/a/d;)Lio/casper/android/l/u;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/a/a/d;->mSnapchatSyncManager:Lio/casper/android/l/u;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/d;->getItemViewType(I)I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_0

    .line 495
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 437
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/a/a/d;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 438
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 443
    :cond_0
    sget-object v2, Lio/casper/android/a/a/d$5;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 446
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 450
    :pswitch_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 454
    :pswitch_3
    const-wide/16 v0, -0x2

    goto :goto_1

    .line 458
    :pswitch_4
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 463
    :pswitch_5
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 474
    :pswitch_7
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 466
    :pswitch_8
    const-wide/16 v0, -0x4

    goto :goto_1

    .line 470
    :pswitch_9
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 478
    :pswitch_a
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 482
    :pswitch_b
    const-wide/16 v0, -0x8

    goto :goto_1

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 443
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 463
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 330
    iget-object v1, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 331
    iget-object v2, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 333
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/d;->getItemViewType(I)I

    move-result v3

    .line 334
    packed-switch v3, :pswitch_data_0

    .line 425
    :goto_0
    return-object v0

    .line 338
    :pswitch_0
    iget-object v3, p0, Lio/casper/android/a/a/d;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03004f

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 339
    new-instance v3, Lio/casper/android/a/c/d;

    invoke-direct {v3, v0}, Lio/casper/android/a/c/d;-><init>(Landroid/view/View;)V

    .line 341
    iget-object v0, v3, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v0, p0, Lio/casper/android/a/a/d;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 345
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_0
    sget-object v4, Lio/casper/android/a/a/d$5;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v5

    invoke-virtual {v5}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 419
    :goto_1
    iget-object v0, v3, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 359
    :pswitch_2
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 365
    :pswitch_3
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 371
    :pswitch_4
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 378
    :pswitch_5
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto :goto_1

    .line 394
    :pswitch_7
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 381
    :pswitch_8
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 387
    :pswitch_9
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 400
    :pswitch_a
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 406
    :pswitch_b
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, v3, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 378
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lio/casper/android/a/a/d;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    instance-of v0, v0, Lio/casper/android/n/a/c/b/i;

    if-eqz v0, :cond_0

    .line 62
    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/d;->getItemViewType(I)I

    move-result v0

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return-object p2

    .line 81
    :pswitch_0
    if-nez p2, :cond_1

    .line 82
    iget-object v0, p0, Lio/casper/android/a/a/d;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v0, Lio/casper/android/a/c/c;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/c;-><init>(Landroid/view/View;)V

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 89
    :goto_1
    iget-object v0, p0, Lio/casper/android/a/a/d;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 91
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    iget-object v3, v1, Lio/casper/android/a/c/c;->displayText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lio/casper/android/a/c/c;->usernameText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_2
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    iget-object v3, p0, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lio/casper/android/a/c/c;->menuButton:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0011

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 108
    const v4, 0x7f0c0171

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 109
    const v5, 0x7f0c0170

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 110
    const v6, 0x7f0c0172

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 111
    const v7, 0x7f0c0173

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 112
    const v8, 0x7f0c0174

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 113
    const v9, 0x7f0c0175

    invoke-interface {v3, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 114
    const v10, 0x7f0c0176

    invoke-interface {v3, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 116
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 174
    :cond_0
    :goto_3
    :pswitch_1
    new-instance v3, Lio/casper/android/a/a/d$1;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/d$1;-><init>(Lio/casper/android/a/a/d;Lio/casper/android/n/a/c/b/i;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 265
    iget-object v0, v1, Lio/casper/android/a/c/c;->menuButton:Landroid/widget/ImageView;

    new-instance v3, Lio/casper/android/a/a/d$2;

    invoke-direct {v3, p0, v2}, Lio/casper/android/a/a/d$2;-><init>(Lio/casper/android/a/a/d;Landroid/support/v7/widget/PopupMenu;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, v1, Lio/casper/android/a/c/c;->view:Landroid/view/View;

    new-instance v1, Lio/casper/android/a/a/d$3;

    invoke-direct {v1, p0, v2}, Lio/casper/android/a/a/d$3;-><init>(Lio/casper/android/a/a/d;Landroid/support/v7/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/c;

    move-object v1, v0

    goto/16 :goto_1

    .line 98
    :cond_2
    iget-object v4, v1, Lio/casper/android/a/c/c;->displayText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, v1, Lio/casper/android/a/c/c;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v1, Lio/casper/android/a/c/c;->usernameText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 120
    :pswitch_2
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 136
    :pswitch_3
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    const/4 v6, 0x1

    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v6, "INCOMING"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 145
    :cond_3
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->e()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OUTGOING"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    const/4 v3, 0x1

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 159
    :pswitch_4
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
