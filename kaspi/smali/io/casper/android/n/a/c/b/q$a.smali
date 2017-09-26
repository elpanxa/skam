.class public final enum Lio/casper/android/n/a/c/b/q$a;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/a/c/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/a/c/b/q$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/a/c/b/q$a;

.field public static final enum CHAT_MESSAGE:Lio/casper/android/n/a/c/b/q$a;

.field public static final enum SNAP:Lio/casper/android/n/a/c/b/q$a;

.field public static final enum UNKNOWN:Lio/casper/android/n/a/c/b/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lio/casper/android/n/a/c/b/q$a;

    const-string v1, "CHAT_MESSAGE"

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/c/b/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/q$a;->CHAT_MESSAGE:Lio/casper/android/n/a/c/b/q$a;

    new-instance v0, Lio/casper/android/n/a/c/b/q$a;

    const-string v1, "SNAP"

    invoke-direct {v0, v1, v3}, Lio/casper/android/n/a/c/b/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/q$a;->SNAP:Lio/casper/android/n/a/c/b/q$a;

    new-instance v0, Lio/casper/android/n/a/c/b/q$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/a/c/b/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/q$a;->UNKNOWN:Lio/casper/android/n/a/c/b/q$a;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lio/casper/android/n/a/c/b/q$a;

    sget-object v1, Lio/casper/android/n/a/c/b/q$a;->CHAT_MESSAGE:Lio/casper/android/n/a/c/b/q$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/a/c/b/q$a;->SNAP:Lio/casper/android/n/a/c/b/q$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/a/c/b/q$a;->UNKNOWN:Lio/casper/android/n/a/c/b/q$a;

    aput-object v1, v0, v4

    sput-object v0, Lio/casper/android/n/a/c/b/q$a;->$VALUES:[Lio/casper/android/n/a/c/b/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/a/c/b/q$a;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lio/casper/android/n/a/c/b/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/q$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/a/c/b/q$a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/casper/android/n/a/c/b/q$a;->$VALUES:[Lio/casper/android/n/a/c/b/q$a;

    invoke-virtual {v0}, [Lio/casper/android/n/a/c/b/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/a/c/b/q$a;

    return-object v0
.end method
