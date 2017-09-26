.class Lio/casper/android/l/k$2;
.super Ljava/lang/Object;
.source "InternalCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/k;


# direct methods
.method constructor <init>(Lio/casper/android/l/k;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lio/casper/android/l/k$2;->this$0:Lio/casper/android/l/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    const/16 v1, 0xa

    const/16 v2, -0x30

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 198
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 200
    iget-object v0, p0, Lio/casper/android/l/k$2;->this$0:Lio/casper/android/l/k;

    iget-object v2, p0, Lio/casper/android/l/k$2;->this$0:Lio/casper/android/l/k;

    iget-object v2, v2, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    invoke-virtual {v0, v2}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lio/casper/android/l/k$2;->this$0:Lio/casper/android/l/k;

    iget-object v2, p0, Lio/casper/android/l/k$2;->this$0:Lio/casper/android/l/k;

    iget-object v2, v2, Lio/casper/android/l/k;->mExternalCacheFolder:Ljava/io/File;

    invoke-virtual {v0, v2}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 214
    :cond_3
    return-void
.end method
