.class Lio/casper/android/a/a/c$3;
.super Landroid/widget/Filter;
.source "FriendChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/c;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/c;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/c;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 132
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, v0, Lio/casper/android/a/a/c;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    iget-object v1, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    invoke-static {v0}, Lio/casper/android/a/a/c;->b(Lio/casper/android/a/a/c;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lio/casper/android/a/a/c;->mData:Ljava/util/List;

    .line 136
    :cond_0
    if-eqz p1, :cond_5

    .line 137
    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, v0, Lio/casper/android/a/a/c;->mData:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, v0, Lio/casper/android/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 138
    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, v0, Lio/casper/android/a/a/c;->mData:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    instance-of v0, v1, Lio/casper/android/n/a/c/b/i;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 144
    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 146
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_4
    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 160
    :cond_5
    return-object v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lio/casper/android/a/a/c;->a(Lio/casper/android/a/a/c;Ljava/util/List;)Ljava/util/List;

    .line 166
    iget-object v0, p0, Lio/casper/android/a/a/c$3;->this$0:Lio/casper/android/a/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/a/c;->notifyDataSetChanged()V

    .line 167
    return-void
.end method
