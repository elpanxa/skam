.class public Lio/casper/android/a/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConversationSnapsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationSnapsListAdapter"

.field public static final TYPE_NATIVE_AD:I = 0x2

.field public static final TYPE_SNAP:I = 0x1


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

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapDownloadStateManager:Lio/casper/android/o/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/o/a/a",
            "<",
            "Lio/casper/android/n/a/c/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/b;->mAccountManager:Lio/casper/android/l/s;

    .line 78
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 80
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/b;->mSettingsManager:Lio/casper/android/l/r;

    .line 81
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/b;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 82
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/b;->mSnapchatManager:Lio/casper/android/l/t;

    .line 84
    new-instance v0, Lio/casper/android/o/a/a;

    invoke-direct {v0}, Lio/casper/android/o/a/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    .line 85
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    new-instance v1, Lio/casper/android/a/b$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/b$1;-><init>(Lio/casper/android/a/b;)V

    invoke-virtual {v0, v1}, Lio/casper/android/o/a/a;->a(Lio/casper/android/o/a/a$b;)V

    .line 97
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/b;)Lio/casper/android/l/k;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/b;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/b;)Lio/casper/android/o/a/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/a/b;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/a/b;)Lio/casper/android/l/q;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/b;->mSavedMediaManager:Lio/casper/android/l/q;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/b$a;
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v1, Lio/casper/android/a/b$a;

    invoke-direct {v1, v0}, Lio/casper/android/a/b$a;-><init>(Landroid/view/View;)V

    .line 104
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    invoke-virtual {p0}, Lio/casper/android/a/b;->notifyDataSetChanged()V

    .line 273
    return-void
.end method

.method public a(Lio/casper/android/a/b$a;I)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    invoke-virtual {p0, p2}, Lio/casper/android/a/b;->getItemViewType(I)I

    move-result v0

    .line 113
    if-ne v0, v8, :cond_e

    .line 115
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/casper/android/n/a/c/b/w;

    .line 116
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->j()Ljava/lang/Long;

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

    .line 118
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-static {p1}, Lio/casper/android/a/b$a;->a(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    :goto_0
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v6, v7}, Lio/casper/android/util/i;->a(Lio/casper/android/n/a/c/b/w;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    sget-object v2, Lio/casper/android/util/l;->THEME_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v1, v2}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 129
    iget-object v1, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v1, v6}, Lio/casper/android/o/a/a;->b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;

    move-result-object v1

    .line 131
    sget-object v2, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_a

    .line 133
    :cond_1
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    const v4, 0x7f070109

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lio/casper/android/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v2, v6}, Lio/casper/android/l/k;->c(Lio/casper/android/n/a/c/b/w;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v6, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 263
    :cond_2
    :goto_1
    return-void

    .line 121
    :cond_3
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {p1}, Lio/casper/android/a/b$a;->a(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    :cond_5
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->VOID:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v6, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    goto :goto_1

    .line 148
    :cond_6
    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_7

    .line 149
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    const v3, 0x7f0700a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$2;

    invoke-direct {v1, p0, v6}, Lio/casper/android/a/b$2;-><init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 159
    :cond_7
    iget-object v0, p0, Lio/casper/android/a/b;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    invoke-virtual {p0, v6}, Lio/casper/android/a/b;->b(Lio/casper/android/n/a/c/b/w;)V

    .line 243
    :cond_8
    :goto_2
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$8;

    invoke-direct {v1, p0, v6}, Lio/casper/android/a/b$8;-><init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 162
    :cond_9
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$3;

    invoke-direct {v1, p0, v6}, Lio/casper/android/a/b$3;-><init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 170
    :cond_a
    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_b

    .line 172
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    const v3, 0x7f07010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$4;

    invoke-direct {v1, p0}, Lio/casper/android/a/b$4;-><init>(Lio/casper/android/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 184
    :cond_b
    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_c

    .line 186
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    const v3, 0x7f07010d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$5;

    invoke-direct {v1, p0, v6}, Lio/casper/android/a/b$5;-><init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 206
    :cond_c
    sget-object v2, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_d

    .line 208
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/b$6;

    invoke-direct {v1, p0}, Lio/casper/android/a/b$6;-><init>(Lio/casper/android/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 227
    :cond_d
    sget-object v2, Lio/casper/android/o/a/a$a;->VOID:Lio/casper/android/o/a/a$a;

    if-ne v1, v2, :cond_8

    .line 229
    invoke-static {p1}, Lio/casper/android/a/b$a;->b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    invoke-static {p1}, Lio/casper/android/a/b$a;->c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    invoke-static {p1}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {p1}, Lio/casper/android/a/b$a;->e(Lio/casper/android/a/b$a;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/b$7;

    invoke-direct {v2, p0, p1, v0}, Lio/casper/android/a/b$7;-><init>(Lio/casper/android/a/b;Lio/casper/android/a/b$a;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 257
    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto/16 :goto_1
.end method

.method public a(Lio/casper/android/n/a/c/b/w;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {p0}, Lio/casper/android/a/b;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-virtual {p0}, Lio/casper/android/a/b;->notifyDataSetChanged()V

    .line 283
    return-void
.end method

.method public b(Lio/casper/android/n/a/c/b/w;)V
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->VOID:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, p1, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 330
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lio/casper/android/a/b;->mSnapDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, p1, v1}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 294
    new-instance v0, Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/squareup/okhttp/Dispatcher;-><init>()V

    .line 295
    iget-object v1, p0, Lio/casper/android/a/b;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->setMaxRequests(I)V

    .line 297
    new-instance v1, Lio/casper/android/n/a/b/r;

    iget-object v2, p0, Lio/casper/android/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lio/casper/android/n/a/b/r;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;)V

    .line 298
    iget-object v2, v1, Lio/casper/android/n/a/b/r;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setDispatcher(Lcom/squareup/okhttp/Dispatcher;)Lcom/squareup/okhttp/OkHttpClient;

    .line 299
    new-instance v0, Lio/casper/android/a/b$9;

    invoke-direct {v0, p0, p1}, Lio/casper/android/a/b$9;-><init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V

    invoke-virtual {v1, v0}, Lio/casper/android/n/a/b/r;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lio/casper/android/a/b;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 340
    instance-of v1, v0, Lio/casper/android/n/a/c/b/w;

    if-eqz v1, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 342
    :cond_0
    instance-of v0, v0, Lio/casper/android/ui/g;

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x2

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lio/casper/android/a/b$a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/b;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/b$a;

    move-result-object v0

    return-object v0
.end method
