.class public Lio/casper/android/a/a/f;
.super Lio/casper/android/a/a/a/a;
.source "SendAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/a/f$a;
    }
.end annotation


# static fields
.field private static final TYPE_FRIEND:I = 0x0

.field private static final TYPE_GROUP:I = 0x1

.field private static final TYPE_OTHER:I = 0x2

.field private static final VIEW_COUNT:I = 0x3


# instance fields
.field private mAllFriends:Z

.field private mFilteredData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMyStory:Z

.field private mSelectedFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionChangeListener:Lio/casper/android/a/a/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/a/a/f;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lio/casper/android/a/a/f;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lio/casper/android/a/a/f;->mAllFriends:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/a/a/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a/f;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lio/casper/android/a/a/f;->mMyStory:Z

    return p1
.end method

.method static synthetic c(Lio/casper/android/a/a/f;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lio/casper/android/a/a/a/a;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    return-object v0
.end method

.method public a(Lio/casper/android/a/a/f$a;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lio/casper/android/a/a/f;->mSelectionChangeListener:Lio/casper/android/a/a/f$a;

    .line 44
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-super {p0, p1}, Lio/casper/android/a/a/a/a;->a(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lio/casper/android/a/a/f;->mAllFriends:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lio/casper/android/a/a/f;->mMyStory:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lio/casper/android/a/a/f$6;

    invoke-direct {v0, p0}, Lio/casper/android/a/a/f$6;-><init>(Lio/casper/android/a/a/f;)V

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/f;->getItemViewType(I)I

    move-result v0

    .line 413
    packed-switch v0, :pswitch_data_0

    .line 481
    :goto_0
    :pswitch_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 417
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 418
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 423
    :cond_0
    sget-object v2, Lio/casper/android/a/a/f$7;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 426
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 430
    :pswitch_3
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 434
    :pswitch_4
    const-wide/16 v0, -0x2

    goto :goto_1

    .line 438
    :pswitch_5
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 443
    :pswitch_6
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_7
    goto :goto_0

    .line 454
    :pswitch_8
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 446
    :pswitch_9
    const-wide/16 v0, -0x4

    goto :goto_1

    .line 450
    :pswitch_a
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 458
    :pswitch_b
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 462
    :pswitch_c
    const-wide/16 v0, -0x8

    goto :goto_1

    .line 476
    :pswitch_d
    const-wide/16 v0, -0x9

    goto :goto_1

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 443
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/f;->getItemViewType(I)I

    move-result v0

    .line 316
    packed-switch v0, :pswitch_data_0

    .line 405
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lio/casper/android/a/a/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/a/a/f;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 321
    new-instance v2, Lio/casper/android/a/c/d;

    invoke-direct {v2, v0}, Lio/casper/android/a/c/d;-><init>(Landroid/view/View;)V

    .line 323
    iget-object v0, v2, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 326
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_0
    sget-object v3, Lio/casper/android/a/a/f$7;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v4

    invoke-virtual {v4}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 399
    :goto_1
    iget-object v0, v2, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 340
    :pswitch_2
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 346
    :pswitch_3
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 352
    :pswitch_4
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 359
    :pswitch_5
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto :goto_1

    .line 374
    :pswitch_7
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 362
    :pswitch_8
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 368
    :pswitch_9
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 380
    :pswitch_a
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 386
    :pswitch_b
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 359
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 81
    instance-of v2, v1, Lio/casper/android/n/a/c/b/i;

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    instance-of v2, v1, Lio/casper/android/a/b/c;

    if-nez v2, :cond_2

    instance-of v1, v1, Lio/casper/android/a/b/b;

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f03005b

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/f;->getItemViewType(I)I

    move-result v0

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-object p2

    .line 109
    :pswitch_1
    if-nez p2, :cond_0

    .line 110
    iget-object v0, p0, Lio/casper/android/a/a/f;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v0, Lio/casper/android/a/c/e;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/e;-><init>(Landroid/view/View;)V

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 117
    :goto_1
    iget-object v0, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 119
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    iget-object v3, v1, Lio/casper/android/a/c/e;->displayText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v1, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_2
    iget-object v2, v1, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lio/casper/android/a/a/f$1;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/f$1;-><init>(Lio/casper/android/a/a/f;Lio/casper/android/n/a/c/b/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v2, v1, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v0, v1, Lio/casper/android/a/c/e;->view:Landroid/view/View;

    new-instance v2, Lio/casper/android/a/a/f$2;

    invoke-direct {v2, p0, v1}, Lio/casper/android/a/a/f$2;-><init>(Lio/casper/android/a/a/f;Lio/casper/android/a/c/e;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/e;

    move-object v1, v0

    goto :goto_1

    .line 126
    :cond_1
    iget-object v4, v1, Lio/casper/android/a/c/e;->displayText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, v1, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, v1, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 165
    :pswitch_2
    if-nez p2, :cond_3

    .line 166
    iget-object v0, p0, Lio/casper/android/a/a/f;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 167
    new-instance v0, Lio/casper/android/a/c/e;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/e;-><init>(Landroid/view/View;)V

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_3
    iget-object v1, p0, Lio/casper/android/a/a/f;->mFilteredData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 175
    instance-of v2, v1, Lio/casper/android/a/b/b;

    if-eqz v2, :cond_4

    .line 177
    iget-object v1, v0, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, v0, Lio/casper/android/a/c/e;->displayText:Landroid/widget/TextView;

    const v2, 0x7f070175

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v1, v0, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    const v2, 0x7f070176

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v1, v0, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lio/casper/android/a/a/f;->mAllFriends:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v1, v0, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    new-instance v2, Lio/casper/android/a/a/f$3;

    invoke-direct {v2, p0}, Lio/casper/android/a/a/f$3;-><init>(Lio/casper/android/a/a/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    :cond_2
    :goto_4
    iget-object v1, v0, Lio/casper/android/a/c/e;->view:Landroid/view/View;

    new-instance v2, Lio/casper/android/a/a/f$5;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/a/f$5;-><init>(Lio/casper/android/a/a/f;Lio/casper/android/a/c/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 170
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/e;

    goto :goto_3

    .line 198
    :cond_4
    instance-of v1, v1, Lio/casper/android/a/b/c;

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, v0, Lio/casper/android/a/c/e;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, v0, Lio/casper/android/a/c/e;->displayText:Landroid/widget/TextView;

    const v2, 0x7f0701cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v1, v0, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lio/casper/android/a/a/f;->mMyStory:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object v1, v0, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    new-instance v2, Lio/casper/android/a/a/f$4;

    invoke-direct {v2, p0}, Lio/casper/android/a/a/f$4;-><init>(Lio/casper/android/a/a/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x3

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectionChangeListener:Lio/casper/android/a/a/f$a;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lio/casper/android/a/a/f;->mSelectionChangeListener:Lio/casper/android/a/a/f$a;

    iget-object v1, p0, Lio/casper/android/a/a/f;->mSelectedFriends:Ljava/util/List;

    iget-boolean v2, p0, Lio/casper/android/a/a/f;->mAllFriends:Z

    iget-boolean v3, p0, Lio/casper/android/a/a/f;->mMyStory:Z

    invoke-interface {v0, v1, v2, v3}, Lio/casper/android/a/a/f$a;->a(Ljava/util/List;ZZ)V

    .line 308
    :cond_0
    invoke-static {p0}, Lio/casper/android/a/a/f;->c(Lio/casper/android/a/a/f;)V

    .line 310
    return-void
.end method
