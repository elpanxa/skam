.class public Lfr/tkeunebr/gravatar/Gravatar;
.super Ljava/lang/Object;
.source "Gravatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/tkeunebr/gravatar/Gravatar$1;,
        Lfr/tkeunebr/gravatar/Gravatar$Rating;,
        Lfr/tkeunebr/gravatar/Gravatar$DefaultImage;,
        Lfr/tkeunebr/gravatar/Gravatar$Builder;
    }
.end annotation


# static fields
.field public static final MAX_IMAGE_SIZE_PIXEL:I = 0x800

.field public static final MIN_IMAGE_SIZE_PIXEL:I = 0x1

.field private static singleton:Lfr/tkeunebr/gravatar/Gravatar;


# instance fields
.field final extension:Z

.field final ssl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lfr/tkeunebr/gravatar/Gravatar;->singleton:Lfr/tkeunebr/gravatar/Gravatar;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lfr/tkeunebr/gravatar/Gravatar;->ssl:Z

    .line 18
    iput-boolean p2, p0, Lfr/tkeunebr/gravatar/Gravatar;->extension:Z

    .line 19
    return-void
.end method

.method synthetic constructor <init>(ZZLfr/tkeunebr/gravatar/Gravatar$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lfr/tkeunebr/gravatar/Gravatar;-><init>(ZZ)V

    return-void
.end method

.method public static init()Lfr/tkeunebr/gravatar/Gravatar;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lfr/tkeunebr/gravatar/Gravatar;->singleton:Lfr/tkeunebr/gravatar/Gravatar;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lfr/tkeunebr/gravatar/Gravatar$Builder;

    invoke-direct {v0}, Lfr/tkeunebr/gravatar/Gravatar$Builder;-><init>()V

    invoke-virtual {v0}, Lfr/tkeunebr/gravatar/Gravatar$Builder;->build()Lfr/tkeunebr/gravatar/Gravatar;

    move-result-object v0

    sput-object v0, Lfr/tkeunebr/gravatar/Gravatar;->singleton:Lfr/tkeunebr/gravatar/Gravatar;

    .line 38
    :cond_0
    sget-object v0, Lfr/tkeunebr/gravatar/Gravatar;->singleton:Lfr/tkeunebr/gravatar/Gravatar;

    return-object v0
.end method


# virtual methods
.method public with(Ljava/lang/String;)Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lfr/tkeunebr/gravatar/RequestBuilder;

    invoke-direct {v0, p0, p1}, Lfr/tkeunebr/gravatar/RequestBuilder;-><init>(Lfr/tkeunebr/gravatar/Gravatar;Ljava/lang/String;)V

    return-object v0
.end method
