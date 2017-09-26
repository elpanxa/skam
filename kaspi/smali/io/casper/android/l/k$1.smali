.class Lio/casper/android/l/k$1;
.super Ljava/lang/Object;
.source "InternalCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/k;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/k;

.field final synthetic val$clearAll:Z


# direct methods
.method constructor <init>(Lio/casper/android/l/k;Z)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lio/casper/android/l/k$1;->this$0:Lio/casper/android/l/k;

    iput-boolean p2, p0, Lio/casper/android/l/k$1;->val$clearAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    const/16 v1, 0xa

    const/16 v2, -0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 171
    iget-object v0, p0, Lio/casper/android/l/k$1;->this$0:Lio/casper/android/l/k;

    iget-object v2, p0, Lio/casper/android/l/k$1;->this$0:Lio/casper/android/l/k;

    iget-object v2, v2, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    invoke-virtual {v0, v2}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 173
    iget-boolean v3, p0, Lio/casper/android/l/k$1;->val$clearAll:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lio/casper/android/l/k$1;->this$0:Lio/casper/android/l/k;

    iget-object v2, p0, Lio/casper/android/l/k$1;->this$0:Lio/casper/android/l/k;

    iget-object v2, v2, Lio/casper/android/l/k;->mExternalCacheFolder:Ljava/io/File;

    invoke-virtual {v0, v2}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 180
    iget-boolean v3, p0, Lio/casper/android/l/k$1;->val$clearAll:Z

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 181
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 185
    :cond_5
    return-void
.end method
