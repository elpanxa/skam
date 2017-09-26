.class Lio/casper/android/activity/EditorActivity$39$2$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/o/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$39$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/activity/EditorActivity$39$2;

.field final synthetic val$thumbnailFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$39$2;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1453
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->val$thumbnailFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 1458
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    const v2, 0x7f0700e0

    invoke-virtual {v1, v2}, Lio/casper/android/activity/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1460
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v0

    .line 1461
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1463
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1465
    new-instance v3, Lio/casper/android/util/n;

    invoke-direct {v3}, Lio/casper/android/util/n;-><init>()V

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media~Snapchat-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".zip.nomedia"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v4, v4, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v4, v4, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v4}, Lio/casper/android/activity/EditorActivity;->c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lio/casper/android/util/n;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overlay~Snapchat-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->val$overlayFile:Ljava/io/File;

    invoke-virtual {v3, v1, v2}, Lio/casper/android/util/n;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1468
    invoke-virtual {v3}, Lio/casper/android/util/n;->a()V

    .line 1470
    const/4 v2, 0x0

    .line 1474
    :try_start_0
    invoke-virtual {v3}, Lio/casper/android/util/n;->b()[B

    move-result-object v3

    .line 1475
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    const/4 v2, 0x0

    :try_start_1
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1477
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1485
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1488
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->I(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/r;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/r;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    const v3, 0x7f070180

    invoke-virtual {v2, v3}, Lio/casper/android/activity/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/casper/android/l/q;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 1491
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v3, v3, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v3, v3, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v3}, Lio/casper/android/activity/EditorActivity;->c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 1492
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v2, v3, v1}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1495
    :cond_0
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1497
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/SendActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1498
    const-string v2, "media_id"

    iget-object v3, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v3, v3, Lio/casper/android/activity/EditorActivity$39$2;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    const-string v2, "media_file"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    const-string v0, "media_file_thumbnail"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->val$thumbnailFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    const-string v0, "media_type"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    const-string v0, "media_time"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->J(Lio/casper/android/activity/EditorActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1505
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1480
    :goto_1
    :try_start_2
    const-string v2, "EditorActivity"

    const-string v3, "Exporting files to Zip failed"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1481
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1482
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007c

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1485
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1479
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1509
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1510
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2$1;->this$2:Lio/casper/android/activity/EditorActivity$39$2;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1511
    return-void
.end method
