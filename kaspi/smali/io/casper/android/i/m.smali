.class public Lio/casper/android/i/m;
.super Landroid/support/v4/app/Fragment;
.source "SendFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# instance fields
.field private mAdapter:Lio/casper/android/a/a/f;

.field private mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFilter:Landroid/widget/Filter;

.field private mFriendManager:Lio/casper/android/l/h;

.field private mFriendsTable:Lio/casper/android/n/c/a/d;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private mMediaFile:Ljava/io/File;

.field private mMediaId:Ljava/lang/String;

.field private mMediaManager:Lio/casper/android/l/n;

.field private mMediaTime:I

.field private mMediaType:Ljava/lang/String;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mReciever:Landroid/content/BroadcastReceiver;

.field private mRecipientsText:Landroid/widget/TextView;

.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mThumbnailFile:Ljava/io/File;

.field private mUploaded:Z

.field public refresh:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 89
    new-instance v0, Lio/casper/android/i/m$1;

    invoke-direct {v0, p0}, Lio/casper/android/i/m$1;-><init>(Lio/casper/android/i/m;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mReciever:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Lio/casper/android/i/m$4;

    invoke-direct {v0, p0}, Lio/casper/android/i/m$4;-><init>(Lio/casper/android/i/m;)V

    iput-object v0, p0, Lio/casper/android/i/m;->refresh:Ljava/lang/Runnable;

    .line 110
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lio/casper/android/i/m;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lio/casper/android/i/m;

    invoke-direct {v0}, Lio/casper/android/i/m;-><init>()V

    .line 114
    invoke-virtual {v0, p0}, Lio/casper/android/i/m;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/m;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/m;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/casper/android/i/m;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/i/m;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/i/m$7;

    invoke-direct {v1, p0, p1}, Lio/casper/android/i/m$7;-><init>(Lio/casper/android/i/m;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lio/casper/android/i/m;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/casper/android/i/m;->mUploaded:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/i/m;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mSnapchatAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/m;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/i/m;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/i/m;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lio/casper/android/i/m;->mUploaded:Z

    return v0
.end method

.method static synthetic g(Lio/casper/android/i/m;)Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/i/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/i/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/i/m;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mRecipientsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lio/casper/android/i/m;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mBottomBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lio/casper/android/i/m;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic m(Lio/casper/android/i/m;)Lio/casper/android/n/c/a/d;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    return-object v0
.end method

.method static synthetic n(Lio/casper/android/i/m;)Lio/casper/android/l/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/i/m;->mFriendManager:Lio/casper/android/l/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 371
    iget-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->a()Ljava/util/List;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->b()Z

    move-result v0

    .line 373
    iget-object v2, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    invoke-virtual {v2}, Lio/casper/android/a/a/f;->c()Z

    move-result v2

    .line 375
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 376
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e8

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v3, Lio/casper/android/n/a/b/b/d;

    invoke-direct {v3}, Lio/casper/android/n/a/b/b/d;-><init>()V

    .line 382
    iget-object v4, p0, Lio/casper/android/i/m;->mMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/casper/android/n/a/b/b/d;->a(Ljava/lang/String;)V

    .line 383
    iget-object v4, p0, Lio/casper/android/i/m;->mMediaFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lio/casper/android/n/a/b/b/d;->a(Ljava/io/File;)V

    .line 384
    iget-object v4, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 385
    invoke-virtual {v3, v8}, Lio/casper/android/n/a/b/b/d;->a(I)V

    .line 392
    :cond_1
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d;->e()Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 400
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v6

    if-eq v6, v9, :cond_3

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 401
    :cond_3
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 386
    :cond_4
    iget-object v4, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-virtual {v3, v9}, Lio/casper/android/n/a/b/b/d;->a(I)V

    goto :goto_1

    .line 409
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    iget-object v6, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v6, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_7

    .line 414
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_6

    .line 416
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 418
    :cond_6
    const-string v0, ""

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 422
    :cond_7
    const-string v0, ""

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 427
    :cond_8
    new-instance v0, Lio/casper/android/n/a/b/b/a;

    invoke-direct {v0}, Lio/casper/android/n/a/b/b/a;-><init>()V

    .line 428
    invoke-virtual {v0, v8}, Lio/casper/android/n/a/b/b/a;->b(Z)V

    .line 429
    iget-object v5, p0, Lio/casper/android/i/m;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lio/casper/android/n/a/b/b/a;->b(Ljava/lang/String;)V

    .line 430
    iget v5, p0, Lio/casper/android/i/m;->mMediaTime:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/casper/android/n/a/b/b/a;->a(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/util/List;)V

    .line 432
    invoke-virtual {v0, v4}, Lio/casper/android/n/a/b/b/a;->b(Ljava/util/List;)V

    .line 433
    invoke-virtual {v0, v2}, Lio/casper/android/n/a/b/b/a;->c(Z)V

    .line 435
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    invoke-virtual {v0, v8}, Lio/casper/android/n/a/b/b/a;->a(Z)V

    .line 438
    invoke-virtual {v0, v8}, Lio/casper/android/n/a/b/b/a;->a(I)V

    .line 458
    :cond_9
    :goto_4
    new-instance v1, Lio/casper/android/e/b/a;

    invoke-direct {v1, v3, v0}, Lio/casper/android/e/b/a;-><init>(Lio/casper/android/n/a/b/b/d;Lio/casper/android/n/a/b/b/a;)V

    .line 459
    iget-object v0, p0, Lio/casper/android/i/m;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/b;->b(Lio/casper/android/e/a/d;)J

    move-result-wide v0

    .line 461
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    const-class v4, Lio/casper/android/service/BackgroundUploadIntentService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    const-string v3, "id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 463
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 440
    :cond_a
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 442
    invoke-virtual {v0, v9}, Lio/casper/android/n/a/b/b/a;->a(Z)V

    .line 443
    invoke-virtual {v0, v9}, Lio/casper/android/n/a/b/b/a;->a(I)V

    .line 445
    if-eqz v2, :cond_9

    .line 447
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaManager:Lio/casper/android/l/n;

    iget-object v2, p0, Lio/casper/android/i/m;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/n;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lio/casper/android/i/m;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v2}, Lio/casper/android/l/r;->r()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 449
    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/io/File;)V

    goto :goto_4

    .line 450
    :cond_b
    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 451
    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/io/File;)V

    goto :goto_4
.end method

.method public a(Lio/casper/android/c/c/f/c;Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const v5, 0x7f0701a1

    .line 574
    iget-object v0, p0, Lio/casper/android/i/m;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 576
    new-instance v1, Lio/casper/android/b/a/j;

    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lio/casper/android/b/a/j;-><init>(Landroid/content/Context;)V

    .line 577
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    const-string v0, "Photo"

    invoke-virtual {v1, v0}, Lio/casper/android/b/a/j;->a(Ljava/lang/String;)Lio/casper/android/b/a/j;

    .line 583
    :cond_0
    :goto_0
    const-string v0, ""

    .line 585
    if-eqz p2, :cond_5

    .line 587
    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    .line 589
    const/16 v3, 0x191

    if-eq v2, v3, :cond_1

    const/16 v3, 0x193

    if-ne v2, v3, :cond_3

    .line 590
    :cond_1
    const-string v2, "Logged Out"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/j;->b(Ljava/lang/String;)Lio/casper/android/b/a/j;

    .line 616
    :goto_1
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v2, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 618
    invoke-virtual {v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 619
    const v0, 0x7f070038

    invoke-virtual {v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 620
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 622
    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 624
    return-void

    .line 579
    :cond_2
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "Video"

    invoke-virtual {v1, v0}, Lio/casper/android/b/a/j;->a(Ljava/lang/String;)Lio/casper/android/b/a/j;

    goto :goto_0

    .line 591
    :cond_3
    const/16 v3, 0x19d

    if-ne v2, v3, :cond_4

    .line 593
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {v2, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 595
    iget-object v3, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    const v4, 0x7f070073

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 596
    const v3, 0x7f070044

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 597
    new-instance v3, Lio/casper/android/i/m$6;

    invoke-direct {v3, p0}, Lio/casper/android/i/m$6;-><init>(Lio/casper/android/i/m;)V

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 603
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 605
    const-string v2, "Size Limit Exceeded"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/j;->b(Ljava/lang/String;)Lio/casper/android/b/a/j;

    goto :goto_1

    .line 608
    :cond_4
    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 609
    const-string v2, "Unknown Error"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/j;->b(Ljava/lang/String;)Lio/casper/android/b/a/j;

    goto :goto_1

    .line 613
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    if-eqz p2, :cond_2

    .line 475
    iget-object v0, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d;->e()Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 479
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 480
    :cond_1
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    iget-object v3, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v3, v0}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_4

    .line 493
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_3

    .line 495
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_3
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    :cond_4
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 506
    :cond_5
    new-instance v0, Lio/casper/android/n/a/b/b/a;

    invoke-direct {v0}, Lio/casper/android/n/a/b/b/a;-><init>()V

    .line 507
    invoke-virtual {v0, v5}, Lio/casper/android/n/a/b/b/a;->b(Z)V

    .line 508
    iget-object v2, p0, Lio/casper/android/i/m;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/casper/android/n/a/b/b/a;->b(Ljava/lang/String;)V

    .line 509
    iget v2, p0, Lio/casper/android/i/m;->mMediaTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/casper/android/n/a/b/b/a;->a(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/util/List;)V

    .line 511
    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->b(Ljava/util/List;)V

    .line 512
    invoke-virtual {v0, p3}, Lio/casper/android/n/a/b/b/a;->c(Z)V

    .line 514
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 515
    invoke-virtual {v0, v5}, Lio/casper/android/n/a/b/b/a;->a(Z)V

    .line 516
    invoke-virtual {v0, v5}, Lio/casper/android/n/a/b/b/a;->a(I)V

    .line 536
    :cond_6
    :goto_2
    new-instance v1, Lio/casper/android/n/a/b/p;

    iget-object v2, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lio/casper/android/n/a/b/p;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/a;)V

    .line 537
    new-instance v0, Lio/casper/android/i/m$5;

    invoke-direct {v0, p0, v1}, Lio/casper/android/i/m$5;-><init>(Lio/casper/android/i/m;Lio/casper/android/n/a/b/p;)V

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/b/p;->a(Lio/casper/android/c/c/a/a;)V

    .line 570
    return-void

    .line 518
    :cond_7
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 520
    invoke-virtual {v0, v6}, Lio/casper/android/n/a/b/b/a;->a(Z)V

    .line 521
    invoke-virtual {v0, v6}, Lio/casper/android/n/a/b/b/a;->a(I)V

    .line 523
    if-eqz p3, :cond_6

    .line 525
    iget-object v1, p0, Lio/casper/android/i/m;->mMediaManager:Lio/casper/android/l/n;

    iget-object v2, p0, Lio/casper/android/i/m;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/n;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lio/casper/android/i/m;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v2}, Lio/casper/android/l/r;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 527
    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/io/File;)V

    goto :goto_2

    .line 528
    :cond_8
    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 529
    iget-object v1, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/a;->a(Ljava/io/File;)V

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 638
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 639
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->requestFocus()Z

    .line 641
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/l;->a(Landroid/content/Context;)V

    .line 647
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/m;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 644
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/casper/android/util/l;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-virtual {p0}, Lio/casper/android/i/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mFriendsTable:Lio/casper/android/n/c/a/d;

    .line 126
    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    .line 128
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mFriendManager:Lio/casper/android/l/h;

    .line 129
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 130
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mSettingsManager:Lio/casper/android/l/r;

    .line 131
    iget-object v0, p0, Lio/casper/android/i/m;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 132
    new-instance v0, Lio/casper/android/l/n;

    iget-object v1, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mMediaManager:Lio/casper/android/l/n;

    .line 134
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lio/casper/android/i/m;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    const-string v2, "media_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/casper/android/i/m;->mMediaId:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/io/File;

    const-string v3, "media_file"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lio/casper/android/i/m;->mMediaFile:Ljava/io/File;

    .line 140
    new-instance v2, Ljava/io/File;

    const-string v3, "media_file_thumbnail"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lio/casper/android/i/m;->mThumbnailFile:Ljava/io/File;

    .line 141
    const-string v2, "media_type"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/casper/android/i/m;->mMediaType:Ljava/lang/String;

    .line 142
    const-string v2, "media_time"

    iget-object v3, p0, Lio/casper/android/i/m;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v3}, Lio/casper/android/l/s;->i()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/casper/android/i/m;->mMediaTime:I

    .line 144
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 146
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 147
    iget-object v0, p0, Lio/casper/android/i/m;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 148
    iget-object v0, p0, Lio/casper/android/i/m;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    iget-object v0, p0, Lio/casper/android/i/m;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 156
    :cond_0
    const v0, 0x7f0c009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/casper/android/i/m;->mLayout:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f0c009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 159
    const v0, 0x7f0c008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lio/casper/android/i/m;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 161
    const v0, 0x7f0c00ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/casper/android/i/m;->mBottomBar:Landroid/widget/LinearLayout;

    .line 162
    const v0, 0x7f0c0101

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/m;->mRecipientsText:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0c009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/i/m;->mSendButton:Landroid/widget/ImageButton;

    .line 164
    const v0, 0x7f0c0100

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lio/casper/android/i/m;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 166
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/m;->mEmptyText:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lio/casper/android/i/m;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    new-instance v0, Lio/casper/android/a/a/f;

    iget-object v2, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    .line 171
    iget-object v0, p0, Lio/casper/android/i/m;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 172
    iget-object v0, p0, Lio/casper/android/i/m;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/m;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/m;->mFilter:Landroid/widget/Filter;

    .line 176
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 177
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 178
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 179
    iget-object v0, p0, Lio/casper/android/i/m;->mSearchView:Landroid/support/v7/widget/SearchView;

    iget-object v2, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lio/casper/android/i/m;->refresh:Ljava/lang/Runnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    iget-object v0, p0, Lio/casper/android/i/m;->mSendButton:Landroid/widget/ImageButton;

    new-instance v2, Lio/casper/android/i/m$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/m$2;-><init>(Lio/casper/android/i/m;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lio/casper/android/i/m;->mAdapter:Lio/casper/android/a/a/f;

    new-instance v2, Lio/casper/android/i/m$3;

    invoke-direct {v2, p0}, Lio/casper/android/i/m$3;-><init>(Lio/casper/android/i/m;)V

    invoke-virtual {v0, v2}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f$a;)V

    move-object v0, v1

    .line 293
    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 105
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/m;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lio/casper/android/i/m;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 99
    iget-object v0, p0, Lio/casper/android/i/m;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/m;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "io.casper.android.INTENT_REFRESH_FRIENDS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method
