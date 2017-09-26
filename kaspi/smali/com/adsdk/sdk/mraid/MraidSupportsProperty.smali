.class Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
.super Lcom/adsdk/sdk/mraid/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private calendar:Z

.field private inlineVideo:Z

.field private sms:Z

.field private storePicture:Z

.field private tel:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supports: {sms: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->sms:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, "tel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->tel:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, "calendar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->calendar:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, "storePicture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->storePicture:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, "inlineVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->inlineVideo:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCalendar(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->calendar:Z

    .line 153
    return-object p0
.end method

.method public withInlineVideo(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->inlineVideo:Z

    .line 163
    return-object p0
.end method

.method public withSms(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->sms:Z

    .line 142
    return-object p0
.end method

.method public withStorePicture(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->storePicture:Z

    .line 158
    return-object p0
.end method

.method public withTel(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->tel:Z

    .line 148
    return-object p0
.end method
