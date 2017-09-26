.class public Lio/casper/android/activity/SnapTagActivity;
.super Lio/casper/android/activity/a/a;
.source "SnapTagActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mUsernameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/activity/SnapTagActivity;)Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/SnapTagActivity;)Lio/casper/android/l/q;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/activity/SnapTagActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 35
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lio/casper/android/activity/SnapTagActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/SnapTagActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapTagActivity;->setContentView(I)V

    .line 44
    iput-object p0, p0, Lio/casper/android/activity/SnapTagActivity;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 47
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 49
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mImageView:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 51
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SnapTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mUsernameText:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mUsernameText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    invoke-virtual {v1, v0}, Lio/casper/android/l/q;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lio/casper/android/activity/SnapTagActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    invoke-virtual {v2, v0}, Lio/casper/android/l/q;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lio/casper/android/activity/SnapTagActivity$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/SnapTagActivity$1;-><init>(Lio/casper/android/activity/SnapTagActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Lio/casper/android/n/a/b/s;

    iget-object v2, p0, Lio/casper/android/activity/SnapTagActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/casper/android/n/a/b/s;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v2, Lio/casper/android/activity/SnapTagActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lio/casper/android/activity/SnapTagActivity$2;-><init>(Lio/casper/android/activity/SnapTagActivity;Ljava/lang/String;Lio/casper/android/n/a/b/s;)V

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/s;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method
