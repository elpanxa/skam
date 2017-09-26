.class public final Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;,
        Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 44
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 59
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 60
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void

    :cond_0
    move-object v0, v1

    .line 60
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    sget-object v1, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    :cond_0
    return-void
.end method
