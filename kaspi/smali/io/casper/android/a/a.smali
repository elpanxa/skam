.class public Lio/casper/android/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatMessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FRIEND:I = 0x1

.field private static final TYPE_ME:I


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/b/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mMyUsername:Ljava/lang/String;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a;->mDataSet:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lio/casper/android/a/a;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a;->mAccountManager:Lio/casper/android/l/s;

    .line 71
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 72
    iget-object v0, p0, Lio/casper/android/a/a;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 74
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 76
    iget-object v0, p0, Lio/casper/android/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a;->mMyUsername:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a;)Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/a/a;->mPicasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/a$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p2, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v0, Lio/casper/android/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/a/a$a;-><init>(Landroid/view/View;)V

    .line 110
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030052

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    new-instance v0, Lio/casper/android/a/a$a;

    invoke-direct {v0, v1}, Lio/casper/android/a/a$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lio/casper/android/a/a$a;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 118
    iget-object v0, p0, Lio/casper/android/a/a;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/a;

    .line 120
    invoke-virtual {v0}, Lio/casper/android/n/b/d/a;->a()Lio/casper/android/n/b/d/a$a;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lio/casper/android/n/b/d/a$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0}, Lio/casper/android/n/b/d/a;->c()Lio/casper/android/n/b/d/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/n/b/d/d$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {p1}, Lio/casper/android/a/a$a;->a(Lio/casper/android/a/a$a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    if-nez v2, :cond_1

    .line 128
    invoke-static {p1}, Lio/casper/android/a/a$a;->b(Lio/casper/android/a/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-static {p1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-static {p1}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget-object v3, Lio/casper/android/n/b/d/a$a$b;->TEXT:Lio/casper/android/n/b/d/a$a$b;

    invoke-virtual {v3}, Lio/casper/android/n/b/d/a$a$b;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {p1}, Lio/casper/android/a/a$a;->b(Lio/casper/android/a/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-static {p1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-static {p1}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    invoke-static {p1}, Lio/casper/android/a/a$a;->b(Lio/casper/android/a/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lio/casper/android/n/b/d/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_2
    sget-object v1, Lio/casper/android/n/b/d/a$a$b;->MEDIA:Lio/casper/android/n/b/d/a$a$b;

    invoke-virtual {v1}, Lio/casper/android/n/b/d/a$a$b;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {p1}, Lio/casper/android/a/a$a;->b(Lio/casper/android/a/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-static {p1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-static {p1}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    invoke-static {p1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lio/casper/android/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v0}, Lio/casper/android/l/k;->a(Lio/casper/android/n/b/d/a;)Ljava/io/File;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lio/casper/android/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v2, v0}, Lio/casper/android/l/k;->b(Lio/casper/android/n/b/d/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v0, p0, Lio/casper/android/a/a;->mPicasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-static {p1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 155
    invoke-static {p1}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 157
    :cond_3
    new-instance v2, Lio/casper/android/n/d/a;

    iget-object v3, p0, Lio/casper/android/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lio/casper/android/n/d/a;-><init>(Landroid/content/Context;Lio/casper/android/n/b/d/a;)V

    .line 158
    new-instance v0, Lio/casper/android/a/a$1;

    invoke-direct {v0, p0, p1, v1}, Lio/casper/android/a/a$1;-><init>(Lio/casper/android/a/a;Lio/casper/android/a/a$a;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lio/casper/android/n/d/a;->setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 184
    invoke-virtual {v2}, Lio/casper/android/n/d/a;->executeAsync()V

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lio/casper/android/a/a;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lio/casper/android/a/a;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/a;

    .line 85
    invoke-virtual {v0}, Lio/casper/android/n/b/d/a;->c()Lio/casper/android/n/b/d/d$a;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/casper/android/a/a;->mMyUsername:Ljava/lang/String;

    invoke-virtual {v0}, Lio/casper/android/n/b/d/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lio/casper/android/a/a$a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/a;->a(Lio/casper/android/a/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/a;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/a$a;

    move-result-object v0

    return-object v0
.end method
