.class public Lfr/tkeunebr/gravatar/Gravatar$Builder;
.super Ljava/lang/Object;
.source "Gravatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/tkeunebr/gravatar/Gravatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extension:Z

.field private ssl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->ssl:Z

    .line 54
    iput-boolean v0, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->extension:Z

    .line 57
    return-void
.end method


# virtual methods
.method public build()Lfr/tkeunebr/gravatar/Gravatar;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lfr/tkeunebr/gravatar/Gravatar;

    iget-boolean v1, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->ssl:Z

    iget-boolean v2, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->extension:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lfr/tkeunebr/gravatar/Gravatar;-><init>(ZZLfr/tkeunebr/gravatar/Gravatar$1;)V

    return-object v0
.end method

.method public fileExtension()Lfr/tkeunebr/gravatar/Gravatar$Builder;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->extension:Z

    .line 72
    return-object p0
.end method

.method public ssl()Lfr/tkeunebr/gravatar/Gravatar$Builder;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/tkeunebr/gravatar/Gravatar$Builder;->ssl:Z

    .line 64
    return-object p0
.end method
