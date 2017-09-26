.class public final enum Lcom/mopub/common/util/DeviceUtils$IP;
.super Ljava/lang/Enum;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/util/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/util/DeviceUtils$IP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/DeviceUtils$IP;

.field public static final enum IPv4:Lcom/mopub/common/util/DeviceUtils$IP;

.field public static final enum IPv6:Lcom/mopub/common/util/DeviceUtils$IP;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$IP;

    const-string v1, "IPv4"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/DeviceUtils$IP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$IP;->IPv4:Lcom/mopub/common/util/DeviceUtils$IP;

    .line 76
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$IP;

    const-string v1, "IPv6"

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/util/DeviceUtils$IP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$IP;->IPv6:Lcom/mopub/common/util/DeviceUtils$IP;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/util/DeviceUtils$IP;

    sget-object v1, Lcom/mopub/common/util/DeviceUtils$IP;->IPv4:Lcom/mopub/common/util/DeviceUtils$IP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/DeviceUtils$IP;->IPv6:Lcom/mopub/common/util/DeviceUtils$IP;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$IP;->$VALUES:[Lcom/mopub/common/util/DeviceUtils$IP;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/util/DeviceUtils$IP;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mopub/common/util/DeviceUtils$IP;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/common/util/DeviceUtils$IP;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mopub/common/util/DeviceUtils$IP;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private matches(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$1;->$SwitchMap$com$mopub$common$util$DeviceUtils$IP:[I

    invoke-virtual {p0}, Lcom/mopub/common/util/DeviceUtils$IP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$1;->$SwitchMap$com$mopub$common$util$DeviceUtils$IP:[I

    invoke-virtual {p0}, Lcom/mopub/common/util/DeviceUtils$IP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 p1, 0x0

    :goto_0
    :pswitch_0
    return-object p1

    .line 94
    :pswitch_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$IP;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/mopub/common/util/DeviceUtils$IP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/util/DeviceUtils$IP;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/util/DeviceUtils$IP;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$IP;->$VALUES:[Lcom/mopub/common/util/DeviceUtils$IP;

    invoke-virtual {v0}, [Lcom/mopub/common/util/DeviceUtils$IP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/DeviceUtils$IP;

    return-object v0
.end method
