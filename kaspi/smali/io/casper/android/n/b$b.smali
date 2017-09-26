.class public Lio/casper/android/n/b$b;
.super Ljava/lang/Object;
.source "SnapchatSessionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private authToken:Ljava/lang/String;

.field private code:Lio/casper/android/n/b$a;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/b$a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/casper/android/n/b$b;->code:Lio/casper/android/n/b$a;

    return-object v0
.end method

.method public a(Lio/casper/android/n/b$a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lio/casper/android/n/b$b;->code:Lio/casper/android/n/b$a;

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lio/casper/android/n/b$b;->username:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lio/casper/android/n/b$b;->username:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lio/casper/android/n/b$b;->authToken:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/casper/android/n/b$b;->authToken:Ljava/lang/String;

    return-object v0
.end method
