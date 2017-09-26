.class public Lio/casper/android/a/a/g;
.super Lio/casper/android/a/a/a/a;
.source "SnapsAdapter.java"


# static fields
.field private static final TYPE_ADVERTISEMENT:I = 0x2

.field private static final TYPE_BACKGROUND_UPLOAD_TASK:I = 0x1

.field private static final TYPE_CONVERSATION:I = 0x0

.field private static final VIEW_COUNT:I = 0x3


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a/g;->mAccountManager:Lio/casper/android/l/s;

    .line 53
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/g;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 55
    iget-object v0, p0, Lio/casper/android/a/a/g;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/g;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 57
    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/g;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    .line 59
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/g;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/a/g;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a/g;)Lio/casper/android/n/c/a/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/a/g;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/a/a/g;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 368
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 370
    instance-of v1, v1, Lio/casper/android/e/b/a;

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 372
    invoke-virtual {p0}, Lio/casper/android/a/a/g;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 376
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lio/casper/android/a/a/g;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 66
    instance-of v2, v1, Lio/casper/android/n/a/c/b/f;

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    instance-of v2, v1, Lio/casper/android/e/b/a;

    if-eqz v2, :cond_2

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    instance-of v1, v1, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/g;->getItemViewType(I)I

    move-result v0

    .line 91
    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-object p2

    .line 95
    :pswitch_0
    if-nez p2, :cond_0

    .line 96
    iget-object v0, p0, Lio/casper/android/a/a/g;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v0, Lio/casper/android/a/c/f;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/f;-><init>(Landroid/view/View;)V

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 103
    :goto_1
    iget-object v0, p0, Lio/casper/android/a/a/g;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    .line 104
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->f()Lio/casper/android/n/a/c/b/w;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/w;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/casper/android/util/l;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v3}, Lio/casper/android/util/i;->a(Lio/casper/android/n/a/c/b/w;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v4}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    iget-object v6, v1, Lio/casper/android/a/c/f;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {v0}, Lio/casper/android/util/i;->a(Lio/casper/android/n/a/c/b/f;)I

    move-result v5

    .line 113
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 114
    iget-object v6, v1, Lio/casper/android/a/c/f;->extraText:Landroid/widget/TextView;

    iget-object v7, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const v8, 0x7f070107

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_2
    iget-object v2, v1, Lio/casper/android/a/c/f;->view:Landroid/view/View;

    new-instance v5, Lio/casper/android/a/a/g$1;

    invoke-direct {v5, p0, v0}, Lio/casper/android/a/a/g$1;-><init>(Lio/casper/android/a/a/g;Lio/casper/android/n/a/c/b/f;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, v1, Lio/casper/android/a/c/f;->view:Landroid/view/View;

    new-instance v5, Lio/casper/android/a/a/g$2;

    invoke-direct {v5, p0, v4}, Lio/casper/android/a/a/g$2;-><init>(Lio/casper/android/a/a/g;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->b()Ljava/util/List;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_b

    iget-object v4, p0, Lio/casper/android/a/a/g;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v4}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_3
    iget-object v2, v1, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lio/casper/android/util/i;->a(Lio/casper/android/n/a/c/b/w;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    if-eqz v0, :cond_3

    .line 148
    iget-object v0, v1, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/a/a/g$3;

    invoke-direct {v1, p0}, Lio/casper/android/a/a/g$3;-><init>(Lio/casper/android/a/a/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/f;

    move-object v1, v0

    goto/16 :goto_1

    .line 115
    :cond_1
    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 116
    iget-object v6, v1, Lio/casper/android/a/c/f;->extraText:Landroid/widget/TextView;

    iget-object v7, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const v8, 0x7f070108

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 118
    :cond_2
    iget-object v5, v1, Lio/casper/android/a/c/f;->extraText:Landroid/widget/TextView;

    iget-object v6, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const v7, 0x7f070109

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 161
    :cond_3
    iget-object v0, v1, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 170
    :pswitch_1
    if-nez p2, :cond_5

    .line 171
    iget-object v0, p0, Lio/casper/android/a/a/g;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v0, Lio/casper/android/a/c/a;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/a;-><init>(Landroid/view/View;)V

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 178
    :goto_4
    iget-object v0, p0, Lio/casper/android/a/a/g;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/a;

    .line 179
    invoke-virtual {v0}, Lio/casper/android/e/b/a;->b()Lio/casper/android/n/a/b/b/a;

    move-result-object v3

    .line 181
    const-string v1, ""

    .line 183
    invoke-virtual {v3}, Lio/casper/android/n/a/b/b/a;->b()Ljava/util/List;

    move-result-object v4

    .line 184
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 186
    invoke-virtual {v3}, Lio/casper/android/n/a/b/b/a;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    const-string v1, "My Story"

    .line 215
    :cond_4
    :goto_5
    iget-object v3, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    sget-object v4, Lio/casper/android/util/l;->THEME_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v3, v4}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 216
    iget-object v3, v2, Lio/casper/android/a/c/a;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v0}, Lio/casper/android/e/b/a;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 222
    :pswitch_2
    iget-object v0, v2, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    const-string v1, "Waiting to Upload..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    iget-object v0, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    iget-object v0, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 227
    iget-object v0, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 175
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/a;

    move-object v2, v0

    goto :goto_4

    .line 190
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    .line 192
    invoke-virtual {v3}, Lio/casper/android/n/a/b/b/a;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Story & "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 195
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 200
    :cond_8
    invoke-virtual {v3}, Lio/casper/android/n/a/b/b/a;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Story & "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " friends"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 203
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " friends"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 235
    :pswitch_3
    iget-object v0, v2, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    const-string v1, "Uploading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 238
    iget-object v0, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    iget-object v0, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    iget-object v1, v2, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    const-string v3, "Failed to Upload"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0200cb

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v1, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 251
    iget-object v1, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 252
    iget-object v1, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    iget-object v1, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    new-instance v3, Lio/casper/android/a/a/g$4;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/g$4;-><init>(Lio/casper/android/a/a/g;Lio/casper/android/e/b/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    new-instance v2, Lio/casper/android/a/a/g$5;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/a/g$5;-><init>(Lio/casper/android/a/a/g;Lio/casper/android/e/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 281
    :pswitch_5
    iget-object v0, v2, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    const-string v1, "Sending..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 284
    iget-object v0, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 285
    iget-object v0, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 293
    :pswitch_6
    iget-object v1, v2, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    const-string v3, "Failed to Send"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, v2, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0200cb

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v1, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 297
    iget-object v1, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    iget-object v1, v2, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v1, v2, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    new-instance v3, Lio/casper/android/a/a/g$6;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/g$6;-><init>(Lio/casper/android/a/a/g;Lio/casper/android/e/b/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, v2, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    new-instance v2, Lio/casper/android/a/a/g$7;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/a/g$7;-><init>(Lio/casper/android/a/a/g;Lio/casper/android/e/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 333
    :pswitch_7
    if-nez p2, :cond_a

    .line 334
    iget-object v0, p0, Lio/casper/android/a/a/g;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 335
    new-instance v0, Lio/casper/android/a/c/f;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/f;-><init>(Landroid/view/View;)V

    .line 336
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 341
    :goto_6
    iget-object v0, p0, Lio/casper/android/a/a/g;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    .line 343
    iget-object v2, v1, Lio/casper/android/a/c/f;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, v1, Lio/casper/android/a/c/f;->extraText:Landroid/widget/TextView;

    iget-object v3, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const v4, 0x7f07010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const v7, 0x7f0700a9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, v1, Lio/casper/android/a/c/f;->view:Landroid/view/View;

    new-instance v3, Lio/casper/android/a/a/g$8;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/g$8;-><init>(Lio/casper/android/a/a/g;Lcom/startapp/android/publish/nativead/NativeAdDetails;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v2, p0, Lio/casper/android/a/a/g;->mPicasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, v1, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 353
    iget-object v0, v1, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 338
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/f;

    move-object v1, v0

    goto :goto_6

    :cond_b
    move v0, v2

    goto/16 :goto_3

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    return v0
.end method
