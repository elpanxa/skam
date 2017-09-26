.class public Lio/casper/android/e/b/b;
.super Lio/casper/android/e/a/d;
.source "SnapchatAccount.java"


# instance fields
.field private addedFriendsTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added_friends_timestamp"
    .end annotation
.end field

.field private authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field private qrPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qr_path"
    .end annotation
.end field

.field private secInfo:Lio/casper/android/n/a/c/b/u;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sec_info"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lio/casper/android/e/b/b;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lio/casper/android/e/b/b;->d(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/e/b/b;->username:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lio/casper/android/e/b/b;->addedFriendsTimestamp:J

    .line 77
    return-void
.end method

.method public a(Lio/casper/android/n/a/c/b/u;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lio/casper/android/e/b/b;->secInfo:Lio/casper/android/n/a/c/b/u;

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lio/casper/android/e/b/b;->username:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/e/b/b;->email:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lio/casper/android/e/b/b;->email:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/e/b/b;->password:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/casper/android/e/b/b;->password:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/casper/android/e/b/b;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/casper/android/e/b/b;->authToken:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lio/casper/android/e/b/b;->addedFriendsTimestamp:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/casper/android/e/b/b;->qrPath:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/e/b/b;->qrPath:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lio/casper/android/n/a/c/b/u;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/casper/android/e/b/b;->secInfo:Lio/casper/android/n/a/c/b/u;

    return-object v0
.end method
