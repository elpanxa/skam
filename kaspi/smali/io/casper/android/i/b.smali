.class public Lio/casper/android/i/b;
.super Landroid/support/v4/app/Fragment;
.source "EmojiCategoryFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/a/b;

.field private mContext:Landroid/content/Context;

.field private mEmojiCallback:Lio/casper/android/a/a/b$a;

.field private mEmojiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmojiLoader:Lio/casper/android/util/c/c;

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lio/casper/android/util/c/c;Ljava/util/List;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/util/c/c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/casper/android/a/a/b$a;",
            ")",
            "Lio/casper/android/i/b;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lio/casper/android/i/b;

    invoke-direct {v0}, Lio/casper/android/i/b;-><init>()V

    .line 30
    iput-object p0, v0, Lio/casper/android/i/b;->mEmojiLoader:Lio/casper/android/util/c/c;

    .line 31
    iput-object p1, v0, Lio/casper/android/i/b;->mEmojiList:Ljava/util/List;

    .line 32
    iput-object p2, v0, Lio/casper/android/i/b;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    .line 33
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 39
    invoke-virtual {p0}, Lio/casper/android/i/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/b;->mContext:Landroid/content/Context;

    .line 41
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    const v0, 0x7f0c00fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lio/casper/android/i/b;->mGridView:Landroid/widget/GridView;

    .line 45
    new-instance v0, Lio/casper/android/a/a/b;

    iget-object v2, p0, Lio/casper/android/i/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/casper/android/i/b;->mEmojiLoader:Lio/casper/android/util/c/c;

    iget-object v4, p0, Lio/casper/android/i/b;->mEmojiList:Ljava/util/List;

    iget-object v5, p0, Lio/casper/android/i/b;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    invoke-direct {v0, v2, v3, v4, v5}, Lio/casper/android/a/a/b;-><init>(Landroid/content/Context;Lio/casper/android/util/c/c;Ljava/util/List;Lio/casper/android/a/a/b$a;)V

    iput-object v0, p0, Lio/casper/android/i/b;->mAdapter:Lio/casper/android/a/a/b;

    .line 46
    iget-object v0, p0, Lio/casper/android/i/b;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lio/casper/android/i/b;->mAdapter:Lio/casper/android/a/a/b;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object v0, p0, Lio/casper/android/i/b;->mGridView:Landroid/widget/GridView;

    const/high16 v2, 0x42700000    # 60.0f

    iget-object v3, p0, Lio/casper/android/i/b;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lio/casper/android/util/l;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 50
    return-object v1
.end method
