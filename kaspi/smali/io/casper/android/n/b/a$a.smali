.class public final enum Lio/casper/android/n/b/a$a;
.super Ljava/lang/Enum;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/b/a$a;

.field public static final enum CONNECTED:Lio/casper/android/n/b/a$a;

.field public static final enum CONNECTING:Lio/casper/android/n/b/a$a;

.field public static final enum DISCONNECTED:Lio/casper/android/n/b/a$a;

.field public static final enum DISCONNECTING:Lio/casper/android/n/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v0, Lio/casper/android/n/b/a$a;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/a$a;->CONNECTED:Lio/casper/android/n/b/a$a;

    new-instance v0, Lio/casper/android/n/b/a$a;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lio/casper/android/n/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/a$a;->CONNECTING:Lio/casper/android/n/b/a$a;

    new-instance v0, Lio/casper/android/n/b/a$a;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/a$a;->DISCONNECTING:Lio/casper/android/n/b/a$a;

    new-instance v0, Lio/casper/android/n/b/a$a;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lio/casper/android/n/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/b/a$a;->DISCONNECTED:Lio/casper/android/n/b/a$a;

    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [Lio/casper/android/n/b/a$a;

    sget-object v1, Lio/casper/android/n/b/a$a;->CONNECTED:Lio/casper/android/n/b/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/b/a$a;->CONNECTING:Lio/casper/android/n/b/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/b/a$a;->DISCONNECTING:Lio/casper/android/n/b/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/n/b/a$a;->DISCONNECTED:Lio/casper/android/n/b/a$a;

    aput-object v1, v0, v5

    sput-object v0, Lio/casper/android/n/b/a$a;->$VALUES:[Lio/casper/android/n/b/a$a;

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
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/b/a$a;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lio/casper/android/n/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/b/a$a;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lio/casper/android/n/b/a$a;->$VALUES:[Lio/casper/android/n/b/a$a;

    invoke-virtual {v0}, [Lio/casper/android/n/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/b/a$a;

    return-object v0
.end method
