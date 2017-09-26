.class public Lio/casper/android/a/a/c;
.super Lio/casper/android/a/a/a/a;
.source "FriendChooserAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/a/c$a;
    }
.end annotation


# instance fields
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

.field private mSelectionChangeListener:Lio/casper/android/a/a/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lio/casper/android/a/a/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/a/c;)V
    .locals 0

    .prologue
    .line 23
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
    .line 39
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-super {p0, p1}, Lio/casper/android/a/a/a/a;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lio/casper/android/a/a/c;->notifyDataSetChanged()V

    .line 47
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lio/casper/android/a/a/c$3;

    invoke-direct {v0, p0}, Lio/casper/android/a/a/c$3;-><init>(Lio/casper/android/a/a/c;)V

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 273
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_0
    sget-object v2, Lio/casper/android/a/a/c$4;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 326
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 281
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 285
    :pswitch_1
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 289
    :pswitch_2
    const-wide/16 v0, -0x2

    goto :goto_1

    .line 293
    :pswitch_3
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 298
    :pswitch_4
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    .line 309
    :pswitch_6
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 301
    :pswitch_7
    const-wide/16 v0, -0x4

    goto :goto_1

    .line 305
    :pswitch_8
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 313
    :pswitch_9
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 317
    :pswitch_a
    const-wide/16 v0, -0x8

    goto :goto_1

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Lio/casper/android/a/a/c;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 187
    new-instance v2, Lio/casper/android/a/c/d;

    invoke-direct {v2, v0}, Lio/casper/android/a/c/d;-><init>(Landroid/view/View;)V

    .line 189
    iget-object v0, v2, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 192
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_0
    sget-object v3, Lio/casper/android/a/a/c$4;->$SwitchMap$io$casper$android$snapchat$api$response$model$Friend$FriendsListGroupingType:[I

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->n()Lio/casper/android/n/a/c/b/i$a;

    move-result-object v4

    invoke-virtual {v4}, Lio/casper/android/n/a/c/b/i$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 265
    :goto_0
    iget-object v0, v2, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    return-object v0

    .line 200
    :pswitch_0
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    .line 240
    :pswitch_6
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 228
    :pswitch_7
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 234
    :pswitch_8
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 246
    :pswitch_9
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 252
    :pswitch_a
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, v2, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v0, p0, Lio/casper/android/a/a/c;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v0, Lio/casper/android/a/c/b;

    invoke-direct {v0, p2}, Lio/casper/android/a/c/b;-><init>(Landroid/view/View;)V

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 80
    :goto_0
    iget-object v0, p0, Lio/casper/android/a/a/c;->mFilteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 82
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    iget-object v3, v1, Lio/casper/android/a/c/b;->displayText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lio/casper/android/a/c/b;->usernameText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_1
    iget-object v2, v1, Lio/casper/android/a/c/b;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lio/casper/android/a/a/c$1;

    invoke-direct {v3, p0, v0}, Lio/casper/android/a/a/c$1;-><init>(Lio/casper/android/a/a/c;Lio/casper/android/n/a/c/b/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v2, v1, Lio/casper/android/a/c/b;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, v1, Lio/casper/android/a/c/b;->view:Landroid/view/View;

    new-instance v2, Lio/casper/android/a/a/c$2;

    invoke-direct {v2, p0, v1}, Lio/casper/android/a/a/c$2;-><init>(Lio/casper/android/a/a/c;Lio/casper/android/a/c/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-object p2

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/a/c/b;

    move-object v1, v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v4, v1, Lio/casper/android/a/c/b;->displayText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, v1, Lio/casper/android/a/c/b;->usernameText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v1, Lio/casper/android/a/c/b;->usernameText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectionChangeListener:Lio/casper/android/a/a/c$a;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lio/casper/android/a/a/c;->mSelectionChangeListener:Lio/casper/android/a/a/c$a;

    iget-object v1, p0, Lio/casper/android/a/a/c;->mSelectedFriends:Ljava/util/List;

    invoke-interface {v0, v1}, Lio/casper/android/a/a/c$a;->a(Ljava/util/List;)V

    .line 179
    :cond_0
    invoke-static {p0}, Lio/casper/android/a/a/c;->c(Lio/casper/android/a/a/c;)V

    .line 181
    return-void
.end method
