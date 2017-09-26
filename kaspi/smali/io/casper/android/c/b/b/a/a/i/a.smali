.class public Lio/casper/android/c/b/b/a/a/i/a;
.super Ljava/lang/Object;
.source "Addon.java"


# instance fields
.field private addon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addon"
    .end annotation
.end field

.field private credits:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credits"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/casper/android/c/b/b/a/a/i/a;->title:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lio/casper/android/c/b/b/a/a/i/a;->credits:J

    .line 19
    iput-object p4, p0, Lio/casper/android/c/b/b/a/a/i/a;->addon:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/i/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lio/casper/android/c/b/b/a/a/i/a;->credits:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/i/a;->addon:Ljava/lang/String;

    return-object v0
.end method
