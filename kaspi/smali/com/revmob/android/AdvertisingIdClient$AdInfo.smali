.class public final Lcom/revmob/android/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/android/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
