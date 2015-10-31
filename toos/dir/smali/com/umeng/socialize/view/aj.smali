.class Lcom/umeng/socialize/view/aj;
.super Lcom/umeng/socialize/view/wigets/a;
.source "ShareBoard.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ai;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ai;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    iput-object p2, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/aj;)Lcom/umeng/socialize/view/ai;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 140
    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v0}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_shareboard_image"

    .line 141
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ImageView;

    .line 143
    iget v1, p2, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v0}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 148
    const-string v2, "umeng_socialize_shareboard_pltform_name"

    .line 146
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 149
    iget-object v1, p2, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 188
    iget v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    if-ne v0, v2, :cond_1

    .line 189
    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v0}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_gmail_on"

    .line 190
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    if-ne v0, v2, :cond_0

    .line 193
    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v0}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_sms_on"

    .line 194
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v0}, Lcom/umeng/socialize/view/ai;->b(Lcom/umeng/socialize/view/ai;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v1}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v1

    .line 165
    const/16 v2, 0xe

    .line 164
    invoke-virtual {v0, v1, p2, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    .line 173
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 176
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v1}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v2}, Lcom/umeng/socialize/view/ai;->b(Lcom/umeng/socialize/view/ai;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    .line 177
    invoke-virtual {p1, v1, v2, v0}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 180
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/aj;Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/aj;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 95
    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/aj;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 98
    iget-object v1, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v1}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/umeng/socialize/view/aj;->a:Lcom/umeng/socialize/view/ai;

    invoke-static {v2}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/view/ai;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 100
    const-string v4, "umeng_socialize_shareboard_item"

    .line 99
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 100
    const/4 v3, 0x0

    .line 98
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    invoke-direct {p0, v1, v0}, Lcom/umeng/socialize/view/aj;->a(Landroid/view/View;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 106
    new-instance v2, Lcom/umeng/socialize/view/ak;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/view/ak;-><init>(Lcom/umeng/socialize/view/aj;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    return-object v1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/aj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    goto :goto_0
.end method
