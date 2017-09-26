.class public Lio/casper/android/i/s;
.super Landroid/support/v4/app/Fragment;
.source "ViewerFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewerFragment"

.field public static final TYPE_FILE:I = 0x2

.field public static final TYPE_MEDIA_PHOTO:I = 0x0

.field public static final TYPE_MEDIA_VIDEO:I = 0x1

.field public static final TYPE_SNAP:I = 0x0

.field public static final TYPE_STORY:I = 0x1


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFriendStoriesTable:Lio/casper/android/n/c/a/c;

.field private mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

.field private mImageView:Landroid/widget/ImageView;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mMediaController:Lio/casper/android/ui/b;

.field private mMediaControllerFrame:Landroid/widget/FrameLayout;

.field private mMediaFile:Ljava/io/File;

.field private mMediaOverlayFile:Ljava/io/File;

.field private mMediaType:I

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnap:Lio/casper/android/n/a/c/b/w;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mStoriesTable:Lio/casper/android/n/c/a/g;

.field private mStory:Lio/casper/android/n/a/c/b/x;

.field private mTimeText:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mType:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/s;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/i/s;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 463
    const-string v1, "type"

    const-string v2, "story"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "id"

    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v1, Lio/casper/android/i/s;

    invoke-direct {v1}, Lio/casper/android/i/s;-><init>()V

    .line 467
    invoke-virtual {v1, v0}, Lio/casper/android/i/s;->setArguments(Landroid/os/Bundle;)V

    .line 469
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/i/s;
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 476
    const-string v1, "id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "type"

    const-string v2, "file"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "display"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v1, Lio/casper/android/i/s;

    invoke-direct {v1}, Lio/casper/android/i/s;-><init>()V

    .line 482
    invoke-virtual {v1, v0}, Lio/casper/android/i/s;->setArguments(Landroid/os/Bundle;)V

    .line 484
    return-object v1
.end method

.method static synthetic b(Lio/casper/android/i/s;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    return v0
.end method

.method static synthetic c(Lio/casper/android/i/s;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/s;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/i/s;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/i/s;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/i/s;)Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mPicasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaController:Lio/casper/android/ui/b;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/i/s;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaControllerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/i/s;)Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 496
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 500
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    goto :goto_0

    .line 504
    :cond_2
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f0700fa

    const/4 v10, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lio/casper/android/i/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    .line 137
    const v0, 0x7f030048

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 139
    invoke-static {}, Lio/casper/android/n/c/a/g;->i()Lio/casper/android/n/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mStoriesTable:Lio/casper/android/n/c/a/g;

    .line 140
    invoke-static {}, Lio/casper/android/n/c/a/c;->i()Lio/casper/android/n/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    .line 142
    new-instance v0, Lio/casper/android/l/k;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 143
    new-instance v0, Lio/casper/android/l/s;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 144
    new-instance v0, Lio/casper/android/l/q;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 145
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 146
    new-instance v0, Lio/casper/android/l/a;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mAdManager:Lio/casper/android/l/a;

    .line 147
    new-instance v0, Lio/casper/android/l/r;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    .line 149
    const v0, 0x7f0c00e7

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaControllerFrame:Landroid/widget/FrameLayout;

    .line 151
    new-instance v0, Lio/casper/android/ui/b;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaController:Lio/casper/android/ui/b;

    .line 152
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaController:Lio/casper/android/ui/b;

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 154
    const v0, 0x7f0c008b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 155
    const v0, 0x7f0c00a1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    .line 156
    const v0, 0x7f0c00a3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0c009c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/s;->mProgressBar:Landroid/widget/ProgressBar;

    .line 159
    const v0, 0x7f0c0096

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 162
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f020016

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 163
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v5, Lio/casper/android/i/s$1;

    invoke-direct {v5, p0}, Lio/casper/android/i/s$1;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lio/casper/android/i/s;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v5, Lio/casper/android/util/l;->WHITE_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v5}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 172
    invoke-virtual {p0}, Lio/casper/android/i/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "id"

    const-string v6, "unknown"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lio/casper/android/i/s;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "type"

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string v6, "unknown"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 448
    :goto_0
    return-object v0

    .line 179
    :cond_1
    const-string v6, "story"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    iput v3, p0, Lio/casper/android/i/s;->mType:I

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v7, p0, Lio/casper/android/i/s;->mStoriesTable:Lio/casper/android/n/c/a/g;

    sget-object v8, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v7, v8, v0}, Lio/casper/android/n/c/a/g;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 186
    iget-object v8, p0, Lio/casper/android/i/s;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    sget-object v9, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v8, v9, v0}, Lio/casper/android/n/c/a/c;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 188
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 191
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 195
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    iput-object v0, p0, Lio/casper/android/i/s;->mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

    .line 198
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 199
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/x;

    iput-object v0, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 206
    :cond_4
    const-string v0, "file"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    iput v10, p0, Lio/casper/android/i/s;->mType:I

    .line 208
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lio/casper/android/i/s;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "display"

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/casper/android/i/s;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "path"

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    .line 212
    :cond_5
    iget-object v5, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    iget-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-nez v0, :cond_d

    .line 216
    iget-object v0, p0, Lio/casper/android/i/s;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v5, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v5}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    .line 217
    iget-object v0, p0, Lio/casper/android/i/s;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v5, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v5}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    .line 219
    iget-object v0, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iput v0, p0, Lio/casper/android/i/s;->mMediaType:I

    .line 220
    iget-object v0, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v6, v0

    .line 221
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_c

    .line 222
    iget-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_4
    iget-object v0, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v2, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v2}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/w;)V

    .line 235
    :cond_6
    iget-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v0

    if-lez v0, :cond_7

    .line 236
    new-instance v0, Lio/casper/android/n/a/b/w;

    iget-object v2, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v3, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v3, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/w;->m()V

    .line 239
    :cond_7
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v2, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    move-result-object v0

    const-string v2, "View"

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 281
    :cond_8
    :goto_5
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 282
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 284
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 201
    :cond_9
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 212
    goto/16 :goto_2

    :cond_b
    move v0, v3

    .line 219
    goto/16 :goto_3

    .line 224
    :cond_c
    iget-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 241
    :cond_d
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-ne v0, v3, :cond_12

    .line 243
    iget-object v0, p0, Lio/casper/android/i/s;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v5, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v5}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    .line 244
    iget-object v0, p0, Lio/casper/android/i/s;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v5, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v5}, Lio/casper/android/l/k;->c(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    .line 246
    iget-object v0, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    move v3, v1

    :cond_e
    iput v3, p0, Lio/casper/android/i/s;->mMediaType:I

    .line 248
    iget-object v0, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->k()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 249
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_11

    .line 250
    iget-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_6
    iget-object v0, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    iget-object v0, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v2, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v2}, Lio/casper/android/l/q;->h(Lio/casper/android/n/a/c/b/x;)V

    .line 262
    :cond_f
    iget-object v0, p0, Lio/casper/android/i/s;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    new-instance v0, Lio/casper/android/n/a/b/x;

    iget-object v2, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v3, Lio/casper/android/n/a/b/x$a;

    iget-object v5, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v3, v5}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/x;->m()V

    .line 266
    :cond_10
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v2, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    move-result-object v0

    const-string v2, "View"

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 268
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    sget-object v2, Lio/casper/android/l/l;->VIEWER_SWIPE_NAVIGATE_STORIES:Ljava/lang/String;

    invoke-static {v0, v2, v11}, Lio/casper/android/l/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 252
    :cond_11
    iget-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 270
    :cond_12
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-ne v0, v10, :cond_8

    .line 272
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".jpg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_7
    iput v0, p0, Lio/casper/android/i/s;->mMediaType:I

    .line 273
    iget-object v0, p0, Lio/casper/android/i/s;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v2, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v2, :cond_14

    :goto_8
    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Z)Lio/casper/android/b/a/f;

    move-result-object v0

    const-string v2, "View"

    invoke-virtual {v0, v2}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 277
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    sget-object v2, Lio/casper/android/l/l;->VIEWER_SWIPE_NAVIGATE_SAVED_SNAPS:Ljava/lang/String;

    invoke-static {v0, v2, v11}, Lio/casper/android/l/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_13
    move v0, v3

    .line 272
    goto :goto_7

    :cond_14
    move v3, v1

    .line 275
    goto :goto_8

    .line 287
    :cond_15
    iget-object v2, p0, Lio/casper/android/i/s;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 288
    iget-object v0, p0, Lio/casper/android/i/s;->mAdManager:Lio/casper/android/l/a;

    new-instance v2, Lio/casper/android/i/s$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/s$2;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v2}, Lio/casper/android/l/a;->b(Lio/casper/android/l/a$a;)V

    .line 307
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v0, :cond_17

    .line 309
    iget-object v0, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lio/casper/android/i/s$3;

    invoke-direct {v2, p0}, Lio/casper/android/i/s$3;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lio/casper/android/i/s;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lio/casper/android/i/s;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lio/casper/android/i/s$4;

    invoke-direct {v2, p0}, Lio/casper/android/i/s$4;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 446
    :cond_16
    :goto_9
    invoke-virtual {p0}, Lio/casper/android/i/s;->b()V

    move-object v0, v4

    .line 448
    goto/16 :goto_0

    .line 335
    :cond_17
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/i/s$5;

    invoke-direct {v1, p0}, Lio/casper/android/i/s$5;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 343
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/i/s$6;

    invoke-direct {v1, p0}, Lio/casper/android/i/s$6;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 418
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 419
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 421
    iget-object v0, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/i/s$7;

    invoke-direct {v1, p0}, Lio/casper/android/i/s$7;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/i/s$8;

    invoke-direct {v1, p0}, Lio/casper/android/i/s$8;-><init>(Lio/casper/android/i/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 440
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 441
    iget-object v0, p0, Lio/casper/android/i/s;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/i/s;->mMediaOverlayFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/s;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_9
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 520
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v2, v3

    .line 693
    :cond_0
    :goto_0
    return v2

    .line 523
    :sswitch_0
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 524
    const-string v1, "Reply"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 526
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-nez v1, :cond_2

    .line 527
    iget-object v1, p0, Lio/casper/android/i/s;->mSnapchatAccountManager:Lio/casper/android/l/s;

    iget-object v3, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 534
    :cond_1
    :goto_1
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto :goto_0

    .line 529
    :cond_2
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-ne v1, v2, :cond_1

    .line 530
    iget-object v1, p0, Lio/casper/android/i/s;->mSnapchatAccountManager:Lio/casper/android/l/s;

    iget-object v3, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_1

    .line 540
    :sswitch_1
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 541
    const-string v1, "Save"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 543
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-nez v1, :cond_4

    .line 544
    iget-object v1, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1, v4}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/w;)V

    .line 545
    iget-object v1, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 551
    :cond_3
    :goto_2
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 552
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e6

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 546
    :cond_4
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-ne v1, v2, :cond_3

    .line 547
    iget-object v1, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1, v4}, Lio/casper/android/l/q;->h(Lio/casper/android/n/a/c/b/x;)V

    .line 548
    iget-object v1, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_2

    .line 558
    :sswitch_2
    const/4 v1, 0x0

    .line 559
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v0, :cond_6

    const-string v0, "image/jpeg"

    .line 561
    :goto_3
    new-instance v4, Lio/casper/android/b/a/f;

    iget-object v5, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 562
    const-string v5, "Share"

    invoke-virtual {v4, v5}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 564
    iget v5, p0, Lio/casper/android/i/s;->mType:I

    if-nez v5, :cond_7

    .line 565
    iget-object v1, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v3, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1, v3}, Lio/casper/android/l/q;->e(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v1

    .line 566
    iget-object v3, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v5, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v3, v5, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 567
    iget-object v3, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v4, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 578
    :cond_5
    :goto_4
    invoke-static {v4}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 580
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lio/casper/android/i/s;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/i/s;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 559
    :cond_6
    const-string v0, "video/mp4"

    goto :goto_3

    .line 568
    :cond_7
    iget v5, p0, Lio/casper/android/i/s;->mType:I

    if-ne v5, v2, :cond_8

    .line 569
    iget-object v1, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v3, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1, v3}, Lio/casper/android/l/q;->g(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    .line 570
    iget-object v3, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v5, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v3, v5, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 571
    iget-object v3, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v4, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_4

    .line 572
    :cond_8
    iget v5, p0, Lio/casper/android/i/s;->mType:I

    if-ne v5, v6, :cond_5

    .line 573
    iget-object v5, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget v1, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Lio/casper/android/l/q;->b(Z)Ljava/io/File;

    move-result-object v1

    .line 574
    iget-object v5, p0, Lio/casper/android/i/s;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v6, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v5, v6, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 575
    iget v5, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v5, :cond_9

    move v3, v2

    :cond_9
    invoke-virtual {v4, v3}, Lio/casper/android/b/a/f;->a(Z)Lio/casper/android/b/a/f;

    goto :goto_4

    :cond_a
    move v1, v3

    .line 573
    goto :goto_5

    .line 589
    :sswitch_3
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-nez v0, :cond_c

    .line 590
    new-instance v0, Lio/casper/android/n/a/b/w;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/w;->m()V

    .line 595
    :cond_b
    :goto_6
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0700cc

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 591
    :cond_c
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-ne v0, v2, :cond_b

    .line 592
    new-instance v0, Lio/casper/android/n/a/b/x;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/x$a;

    iget-object v5, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    iget-object v5, p0, Lio/casper/android/i/s;->mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

    invoke-virtual {v4, v5}, Lio/casper/android/n/a/b/x$a;->a(Lio/casper/android/n/a/c/b/k;)Lio/casper/android/n/a/b/x$a;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/x;->m()V

    goto :goto_6

    .line 601
    :sswitch_4
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 602
    const-string v1, "Screenshot"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 604
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-nez v1, :cond_e

    .line 605
    new-instance v1, Lio/casper/android/n/a/b/w;

    iget-object v4, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v5, Lio/casper/android/n/a/b/w$a;

    iget-object v6, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v5, v6}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v5, v2}, Lio/casper/android/n/a/b/w$a;->b(Z)Lio/casper/android/n/a/b/w$a;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/w;->m()V

    .line 606
    iget-object v1, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 612
    :cond_d
    :goto_7
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 613
    iget-object v0, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0700cb

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 607
    :cond_e
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-ne v1, v2, :cond_d

    .line 608
    new-instance v1, Lio/casper/android/n/a/b/x;

    iget-object v4, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v5, Lio/casper/android/n/a/b/x$a;

    iget-object v6, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v5, v6}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    iget-object v6, p0, Lio/casper/android/i/s;->mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

    invoke-virtual {v5, v6}, Lio/casper/android/n/a/b/x$a;->a(Lio/casper/android/n/a/c/b/k;)Lio/casper/android/n/a/b/x$a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/casper/android/n/a/b/x$a;->a(Z)Lio/casper/android/n/a/b/x$a;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/x;->m()V

    .line 609
    iget-object v1, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_7

    .line 619
    :sswitch_5
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 620
    const-string v1, "Replayed"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 622
    iget v1, p0, Lio/casper/android/i/s;->mType:I

    if-nez v1, :cond_f

    .line 623
    new-instance v1, Lio/casper/android/n/a/b/w;

    iget-object v3, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v4, v2}, Lio/casper/android/n/a/b/w$a;->a(Z)Lio/casper/android/n/a/b/w$a;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/w;->m()V

    .line 624
    iget-object v1, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 627
    :cond_f
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto/16 :goto_0

    .line 633
    :sswitch_6
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 634
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    const-class v5, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    const-string v4, "file"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v4, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 638
    const-string v4, "Forward"

    invoke-virtual {v0, v4}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 639
    iget v4, p0, Lio/casper/android/i/s;->mType:I

    if-nez v4, :cond_12

    .line 640
    iget-object v3, p0, Lio/casper/android/i/s;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 647
    :cond_10
    :goto_8
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 649
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v0, :cond_11

    .line 650
    const-string v0, "type"

    const-string v3, "image"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v1}, Lio/casper/android/i/s;->startActivity(Landroid/content/Intent;)V

    .line 653
    :cond_11
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-ne v0, v2, :cond_0

    .line 655
    const-string v0, "type"

    const-string v3, "video"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    iget v0, p0, Lio/casper/android/i/s;->mType:I

    if-ne v0, v6, :cond_15

    .line 658
    invoke-virtual {p0, v1}, Lio/casper/android/i/s;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 641
    :cond_12
    iget v4, p0, Lio/casper/android/i/s;->mType:I

    if-ne v4, v2, :cond_13

    .line 642
    iget-object v3, p0, Lio/casper/android/i/s;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_8

    .line 643
    :cond_13
    iget v4, p0, Lio/casper/android/i/s;->mType:I

    if-ne v4, v6, :cond_10

    .line 644
    iget v4, p0, Lio/casper/android/i/s;->mMediaType:I

    if-nez v4, :cond_14

    move v3, v2

    :cond_14
    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Z)Lio/casper/android/b/a/f;

    goto :goto_8

    .line 661
    :cond_15
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/i/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    const v3, 0x7f070190

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 663
    const v3, 0x7f0700b0

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 664
    const v3, 0x7f070049

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 665
    const v3, 0x7f070041

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 666
    new-instance v3, Lio/casper/android/i/s$9;

    invoke-direct {v3, p0, v1}, Lio/casper/android/i/s$9;-><init>(Lio/casper/android/i/s;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 683
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0

    .line 520
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c014f -> :sswitch_0
        0x7f0c0156 -> :sswitch_1
        0x7f0c016b -> :sswitch_2
        0x7f0c016c -> :sswitch_6
        0x7f0c016d -> :sswitch_3
        0x7f0c016e -> :sswitch_5
        0x7f0c016f -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 86
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 104
    if-eqz p1, :cond_3

    .line 106
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lio/casper/android/i/s;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaController:Lio/casper/android/ui/b;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lio/casper/android/i/s;->mMediaController:Lio/casper/android/ui/b;

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 130
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lio/casper/android/i/s;->mMediaType:I

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lio/casper/android/i/s;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method
