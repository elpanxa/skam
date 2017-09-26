.class public Lio/casper/android/h/c;
.super Landroid/app/DialogFragment;
.source "MyStoryStatsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/h/c$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mInfoText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mMyStory:Lio/casper/android/n/a/c/b/t;

.field private mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic a(Lio/casper/android/h/c;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lio/casper/android/n/a/c/b/t;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    invoke-virtual {p0, v4}, Lio/casper/android/h/c;->setRetainInstance(Z)V

    .line 127
    iput-object p1, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    .line 128
    iput-object p2, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/c;->mView:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lio/casper/android/h/c;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    const/high16 v1, 0x41800000    # 16.0f

    iget-object v2, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-static {v1, v2}, Lio/casper/android/util/l;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    .line 136
    iget-object v2, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    iget-object v1, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 140
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/c;->mListView:Landroid/widget/ListView;

    .line 142
    iget-object v0, p0, Lio/casper/android/h/c;->mView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lio/casper/android/h/c;->mView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/casper/android/h/c;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "STORY_STATS_DIALOG"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/h/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const v0, 0x7f0701fb

    invoke-virtual {v3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 48
    const v0, 0x7f070038

    invoke-virtual {v3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 49
    iget-object v0, p0, Lio/casper/android/h/c;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 54
    iget-object v0, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->c()Lio/casper/android/n/a/c/b/y;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->c()Lio/casper/android/n/a/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/y;->a()I

    move-result v2

    .line 56
    iget-object v0, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->c()Lio/casper/android/n/a/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/y;->b()I

    move-result v0

    .line 59
    :goto_1
    iget-object v4, p0, Lio/casper/android/h/c;->mInfoText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Views: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nTotal Screenshots: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->c()Lio/casper/android/n/a/c/b/y;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v2, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/t;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lio/casper/android/h/c;->mMyStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/t;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 68
    iget-object v2, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    const v4, 0x7f0700d8

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Lio/casper/android/h/c;->dismiss()V

    .line 72
    :cond_2
    new-instance v1, Lio/casper/android/h/c$a;

    iget-object v2, p0, Lio/casper/android/h/c;->mContext:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v0}, Lio/casper/android/h/c$a;-><init>(Lio/casper/android/h/c;Landroid/app/Activity;Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lio/casper/android/h/c;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_1
.end method
