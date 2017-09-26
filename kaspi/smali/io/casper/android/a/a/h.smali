.class public Lio/casper/android/a/a/h;
.super Lio/casper/android/a/a/a/a;
.source "StoriesAdapter.java"


# static fields
.field private static final TYPE_ADVERTISEMENT:I = 0x1

.field private static final TYPE_STORY:I = 0x0

.field private static final VIEW_COUNT:I = 0x2


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mStoriesFragment:Lio/casper/android/i/q;

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
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/i/q;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lio/casper/android/a/a/h;->mStoriesFragment:Lio/casper/android/i/q;

    .line 63
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/h;->mSettingsManager:Lio/casper/android/l/r;

    .line 64
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/h;->mAccountManager:Lio/casper/android/l/s;

    .line 66
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 67
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/h;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 69
    new-instance v0, Lio/casper/android/o/a/a;

    invoke-direct {v0}, Lio/casper/android/o/a/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a/h;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    .line 70
    iget-object v0, p0, Lio/casper/android/a/a/h;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    new-instance v1, Lio/casper/android/a/a/h$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/a/h$1;-><init>(Lio/casper/android/a/a/h;)V

    invoke-virtual {v0, v1}, Lio/casper/android/o/a/a;->a(Lio/casper/android/o/a/a$b;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/h;)Lio/casper/android/i/q;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/a/h;->mStoriesFragment:Lio/casper/android/i/q;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a/h;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/a/h;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/a/h;)Lio/casper/android/o/a/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/a/h;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lio/casper/android/a/a/h;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lio/casper/android/m/a;

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v1, v1, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v1, 0x7f03005d

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/h;->getItemViewType(I)I

    move-result v0

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_0
    :goto_0
    return-object p2

    .line 116
    :pswitch_0
    if-nez p2, :cond_1

    .line 117
    iget-object v0, p0, Lio/casper/android/a/a/h;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance v0, Lio/casper/android/a/c/g;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/g;-><init>(Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v0

    .line 124
    :goto_1
    iget-object v0, p0, Lio/casper/android/a/a/h;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/m/a;

    .line 125
    invoke-virtual {v0}, Lio/casper/android/m/a;->c()I

    move-result v1

    .line 128
    iget-object v3, v6, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    if-nez v1, :cond_2

    .line 134
    iget-object v1, v6, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    invoke-virtual {v0}, Lio/casper/android/m/a;->a()Ljava/util/List;

    move-result-object v3

    .line 136
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v1

    .line 138
    iget-object v4, v6, Lio/casper/android/a/c/g;->view:Landroid/view/View;

    new-instance v5, Lio/casper/android/a/a/h$3;

    invoke-direct {v5, p0, v0}, Lio/casper/android/a/a/h$3;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/m/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, v6, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    new-instance v4, Lio/casper/android/a/a/h$4;

    invoke-direct {v4, p0, v6, v3}, Lio/casper/android/a/a/h$4;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/a/c/g;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, v2

    move-object v8, v1

    .line 242
    :goto_2
    invoke-virtual {v8}, Lio/casper/android/n/a/c/b/x;->d()Ljava/lang/Long;

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

    .line 245
    invoke-virtual {v8}, Lio/casper/android/n/a/c/b/x;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, v6, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v1, v6, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v1, v6, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    new-instance v2, Lio/casper/android/a/a/h$6;

    invoke-direct {v2, p0}, Lio/casper/android/a/a/h$6;-><init>(Lio/casper/android/a/a/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :goto_3
    invoke-virtual {v8}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v2, v6, Lio/casper/android/a/c/g;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, v6, Lio/casper/android/a/c/g;->extraText:Landroid/widget/TextView;

    iget-object v2, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    const v3, 0x7f070109

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, v6, Lio/casper/android/a/c/g;->view:Landroid/view/View;

    new-instance v1, Lio/casper/android/a/a/h$7;

    invoke-direct {v1, p0, v8}, Lio/casper/android/a/a/h$7;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    iget-object v0, p0, Lio/casper/android/a/a/h;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v0, v8}, Lio/casper/android/o/a/a;->b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;

    move-result-object v0

    .line 279
    sget-object v1, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-ne v0, v1, :cond_6

    .line 281
    iget-object v0, p0, Lio/casper/android/a/a/h;->mThumbnailDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v8, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 283
    invoke-virtual {v8}, Lio/casper/android/n/a/c/b/x;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    new-instance v0, Lio/casper/android/n/a/b/c;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lio/casper/android/n/a/b/c;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 285
    new-instance v1, Lio/casper/android/a/a/h$8;

    invoke-direct {v1, p0, v8}, Lio/casper/android/a/a/h$8;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/c;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 121
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/g;

    move-object v6, v0

    goto/16 :goto_1

    .line 216
    :cond_2
    iget-object v1, v6, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 218
    invoke-virtual {v0}, Lio/casper/android/m/a;->b()Lio/casper/android/n/a/c/b/j;

    move-result-object v2

    .line 219
    invoke-virtual {v0}, Lio/casper/android/m/a;->b()Lio/casper/android/n/a/c/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v1

    .line 221
    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/j;->b()Lio/casper/android/n/a/c/b/o;

    move-result-object v0

    .line 223
    iget-object v3, v6, Lio/casper/android/a/c/g;->view:Landroid/view/View;

    new-instance v4, Lio/casper/android/a/a/h$5;

    invoke-direct {v4, p0, v2}, Lio/casper/android/a/a/h$5;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/j;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, v0

    move-object v8, v1

    goto/16 :goto_2

    .line 261
    :cond_3
    iget-object v1, v6, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 300
    :cond_4
    if-eqz v7, :cond_5

    .line 302
    new-instance v0, Lio/casper/android/n/a/b/j;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lio/casper/android/n/a/c/b/o;->a()Lio/casper/android/n/a/c/b/n;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lio/casper/android/n/a/b/j;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/n/a/c/b/n;)V

    .line 303
    new-instance v1, Lio/casper/android/a/a/h$9;

    invoke-direct {v1, p0, v8}, Lio/casper/android/a/a/h$9;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/j;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 320
    :cond_5
    new-instance v0, Lio/casper/android/n/a/b/v;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lio/casper/android/n/a/b/v;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 321
    new-instance v1, Lio/casper/android/a/a/h$10;

    invoke-direct {v1, p0, v8}, Lio/casper/android/a/a/h$10;-><init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/v;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    if-ne v0, v1, :cond_8

    .line 340
    iget-object v0, p0, Lio/casper/android/a/a/h;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    iget-object v0, p0, Lio/casper/android/a/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v8}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lio/casper/android/ui/i;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v9}, Lio/casper/android/ui/i;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, v6, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 343
    :cond_7
    iget-object v0, p0, Lio/casper/android/a/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/a/a/h;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v8}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, v6, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 347
    :cond_8
    sget-object v1, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, v6, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 367
    :pswitch_1
    if-nez p2, :cond_9

    .line 368
    iget-object v0, p0, Lio/casper/android/a/a/h;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 369
    new-instance v0, Lio/casper/android/a/c/g;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/g;-><init>(Landroid/view/View;)V

    .line 370
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 375
    :goto_4
    iget-object v0, p0, Lio/casper/android/a/a/h;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    .line 376
    iget-object v2, v1, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v2, v1, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v2, v1, Lio/casper/android/a/c/g;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v2, v1, Lio/casper/android/a/c/g;->extraText:Landroid/widget/TextView;

    iget-object v3, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    const v4, 0x7f07010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    const v6, 0x7f0700a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v2, v1, Lio/casper/android/a/c/g;->view:Landroid/view/View;

    new-instance v3, Lio/casper/android/a/a/h$2;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/h$2;-><init>(Lio/casper/android/a/a/h;Lcom/startapp/android/publish/nativead/NativeAdDetails;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v2, p0, Lio/casper/android/a/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, v1, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 372
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/g;

    move-object v1, v0

    goto :goto_4

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    return v0
.end method
