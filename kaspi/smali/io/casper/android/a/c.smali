.class public Lio/casper/android/a/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FontsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/c$a;,
        Lio/casper/android/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private mFontDownloadStateManager:Lio/casper/android/o/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/o/a/a",
            "<",
            "Lio/casper/android/c/b/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private mFontManager:Lio/casper/android/l/g;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mListener:Lio/casper/android/a/c$a;

.field private mTypefaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/c;->mDataSet:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/c;->mTypefaceCache:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lio/casper/android/a/c;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lio/casper/android/l/g;

    iget-object v1, p0, Lio/casper/android/a/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/c;->mFontManager:Lio/casper/android/l/g;

    .line 70
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 72
    new-instance v0, Lio/casper/android/o/a/a;

    invoke-direct {v0}, Lio/casper/android/o/a/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    .line 73
    iget-object v0, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    new-instance v1, Lio/casper/android/a/c$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/c$1;-><init>(Lio/casper/android/a/c;)V

    invoke-virtual {v0, v1}, Lio/casper/android/o/a/a;->a(Lio/casper/android/o/a/a$b;)V

    .line 85
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/c;)Lio/casper/android/a/c$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/c;->mListener:Lio/casper/android/a/c$a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/c;)Lio/casper/android/o/a/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/c;)Lio/casper/android/l/g;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/a/c;->mFontManager:Lio/casper/android/l/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/c$b;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    new-instance v1, Lio/casper/android/a/c$b;

    invoke-direct {v1, v0}, Lio/casper/android/a/c$b;-><init>(Landroid/view/View;)V

    .line 92
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lio/casper/android/a/c;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    invoke-virtual {p0}, Lio/casper/android/a/c;->notifyDataSetChanged()V

    .line 303
    return-void
.end method

.method public a(Lio/casper/android/a/c$a;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lio/casper/android/a/c;->mListener:Lio/casper/android/a/c$a;

    .line 312
    return-void
.end method

.method public a(Lio/casper/android/a/c$b;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, Lio/casper/android/a/c;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lio/casper/android/c/b/b/a/a;

    if-eqz v1, :cond_2

    .line 103
    check-cast v0, Lio/casper/android/c/b/b/a/a;

    .line 105
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 106
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lio/casper/android/a/c;->mListener:Lio/casper/android/a/c$a;

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1}, Lio/casper/android/a/c$b;->c(Lio/casper/android/a/c$b;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/c$2;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/c$2;-><init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 119
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    :cond_2
    check-cast v0, Lio/casper/android/c/b/b/a/b;

    .line 130
    iget-object v1, p0, Lio/casper/android/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v0}, Lio/casper/android/l/k;->a(Lio/casper/android/c/b/b/a/b;)Ljava/io/File;

    move-result-object v2

    .line 131
    iget-object v1, p0, Lio/casper/android/a/c;->mFontManager:Lio/casper/android/l/g;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/casper/android/l/g;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 133
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 136
    :try_start_1
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_1
    iget-object v1, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    invoke-virtual {v1, v0}, Lio/casper/android/o/a/a;->b(Ljava/lang/Object;)Lio/casper/android/o/a/a$a;

    move-result-object v1

    .line 143
    sget-object v4, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    if-ne v1, v4, :cond_5

    .line 145
    iget-object v1, p0, Lio/casper/android/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1, v0}, Lio/casper/android/l/k;->b(Lio/casper/android/c/b/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v1, v0, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Lio/casper/android/a/c;->mFontDownloadStateManager:Lio/casper/android/o/a/a;

    sget-object v4, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    invoke-virtual {v1, v0, v4}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 152
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v1, Lio/casper/android/c/c/f/a;

    iget-object v4, p0, Lio/casper/android/a/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2}, Lio/casper/android/c/c/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 155
    new-instance v2, Lio/casper/android/a/c$3;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/c$3;-><init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;)V

    invoke-virtual {v1, v2}, Lio/casper/android/c/c/f/a;->a(Lio/casper/android/c/c/a/a;)V

    .line 199
    :cond_4
    :goto_2
    iget-object v1, p0, Lio/casper/android/a/c;->mFontManager:Lio/casper/android/l/g;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {p1}, Lio/casper/android/a/c$b;->d(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 205
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/c$4;

    invoke-direct {v2, p0, v3}, Lio/casper/android/a/c$4;-><init>(Lio/casper/android/a/c;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {p1}, Lio/casper/android/a/c$b;->c(Lio/casper/android/a/c$b;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/c$5;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/c$5;-><init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 279
    :goto_3
    iget-object v1, p0, Lio/casper/android/a/c;->mListener:Lio/casper/android/a/c$a;

    if-eqz v1, :cond_1

    .line 280
    invoke-static {p1}, Lio/casper/android/a/c$b;->c(Lio/casper/android/a/c$b;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/c$7;

    invoke-direct {v2, p0, v3, v0}, Lio/casper/android/a/c$7;-><init>(Lio/casper/android/a/c;Ljava/io/File;Lio/casper/android/c/b/b/a/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 171
    :cond_5
    sget-object v4, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    if-ne v1, v4, :cond_6

    .line 173
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 175
    :cond_6
    sget-object v4, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    if-ne v1, v4, :cond_7

    .line 177
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 179
    :cond_7
    sget-object v4, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    if-ne v1, v4, :cond_4

    .line 181
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :try_start_2
    iget-object v1, p0, Lio/casper/android/a/c;->mTypefaceCache:Ljava/util/Map;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 185
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lio/casper/android/a/c;->mTypefaceCache:Ljava/util/Map;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    :cond_8
    :goto_4
    iget-object v1, p0, Lio/casper/android/a/c;->mTypefaceCache:Ljava/util/Map;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 193
    if-eqz v1, :cond_4

    .line 194
    invoke-static {p1}, Lio/casper/android/a/c$b;->b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 188
    :catch_2
    move-exception v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 227
    :cond_9
    invoke-static {p1}, Lio/casper/android/a/c$b;->d(Lio/casper/android/a/c$b;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-static {p1}, Lio/casper/android/a/c$b;->c(Lio/casper/android/a/c$b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 231
    invoke-static {p1}, Lio/casper/android/a/c$b;->a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/c$6;

    invoke-direct {v2, p0, v0, v3}, Lio/casper/android/a/c$6;-><init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method

.method public a(Lio/casper/android/c/b/b/a/b;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lio/casper/android/a/c;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0}, Lio/casper/android/a/c;->notifyDataSetChanged()V

    .line 308
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lio/casper/android/a/c;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lio/casper/android/a/c$b;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/c;->a(Lio/casper/android/a/c$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/c;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/c$b;

    move-result-object v0

    return-object v0
.end method
