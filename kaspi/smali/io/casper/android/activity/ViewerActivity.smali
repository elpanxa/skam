.class public Lio/casper/android/activity/ViewerActivity;
.super Lio/casper/android/activity/a/a;
.source "ViewerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewerActivity"

.field public static final TYPE_MEDIA_PHOTO:I = 0x0

.field public static final TYPE_MEDIA_VIDEO:I = 0x1

.field public static final TYPE_SNAP:I = 0x0

.field public static final TYPE_STORY:I = 0x1


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

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

.field private mStory:Lio/casper/android/n/a/c/b/x;

.field private mTimeText:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mType:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/ViewerActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/ViewerActivity;)Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/ui/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaControllerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/activity/ViewerActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaOverlayFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->finish()V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x400

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 108
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 111
    const-string v0, "ViewerActivity"

    const-string v4, "onCreate[start]"

    invoke-static {v0, v4}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->setContentView(I)V

    .line 115
    new-instance v0, Lio/casper/android/l/k;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 117
    new-instance v0, Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 118
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 119
    new-instance v0, Lio/casper/android/l/a;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mAdManager:Lio/casper/android/l/a;

    .line 120
    new-instance v0, Lio/casper/android/l/r;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    .line 122
    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaControllerFrame:Landroid/widget/FrameLayout;

    .line 123
    new-instance v0, Lio/casper/android/ui/b;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/casper/android/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    .line 125
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 126
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    .line 127
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 130
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 133
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 134
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v4, Lio/casper/android/util/l;->WHITE_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v4}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 136
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    .line 138
    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v0, :cond_6

    .line 142
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/w;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    .line 144
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v4}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    .line 145
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v4}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaOverlayFile:Ljava/io/File;

    .line 147
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    .line 148
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v4, v0

    .line 149
    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 150
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_2
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v3}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/w;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    new-instance v0, Lio/casper/android/n/a/b/w;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-direct {v0, v3, v4}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/w;->m()V

    .line 168
    :cond_1
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    move-result-object v0

    const-string v3, "View"

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 205
    :cond_2
    :goto_3
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 206
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->finish()V

    .line 363
    :goto_4
    return-void

    :cond_3
    move v0, v2

    .line 138
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 147
    goto/16 :goto_1

    .line 152
    :cond_5
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 170
    :cond_6
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v0, v3, :cond_2

    .line 172
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/x;

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 177
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v4}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    .line 178
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v4}, Lio/casper/android/l/k;->c(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaOverlayFile:Ljava/io/File;

    .line 180
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v1

    :cond_7
    iput v3, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    .line 182
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->k()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 183
    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 184
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_5
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v3}, Lio/casper/android/l/q;->h(Lio/casper/android/n/a/c/b/x;)V

    .line 197
    :cond_8
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    new-instance v0, Lio/casper/android/n/a/b/x;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/x$a;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    invoke-direct {v0, v3, v4}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/x;->m()V

    .line 201
    :cond_9
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    move-result-object v0

    const-string v3, "View"

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto/16 :goto_3

    .line 186
    :cond_a
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 211
    :cond_b
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 212
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->s()V

    .line 214
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    if-nez v0, :cond_e

    .line 217
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaControllerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lio/casper/android/activity/ViewerActivity$1;

    invoke-direct {v3, p0}, Lio/casper/android/activity/ViewerActivity$1;-><init>(Lio/casper/android/activity/ViewerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lio/casper/android/activity/ViewerActivity$2;

    invoke-direct {v3, p0}, Lio/casper/android/activity/ViewerActivity$2;-><init>(Lio/casper/android/activity/ViewerActivity;)V

    invoke-virtual {v0, v1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 355
    :cond_c
    :goto_6
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 356
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 361
    :cond_d
    const-string v0, "ViewerActivity"

    const-string v1, "onCreate[end]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 246
    :cond_e
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/activity/ViewerActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ViewerActivity$3;-><init>(Lio/casper/android/activity/ViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 323
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 324
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 326
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/ViewerActivity$4;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ViewerActivity$4;-><init>(Lio/casper/android/activity/ViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/activity/ViewerActivity$5;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ViewerActivity$5;-><init>(Lio/casper/android/activity/ViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 347
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 349
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaOverlayFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 350
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mMediaOverlayFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const v4, 0x7f0c016d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 374
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 376
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v1, :cond_1

    .line 378
    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 380
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v1}, Lio/casper/android/l/r;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 396
    :cond_0
    :goto_0
    return v3

    .line 385
    :cond_1
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v1, v3, :cond_0

    .line 387
    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v1}, Lio/casper/android/l/r;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 564
    :goto_0
    return v0

    .line 403
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/ViewerActivity;->onBackPressed()V

    move v0, v2

    .line 404
    goto :goto_0

    .line 408
    :sswitch_1
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 409
    const-string v1, "Reply"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 411
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 419
    :cond_0
    :goto_1
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    move v0, v2

    .line 421
    goto :goto_0

    .line 414
    :cond_1
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_1

    .line 425
    :sswitch_2
    new-instance v1, Lio/casper/android/b/a/f;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 426
    const-string v3, "Save"

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 428
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v3, :cond_3

    .line 429
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v3, v4}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/w;)V

    .line 430
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 436
    :cond_2
    :goto_2
    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 437
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0700e6

    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 439
    goto :goto_0

    .line 431
    :cond_3
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v3, v2, :cond_2

    .line 432
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v3, v4}, Lio/casper/android/l/q;->h(Lio/casper/android/n/a/c/b/x;)V

    .line 433
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_2

    .line 443
    :sswitch_3
    const/4 v1, 0x0

    .line 444
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    if-nez v0, :cond_5

    const-string v0, "image/jpeg"

    .line 446
    :goto_3
    new-instance v3, Lio/casper/android/b/a/f;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 447
    const-string v4, "Share"

    invoke-virtual {v3, v4}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 449
    iget v4, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v4, :cond_6

    .line 450
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1, v4}, Lio/casper/android/l/q;->e(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v1

    .line 451
    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v4, v5, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 452
    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v3, v4}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 459
    :cond_4
    :goto_4
    invoke-static {v3}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 461
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ViewerActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 466
    goto/16 :goto_0

    .line 444
    :cond_5
    const-string v0, "video/mp4"

    goto :goto_3

    .line 453
    :cond_6
    iget v4, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v4, v2, :cond_4

    .line 454
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1, v4}, Lio/casper/android/l/q;->g(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    .line 455
    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v4, v5, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 456
    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v3, v4}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_4

    .line 470
    :sswitch_4
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v1, :cond_8

    .line 471
    new-instance v1, Lio/casper/android/n/a/b/w;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-direct {v1, v3, v4}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/w;->m()V

    .line 476
    :cond_7
    :goto_5
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0700cc

    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 478
    goto/16 :goto_0

    .line 472
    :cond_8
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v1, v2, :cond_7

    .line 473
    new-instance v1, Lio/casper/android/n/a/b/x;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/x$a;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    invoke-direct {v1, v3, v4}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/x;->m()V

    goto :goto_5

    .line 482
    :sswitch_5
    new-instance v1, Lio/casper/android/b/a/f;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 483
    const-string v3, "Screenshot"

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 485
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v3, :cond_a

    .line 486
    new-instance v3, Lio/casper/android/n/a/b/w;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v5, Lio/casper/android/n/a/b/w$a;

    iget-object v6, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v5, v6}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v5, v2}, Lio/casper/android/n/a/b/w$a;->b(Z)Lio/casper/android/n/a/b/w$a;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v3}, Lio/casper/android/n/a/b/w;->m()V

    .line 487
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 493
    :cond_9
    :goto_6
    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 494
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0700cb

    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 496
    goto/16 :goto_0

    .line 488
    :cond_a
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v3, v2, :cond_9

    .line 489
    new-instance v3, Lio/casper/android/n/a/b/x;

    iget-object v4, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v5, Lio/casper/android/n/a/b/x$a;

    iget-object v6, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v5, v6}, Lio/casper/android/n/a/b/x$a;-><init>(Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v5, v2}, Lio/casper/android/n/a/b/x$a;->a(Z)Lio/casper/android/n/a/b/x$a;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/casper/android/n/a/b/x;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V

    invoke-virtual {v3}, Lio/casper/android/n/a/b/x;->m()V

    .line 490
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_6

    .line 500
    :sswitch_6
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 501
    const-string v1, "Replayed"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 503
    iget v1, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v1, :cond_b

    .line 504
    new-instance v1, Lio/casper/android/n/a/b/w;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lio/casper/android/n/a/b/w$a;

    iget-object v5, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {v4, v5}, Lio/casper/android/n/a/b/w$a;-><init>(Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v4, v2}, Lio/casper/android/n/a/b/w$a;->a(Z)Lio/casper/android/n/a/b/w$a;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lio/casper/android/n/a/b/w;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/w;->m()V

    .line 505
    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 508
    :cond_b
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    move v0, v2

    .line 510
    goto/16 :goto_0

    .line 514
    :sswitch_7
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    const-class v4, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    const-string v3, "file"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    new-instance v0, Lio/casper/android/b/a/f;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lio/casper/android/b/a/f;-><init>(Landroid/content/Context;)V

    .line 519
    const-string v3, "Forward"

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Ljava/lang/String;)Lio/casper/android/b/a/f;

    .line 520
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-nez v3, :cond_f

    .line 521
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/w;)Lio/casper/android/b/a/f;

    .line 525
    :cond_c
    :goto_7
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 527
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    if-nez v0, :cond_d

    .line 528
    const-string v0, "type"

    const-string v3, "image"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v1}, Lio/casper/android/activity/ViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 531
    :cond_d
    iget v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaType:I

    if-ne v0, v2, :cond_e

    .line 533
    const-string v0, "type"

    const-string v3, "video"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    const v3, 0x7f070190

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 537
    const v3, 0x7f0700b0

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 538
    const v3, 0x7f070049

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 539
    const v3, 0x7f070041

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 540
    new-instance v3, Lio/casper/android/activity/ViewerActivity$6;

    invoke-direct {v3, p0, v1}, Lio/casper/android/activity/ViewerActivity$6;-><init>(Lio/casper/android/activity/ViewerActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 557
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_e
    move v0, v2

    .line 561
    goto/16 :goto_0

    .line 522
    :cond_f
    iget v3, p0, Lio/casper/android/activity/ViewerActivity;->mType:I

    if-ne v3, v2, :cond_c

    .line 523
    iget-object v3, p0, Lio/casper/android/activity/ViewerActivity;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v3}, Lio/casper/android/b/a/f;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/b/a/f;

    goto :goto_7

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c014f -> :sswitch_1
        0x7f0c0156 -> :sswitch_2
        0x7f0c016b -> :sswitch_3
        0x7f0c016c -> :sswitch_7
        0x7f0c016d -> :sswitch_4
        0x7f0c016e -> :sswitch_6
        0x7f0c016f -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "ViewerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 88
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 96
    :cond_2
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onPause()V

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 67
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 71
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity;->mMediaController:Lio/casper/android/ui/b;

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 75
    :cond_2
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onStop()V

    .line 77
    return-void
.end method
