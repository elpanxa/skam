.class Lio/casper/android/a/a/f$6;
.super Landroid/widget/Filter;
.source "SendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/f;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/f;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/f;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 261
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, v0, Lio/casper/android/a/a/f;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 264
    iget-object v1, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    invoke-static {v0}, Lio/casper/android/a/a/f;->b(Lio/casper/android/a/a/f;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lio/casper/android/a/a/f;->mData:Ljava/util/List;

    .line 265
    :cond_0
    if-eqz p1, :cond_5

    .line 266
    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, v0, Lio/casper/android/a/a/f;->mData:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, v0, Lio/casper/android/a/a/f;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 267
    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, v0, Lio/casper/android/a/a/f;->mData:Ljava/util/List;

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

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    instance-of v0, v1, Lio/casper/android/n/a/c/b/i;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 273
    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 275
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

    .line 276
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_4
    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 289
    :cond_5
    return-object v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f;Ljava/util/List;)Ljava/util/List;

    .line 295
    iget-object v0, p0, Lio/casper/android/a/a/f$6;->this$0:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->notifyDataSetChanged()V

    .line 296
    return-void
.end method
