.class Lcom/umeng/socialize/controller/impl/r;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "ShareServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/bean/MultiStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/n;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Lcom/umeng/socialize/bean/UMShareMsg;

.field private final synthetic g:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/n;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/r;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/r;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/r;->f:Lcom/umeng/socialize/bean/UMShareMsg;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/r;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 473
    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/bean/MultiStatus;
    .locals 6

    .prologue
    const/16 v5, -0x66

    .line 489
    new-instance v0, Lcom/umeng/socialize/bean/SNSPair;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/umeng/socialize/controller/impl/n;->a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->e:Landroid/content/Context;

    .line 494
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/umeng/socialize/bean/SNSPair;

    const/4 v4, 0x0

    .line 495
    aput-object v0, v3, v4

    .line 496
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->f:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 493
    invoke-static {v1, v2, v3, v0}, Lcom/umeng/socialize/controller/impl/n;->a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 497
    if-nez v0, :cond_0

    .line 498
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v5}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 513
    :cond_0
    :goto_0
    return-object v0

    .line 502
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    .line 503
    const/16 v1, -0x68

    .line 502
    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 506
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformStatus(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v1

    .line 508
    if-eq v5, v1, :cond_0

    .line 509
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;->setStCode(I)V

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/bean/MultiStatus;)V
    .locals 5
    .parameter

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 520
    invoke-virtual {p1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformStatus(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v1

    .line 521
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->e:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/umeng/socialize/utils/SocializeUtils;->errorHanding(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v2, v0, v1, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 531
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v4, v4, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 530
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/r;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/n;->b:Lcom/umeng/socialize/controller/UMSocialService;

    check-cast v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/controller/impl/n;->a(Lcom/umeng/socialize/controller/impl/n;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V

    .line 536
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 537
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/n;->e(Lcom/umeng/socialize/controller/impl/n;)V

    .line 539
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 540
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/r;->a()Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/r;->a(Lcom/umeng/socialize/bean/MultiStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 477
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/n;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/n;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/n;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 484
    :cond_1
    return-void
.end method
