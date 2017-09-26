.class public Lio/casper/android/a/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FriendStoriesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_STORY_FRIEND:I = 0x2

.field public static final TYPE_STORY_ME:I = 0x1


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mStoryDownloadStateManager:Lio/casper/android/o/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/o/a/a",
            "<",
            "Lio/casper/android/n/a/c/b/x;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/o/a/a",
            "<",
            "Lio/casper/android/n/a/c/b/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 88
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/e;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 90
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/e;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 91
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/e;->mSettingsManager:Lio/casper/android/l/r;

    .line 92
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/e;->mAccountManager:Lio/casper/android/l/s;

    .line 93
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/e;->mSnapchatManager:Lio/casper/android/l/t;

    .line 95
    new-instance v0, Lio/casper/android/o/a/a;

    invoke-direct {v0}, Lio/casper/android/o/a/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    .line 96
    new-instance v0, Lio/casper/android/o/a/a;

    invoke-direct {v0}, Lio/casper/android/o/a/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    .line 98
    iget-object v0, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    new-instance v1, Lio/casper/android/a/e$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$1;-><init>(Lio/casper/android/a/e;)V

    invoke-virtual {v0, v1}, Lio/casper/android/o/a/a;->a(Lio/casper/android/o/a/a$b;)V

    .line 110
    iget-object v0, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    new-instance v1, Lio/casper/android/a/e$6;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$6;-><init>(Lio/casper/android/a/e;)V

    invoke-virtual {v0, v1}, Lio/casper/android/o/a/a;->a(Lio/casper/android/o/a/a$b;)V

    .line 122
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/e;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lio/casper/android/a/e;->b()V

    return-void
.end method

.method static synthetic b(Lio/casper/android/a/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 475
    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/a/e;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lio/casper/android/a/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/e;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/a/e;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/a/e;)Lio/casper/android/l/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/e;->mSavedMediaManager:Lio/casper/android/l/q;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/e$a;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    new-instance v1, Lio/casper/android/a/e$a;

    invoke-direct {v1, v0}, Lio/casper/android/a/e$a;-><init>(Landroid/view/View;)V

    .line 129
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    invoke-direct {p0}, Lio/casper/android/a/e;->b()V

    .line 440
    return-void
.end method

.method public a(Lio/casper/android/a/e$a;I)V
    .locals 11

    .prologue
    const/16 v10, 0xfa

    const/16 v1, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 136
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p2}, Lio/casper/android/a/e;->getItemViewType(I)I

    move-result v2

    .line 139
    if-ne v2, v8, :cond_0

    .line 141
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/t;

    .line 142
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v2

    .line 144
    invoke-static {p1}, Lio/casper/android/a/e$a;->a(Lio/casper/android/a/e$a;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    invoke-static {p1}, Lio/casper/android/a/e$a;->b(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-static {p1}, Lio/casper/android/a/e$a;->a(Lio/casper/android/a/e$a;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v3, Lio/casper/android/a/e$7;

    invoke-direct {v3, p0, p1, v0, p2}, Lio/casper/android/a/e$7;-><init>(Lio/casper/android/a/e;Lio/casper/android/a/e$a;Lio/casper/android/n/a/c/b/t;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, v2

    .line 236
    :goto_0
    if-nez v7, :cond_2

    .line 429
    :goto_1
    return-void

    .line 225
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 227
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 228
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v2

    .line 230
    invoke-static {p1}, Lio/casper/android/a/e$a;->a(Lio/casper/android/a/e$a;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    invoke-static {p1}, Lio/casper/android/a/e$a;->b(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v7, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/x;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    invoke-static {p1}, Lio/casper/android/a/e$a;->c(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v1, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v1, v7}, Lio/casper/android/o/a/a;->b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v2, v7}, Lio/casper/android/o/a/a;->b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;

    move-result-object v2

    .line 248
    invoke-static {p1}, Lio/casper/android/a/e$a;->e(Lio/casper/android/a/e$a;)Landroid/widget/ProgressBar;

    move-result-object v3

    sget-object v4, Lio/casper/android/util/l;->THEME_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v3, v4}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 250
    sget-object v3, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-eq v1, v3, :cond_3

    sget-object v3, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v1, v3, :cond_9

    .line 252
    :cond_3
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    invoke-static {p1}, Lio/casper/android/a/e$a;->e(Lio/casper/android/a/e$a;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    sget-object v3, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-ne v1, v3, :cond_6

    .line 256
    invoke-static {p1}, Lio/casper/android/a/e$a;->f(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    const v4, 0x7f07010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lio/casper/android/a/e;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 274
    invoke-virtual {p0, v7}, Lio/casper/android/a/e;->a(Lio/casper/android/n/a/c/b/x;)V

    .line 350
    :cond_4
    :goto_3
    sget-object v0, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-ne v2, v0, :cond_d

    .line 352
    iget-object v0, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v7, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 354
    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/x;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    new-instance v0, Lio/casper/android/n/a/b/c;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Lio/casper/android/n/a/b/c;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 356
    new-instance v1, Lio/casper/android/a/e$13;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$13;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/c;->a(Lio/casper/android/c/c/a/a;)V

    .line 408
    :cond_5
    :goto_4
    invoke-static {p1}, Lio/casper/android/a/e$a;->b(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$3;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$3;-><init>(Lio/casper/android/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$4;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$4;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 258
    :cond_6
    iget-object v1, p0, Lio/casper/android/a/e;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v1}, Lio/casper/android/l/r;->t()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    iget-object v1, p0, Lio/casper/android/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lio/casper/android/ui/i;

    invoke-direct {v2, v10, v6}, Lio/casper/android/ui/i;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 263
    :goto_5
    invoke-static {p1}, Lio/casper/android/a/e$a;->f(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    const v3, 0x7f0700a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$8;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$8;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 261
    :cond_7
    iget-object v1, p0, Lio/casper/android/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_5

    .line 277
    :cond_8
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$9;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$9;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 286
    :cond_9
    sget-object v3, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    if-ne v1, v3, :cond_a

    .line 288
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    invoke-static {p1}, Lio/casper/android/a/e$a;->e(Lio/casper/android/a/e$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    invoke-static {p1}, Lio/casper/android/a/e$a;->f(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    const v4, 0x7f07010a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$10;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$10;-><init>(Lio/casper/android/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 300
    :cond_a
    sget-object v3, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    if-ne v1, v3, :cond_b

    .line 302
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    invoke-static {p1}, Lio/casper/android/a/e$a;->e(Lio/casper/android/a/e$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    invoke-static {p1}, Lio/casper/android/a/e$a;->f(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    const v4, 0x7f07010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$11;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$11;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 330
    :cond_b
    sget-object v0, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    if-ne v1, v0, :cond_4

    .line 332
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-static {p1}, Lio/casper/android/a/e$a;->e(Lio/casper/android/a/e$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    invoke-static {p1}, Lio/casper/android/a/e$a;->f(Lio/casper/android/a/e$a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 337
    invoke-static {p1}, Lio/casper/android/a/e$a;->g(Lio/casper/android/a/e$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/e$12;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$12;-><init>(Lio/casper/android/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 372
    :cond_c
    new-instance v0, Lio/casper/android/n/a/b/v;

    iget-object v1, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Lio/casper/android/n/a/b/v;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 373
    new-instance v1, Lio/casper/android/a/e$2;

    invoke-direct {v1, p0, v7}, Lio/casper/android/a/e$2;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/v;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_4

    .line 390
    :cond_d
    sget-object v0, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    if-ne v2, v0, :cond_f

    .line 392
    iget-object v0, p0, Lio/casper/android/a/e;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 393
    iget-object v0, p0, Lio/casper/android/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/a/e;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v7}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lio/casper/android/ui/i;

    invoke-direct {v1, v10, v6}, Lio/casper/android/ui/i;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 395
    :cond_e
    iget-object v0, p0, Lio/casper/android/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/a/e;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v7}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 398
    :cond_f
    sget-object v0, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v2, v0, :cond_5

    .line 400
    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 401
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 402
    :cond_10
    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/x;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-static {p1}, Lio/casper/android/a/e$a;->d(Lio/casper/android/a/e$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_11
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public a(Lio/casper/android/n/a/c/b/x;)V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, p1, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 501
    new-instance v0, Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/squareup/okhttp/Dispatcher;-><init>()V

    .line 502
    iget-object v1, p0, Lio/casper/android/a/e;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->setMaxRequests(I)V

    .line 504
    new-instance v1, Lio/casper/android/n/a/b/b;

    iget-object v2, p0, Lio/casper/android/a/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lio/casper/android/n/a/b/b;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 505
    iget-object v2, v1, Lio/casper/android/n/a/b/b;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setDispatcher(Lcom/squareup/okhttp/Dispatcher;)Lcom/squareup/okhttp/OkHttpClient;

    .line 506
    new-instance v0, Lio/casper/android/a/e$5;

    invoke-direct {v0, p0, p1}, Lio/casper/android/a/e$5;-><init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/b/b;->a(Lio/casper/android/c/c/a/a;)V

    .line 535
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 446
    const/4 v1, 0x0

    .line 447
    instance-of v3, v0, Lio/casper/android/n/a/c/b/t;

    if-eqz v3, :cond_2

    .line 448
    check-cast v0, Lio/casper/android/n/a/c/b/t;

    .line 449
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    .line 455
    :goto_1
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v1, v0}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;)V

    .line 457
    iget-object v1, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v1, v0}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;)V

    .line 458
    iget-object v1, p0, Lio/casper/android/a/e;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v0}, Lio/casper/android/l/k;->d(Lio/casper/android/n/a/c/b/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lio/casper/android/a/e;->mStoryDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v3, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v1, v0, v3}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 461
    :cond_1
    iget-object v1, p0, Lio/casper/android/a/e;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v0}, Lio/casper/android/l/k;->e(Lio/casper/android/n/a/c/b/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lio/casper/android/a/e;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v3, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v1, v0, v3}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    goto :goto_0

    .line 450
    :cond_2
    instance-of v3, v0, Lio/casper/android/n/a/c/b/k;

    if-eqz v3, :cond_4

    .line 451
    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 452
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    goto :goto_1

    .line 468
    :cond_3
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    invoke-direct {p0}, Lio/casper/android/a/e;->b()V

    .line 471
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lio/casper/android/a/e;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 487
    instance-of v1, v0, Lio/casper/android/n/a/c/b/t;

    if-eqz v1, :cond_0

    .line 488
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    .line 489
    :cond_0
    instance-of v0, v0, Lio/casper/android/n/a/c/b/k;

    if-eqz v0, :cond_1

    .line 490
    const/4 v0, 0x2

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lio/casper/android/a/e$a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/e;->a(Lio/casper/android/a/e$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/e;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/e$a;

    move-result-object v0

    return-object v0
.end method
