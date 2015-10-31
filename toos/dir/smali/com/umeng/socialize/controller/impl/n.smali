.class public final Lcom/umeng/socialize/controller/impl/n;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/ShareService;


# static fields
.field public static d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field a:Lcom/umeng/socialize/bean/SocializeEntity;

.field b:Lcom/umeng/socialize/controller/UMSocialService;

.field c:Lcom/umeng/socialize/bean/SocializeConfig;

.field private e:Z

.field private f:Lcom/umeng/socialize/view/ai;

.field private g:Landroid/app/ProgressDialog;

.field private h:Z

.field private final i:Ljava/lang/String;

.field private j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 85
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 89
    iput-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 91
    iput-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    .line 96
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    .line 98
    const-class v0, Lcom/umeng/socialize/controller/impl/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 112
    return-void
.end method

.method private a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v7, -0x67

    .line 565
    if-nez p3, :cond_0

    .line 566
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 600
    :goto_0
    return-object v0

    .line 568
    :cond_0
    iget-object v0, p3, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 570
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 571
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 575
    new-instance v6, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v6}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    .line 576
    new-instance v0, Lcom/umeng/socialize/net/r;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 577
    aget-object v1, p2, v4

    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    aget-object v1, p2, v4

    iget-object v4, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p3

    .line 576
    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/r;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v1

    .line 578
    if-nez v1, :cond_3

    .line 579
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 582
    :cond_3
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    iget-object v1, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_4
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    .line 586
    new-instance v1, Lcom/umeng/socialize/net/p;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/p;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    .line 585
    check-cast v0, Lcom/umeng/socialize/net/q;

    .line 588
    if-nez v0, :cond_5

    .line 589
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 591
    :cond_5
    const-string v1, ""

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### ShareMultiResponse toString : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/net/q;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, v0, Lcom/umeng/socialize/net/q;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_6

    .line 595
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v0, Lcom/umeng/socialize/net/q;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/socialize/net/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_6
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v0, Lcom/umeng/socialize/net/q;->mStCode:I

    iget-object v3, v0, Lcom/umeng/socialize/net/q;->mMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    .line 599
    iget-object v0, v0, Lcom/umeng/socialize/net/q;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    move-object v0, v1

    .line 600
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;)Lcom/umeng/socialize/view/ai;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    return-object v0
.end method

.method private final a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 122
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    new-instance v0, Lcom/umeng/socialize/controller/impl/p;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/p;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/app/Activity;)V

    .line 267
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 268
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/UMSocialService;->setShareContent(Ljava/lang/String;)V

    .line 169
    :cond_0
    if-eqz p3, :cond_1

    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v1, p1, p3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;[B)V

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    const-string v0, "dc"

    .line 389
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 388
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v0, "sns"

    .line 391
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iput-boolean v3, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 399
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 454
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 405
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 409
    :cond_2
    const-string v0, ""

    .line 408
    invoke-static {p1, p2, v0, v3}, Lcom/umeng/socialize/utils/LoadingDialog;->createProgressDialog(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    .line 410
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 411
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 414
    :cond_3
    new-instance v0, Lcom/umeng/socialize/controller/impl/q;

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/umeng/socialize/controller/impl/q;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V

    .line 450
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 452
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, p2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 613
    new-instance v0, Lcom/umeng/socialize/controller/impl/s;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/s;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;)V

    .line 623
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/s;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 624
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    instance-of v0, v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    check-cast v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    .line 552
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/impl/InitializeController;->a(Landroid/content/Context;)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/n;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 632
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 633
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 635
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/socialize/utils/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    const-string v2, "image_uri_cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->saveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    :cond_0
    return-void

    .line 635
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 637
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 873
    sget-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lcom/umeng/socialize/controller/impl/v;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/v;-><init>(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 905
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 706
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 713
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    .line 711
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v2, "### activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return v0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ai;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    const-string v1, "\u5206\u4eab\u9762\u677f\u5df2\u6253\u5f00"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v1, p1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v2, "### \u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v1, "\u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/n;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 726
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 727
    if-eqz v0, :cond_0

    .line 728
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1, v1, p3}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 731
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/umeng/socialize/controller/impl/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/umeng/socialize/controller/impl/n;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->b()V

    return-void
.end method


# virtual methods
.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 658
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 662
    :cond_0
    if-nez p3, :cond_1

    .line 663
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 666
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 669
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 670
    const/16 v1, 0x8

    .line 669
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 672
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_2

    .line 674
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 681
    :goto_1
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;)V

    .line 683
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 685
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 677
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    .line 688
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public dismissShareBoard()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ai;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ai;->dismiss()V

    .line 927
    :cond_0
    return-void
.end method

.method public openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 201
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 203
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 207
    const/4 v2, 0x1

    .line 206
    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 208
    iput-object v5, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 209
    new-instance v0, Lcom/umeng/socialize/view/abs/b;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/b;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 211
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v1, Lcom/umeng/socialize/view/ai;

    .line 214
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/socialize/view/ai;-><init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/b;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 213
    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    .line 216
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {v1, v5}, Lcom/umeng/socialize/view/ai;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/ai;->a(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V

    .line 218
    new-instance v1, Lcom/umeng/socialize/controller/impl/o;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/impl/o;-><init>(Lcom/umeng/socialize/controller/impl/n;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/b;->a(Landroid/view/View$OnClickListener;)V

    .line 226
    if-eqz p2, :cond_1

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->f:Lcom/umeng/socialize/view/ai;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 234
    const/16 v2, 0x50

    .line 233
    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/umeng/socialize/view/ai;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    iput-boolean p2, p0, Lcom/umeng/socialize/controller/impl/n;->h:Z

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/n;->openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 188
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 324
    :cond_0
    if-nez p3, :cond_1

    .line 325
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 329
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 330
    const/4 v1, 0x2

    .line 329
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 333
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/n;->b(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/n;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 340
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-static {p3}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 365
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v4

    .line 367
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 374
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/n;->postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 369
    :cond_1
    new-instance v4, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v4}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-static {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v7

    .line 471
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 473
    new-instance v0, Lcom/umeng/socialize/controller/impl/r;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/r;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 541
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/r;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 542
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 831
    new-instance v0, Lcom/umeng/socialize/controller/impl/u;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/u;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 864
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/u;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 865
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    if-nez p1, :cond_1

    .line 746
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v1, "\u8bf7\u4f20\u9012\u4e00\u4e2a\u6709\u6548\u7684Context\u5bf9\u8c61"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_3

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    const-string v1, "\u5206\u4eab\u7684\u5e73\u53f0\u4e3a\u7a7a\uff0c\u8bf7\u4f20\u9012\u6709\u6548\u7684\u5206\u4eab\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_3
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 757
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 758
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getShareMultiPlatforms()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 759
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 760
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 761
    if-eqz p3, :cond_7

    .line 762
    array-length v3, p3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_4

    .line 769
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 772
    :goto_2
    invoke-static {p1, v6, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getOauthedPlatforms(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;

    move-result-object v4

    .line 774
    new-instance v5, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v5}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 775
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 777
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    .line 779
    new-instance v0, Lcom/umeng/socialize/controller/impl/t;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/t;-><init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;Ljava/util/Map;)V

    .line 813
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/t;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0

    .line 762
    :cond_4
    aget-object v4, p3, v0

    .line 763
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 764
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 766
    :cond_5
    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/n;->i:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e0d\u652f\u6301\u4e00\u952e\u5206\u4eab\u5230\u591a\u4e2a\u5e73\u53f0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 816
    :cond_6
    if-eqz p2, :cond_0

    .line 817
    invoke-interface {p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 818
    const/16 v0, -0x69

    .line 819
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 820
    invoke-virtual {v1, v6}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    .line 821
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {p2, v1, v0, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p3

    goto :goto_2
.end method

.method public setShareBoardListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/n;->j:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    .line 916
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 306
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 307
    return-void
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 299
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 300
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 139
    invoke-direct {p0, p1, p3, p4}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/n;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 141
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/n;->a()V

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/n;->openShare(Landroid/app/Activity;Z)V

    .line 157
    return-void
.end method
