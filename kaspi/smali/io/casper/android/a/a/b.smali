.class public Lio/casper/android/a/a/b;
.super Landroid/widget/BaseAdapter;
.source "EmojiGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/a/b$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiCallback:Lio/casper/android/a/a/b$a;

.field private mEmojiLoader:Lio/casper/android/util/c/c;

.field private mUnicodeEmojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/util/c/c;Ljava/util/List;Lio/casper/android/a/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/casper/android/util/c/c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/casper/android/a/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lio/casper/android/a/a/b;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lio/casper/android/a/a/b;->mEmojiLoader:Lio/casper/android/util/c/c;

    .line 31
    iput-object p3, p0, Lio/casper/android/a/a/b;->mUnicodeEmojis:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lio/casper/android/a/a/b;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    .line 34
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/b;)Lio/casper/android/a/a/b$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/a/a/b;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a/b;)Lio/casper/android/util/c/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/a/a/b;->mEmojiLoader:Lio/casper/android/util/c/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/casper/android/a/a/b;->mUnicodeEmojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/casper/android/a/a/b;->mUnicodeEmojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/SquareImageView;

    .line 56
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/SquareImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lio/casper/android/a/a/b;->mEmojiLoader:Lio/casper/android/util/c/c;

    invoke-virtual {v2, v1}, Lio/casper/android/util/c/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Lio/casper/android/ui/SquareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    new-instance v2, Lio/casper/android/a/a/b$1;

    invoke-direct {v2, p0, v1}, Lio/casper/android/a/a/b$1;-><init>(Lio/casper/android/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/casper/android/ui/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
