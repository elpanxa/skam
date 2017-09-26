.class public Lio/casper/android/l/j;
.super Lio/casper/android/l/a/a;
.source "ImojiManager.java"


# static fields
.field public static IMOJI_CLIENT_ID:Ljava/lang/String;

.field public static IMOJI_TOKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "pref_imoji_client_id"

    sput-object v0, Lio/casper/android/l/j;->IMOJI_CLIENT_ID:Ljava/lang/String;

    .line 10
    const-string v0, "pref_imoji_token"

    sput-object v0, Lio/casper/android/l/j;->IMOJI_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lio/casper/android/l/j;->IMOJI_CLIENT_ID:Ljava/lang/String;

    const-string v1, "6bf4d25b-f650-4bfa-962c-8a399d6a5860"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/c/b/b/a/a/e/a;)V
    .locals 2

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/e/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/e/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lio/casper/android/l/j;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v1}, Lio/casper/android/l/j;->b(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/casper/android/l/j;->IMOJI_CLIENT_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lio/casper/android/l/j;->IMOJI_TOKEN:Ljava/lang/String;

    const-string v1, "U2FsdGVkX1+pyE2W9c+nxfazlXfBXxWcKKY7NAVV1M2Eal05e7+B4D30gNlkF2Xu"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lio/casper/android/l/j;->IMOJI_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
