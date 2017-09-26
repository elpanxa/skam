.class public Lio/casper/android/n/a/b/b/a;
.super Ljava/lang/Object;
.source "SendMediaPayload.java"


# instance fields
.field private cameraFrontFacing:I

.field private mediaId:Ljava/lang/String;

.field private recipientIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recipientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private setAsStory:Z

.field private thumbnailFile:Ljava/io/File;

.field private time:Ljava/lang/String;

.field private type:I

.field private zipped:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/a/b/b/a;->recipientList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/a/b/b/a;->recipientIds:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/casper/android/n/a/b/b/a;->time:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lio/casper/android/n/a/b/b/a;->type:I

    .line 38
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/casper/android/n/a/b/b/a;->thumbnailFile:Ljava/io/File;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lio/casper/android/n/a/b/b/a;->time:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lio/casper/android/n/a/b/b/a;->recipientList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lio/casper/android/n/a/b/b/a;->zipped:I

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
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
    .line 65
    iget-object v0, p0, Lio/casper/android/n/a/b/b/a;->recipientList:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lio/casper/android/n/a/b/b/a;->mediaId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lio/casper/android/n/a/b/b/a;->recipientIds:Ljava/util/List;

    .line 34
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lio/casper/android/n/a/b/b/a;->cameraFrontFacing:I

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
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
    .line 69
    iget-object v0, p0, Lio/casper/android/n/a/b/b/a;->recipientIds:Ljava/util/List;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/a;->setAsStory:Z

    .line 54
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lio/casper/android/n/a/b/b/a;->zipped:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lio/casper/android/n/a/b/b/a;->cameraFrontFacing:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lio/casper/android/n/a/b/b/a;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lio/casper/android/n/a/b/b/a;->setAsStory:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lio/casper/android/n/a/b/b/a;->type:I

    return v0
.end method

.method public i()Ljava/io/File;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lio/casper/android/n/a/b/b/a;->thumbnailFile:Ljava/io/File;

    return-object v0
.end method
