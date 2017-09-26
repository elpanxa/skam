.class Lcom/avocarrot/androidsdk/InstreamXMLView;
.super Lcom/avocarrot/androidsdk/InstreamView;
.source "InstreamView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;
    }
.end annotation


# instance fields
.field cachedView:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field containerId:I

.field ctaId:I

.field descriptionId:I

.field iconId:I

.field imageId:I

.field resourceLayout:I

.field titleId:I


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;IIIIIII)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 165
    invoke-direct {p0, p1}, Lcom/avocarrot/androidsdk/InstreamView;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;)V

    .line 155
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->resourceLayout:I

    .line 156
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->iconId:I

    .line 157
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->imageId:I

    .line 158
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->containerId:I

    .line 159
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->ctaId:I

    .line 160
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->titleId:I

    .line 161
    iput v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->descriptionId:I

    .line 166
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->cachedView:Ljava/util/WeakHashMap;

    .line 167
    iput p2, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->resourceLayout:I

    .line 168
    iput p6, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->iconId:I

    .line 169
    iput p7, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->imageId:I

    .line 170
    iput p3, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->containerId:I

    .line 171
    iput p8, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->ctaId:I

    .line 172
    iput p4, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->titleId:I

    .line 173
    iput p5, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->descriptionId:I

    .line 174
    return-void
.end method


# virtual methods
.method clear()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method onBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)Landroid/view/View;
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 213
    instance-of v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;

    if-nez v1, :cond_0

    .line 214
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    .line 248
    :goto_0
    return-object p1

    .line 216
    :cond_0
    check-cast v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;

    .line 220
    :try_start_0
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_1
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->description:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_2
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 229
    :cond_3
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 232
    :cond_4
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->ctaBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 233
    iget-object v0, v0, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->ctaBtn:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getCTAText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_5
    new-instance v0, Lcom/avocarrot/androidsdk/InstreamXMLView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/avocarrot/androidsdk/InstreamXMLView$1;-><init>(Lcom/avocarrot/androidsdk/InstreamXMLView;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "InstreamXMLView | Could not bind view"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 179
    iget v1, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->resourceLayout:I

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 180
    if-nez v1, :cond_0

    .line 181
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "InstreamXMLView | Could not inflate view"

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 205
    :goto_0
    return-object v0

    .line 185
    :cond_0
    new-instance v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;

    invoke-direct {v2}, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;-><init>()V

    .line 187
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->titleId:I

    if-eq v0, v3, :cond_1

    .line 188
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->titleId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->title:Landroid/widget/TextView;

    .line 190
    :cond_1
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->descriptionId:I

    if-eq v0, v3, :cond_2

    .line 191
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->descriptionId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->description:Landroid/widget/TextView;

    .line 193
    :cond_2
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->imageId:I

    if-eq v0, v3, :cond_3

    .line 194
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->imageId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->image:Landroid/widget/ImageView;

    .line 196
    :cond_3
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->iconId:I

    if-eq v0, v3, :cond_4

    .line 197
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->iconId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->icon:Landroid/widget/ImageView;

    .line 199
    :cond_4
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->ctaId:I

    if-eq v0, v3, :cond_5

    .line 200
    iget v0, p0, Lcom/avocarrot/androidsdk/InstreamXMLView;->ctaId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avocarrot/androidsdk/InstreamXMLView$InstreamViewHolder;->ctaBtn:Landroid/widget/TextView;

    .line 203
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 205
    goto :goto_0
.end method
