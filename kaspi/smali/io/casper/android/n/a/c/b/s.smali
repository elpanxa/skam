.class public Lio/casper/android/n/a/c/b/s;
.super Ljava/lang/Object;
.source "MessagingGatewayInfo.java"


# instance fields
.field private gatewayAuthToken:Lio/casper/android/n/a/c/b/l;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_auth_token"
    .end annotation
.end field

.field private gatewayServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_server"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/l;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/n/a/c/b/s;->gatewayAuthToken:Lio/casper/android/n/a/c/b/l;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/b/s;->gatewayServer:Ljava/lang/String;

    return-object v0
.end method
