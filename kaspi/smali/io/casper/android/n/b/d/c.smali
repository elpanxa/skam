.class public Lio/casper/android/n/b/d/c;
.super Lio/casper/android/n/b/d/n;
.source "ConnectResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/b/d/c$a;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "connect_response"


# instance fields
.field private alternative_server:Lio/casper/android/n/b/d/c$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alternative_server"
    .end annotation
.end field

.field private failure_reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failure_reason"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "connect_response"

    invoke-direct {p0, v0}, Lio/casper/android/n/b/d/n;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/b/d/c$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/n/b/d/c;->alternative_server:Lio/casper/android/n/b/d/c$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/n/b/d/c;->failure_reason:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lio/casper/android/n/b/d/c;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectResponse{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/casper/android/n/b/d/c;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failure_reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/b/d/c;->failure_reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternative_server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/b/d/c;->alternative_server:Lio/casper/android/n/b/d/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
