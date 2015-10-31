.class Lcom/umeng/socialize/controller/impl/k;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/a$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a$a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/umeng/socialize/bean/UMToken;
    .locals 5
    .parameter

    .prologue
    .line 644
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 649
    const-string v0, ""

    .line 650
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v4, :cond_1

    .line 651
    :cond_0
    const-string v0, "wxsession"

    .line 656
    :goto_0
    new-instance v4, Lcom/umeng/socialize/bean/SNSPair;

    invoke-direct {v4, v0, v2}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {v4, v1, v3}, Lcom/umeng/socialize/bean/UMToken;->buildToken(Lcom/umeng/socialize/bean/SNSPair;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    .line 658
    return-object v0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 701
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 668
    if-eqz p1, :cond_2

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iput-object p1, v0, Lcom/umeng/socialize/controller/impl/a$a;->e:Landroid/os/Bundle;

    .line 673
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/k;->a(Landroid/os/Bundle;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    .line 675
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMToken;->setExpireIn(Ljava/lang/String;)V

    .line 677
    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMToken;->setRefreshToken(Ljava/lang/String;)V

    .line 680
    const-string v1, "scope"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMToken;->setScope(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a$a;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMToken;->setUmengSecret(Ljava/lang/String;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/a$a;->a(Lcom/umeng/socialize/controller/impl/a$a;)Lcom/umeng/socialize/controller/impl/a;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/a$a;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    invoke-virtual {v3}, Lcom/umeng/socialize/controller/impl/a$a;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/socialize/controller/impl/a;->uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/a$a;->a(Lcom/umeng/socialize/controller/impl/a$a;)Lcom/umeng/socialize/controller/impl/a;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    const-string v2, " authorize data is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    .line 691
    const-string v2, "no found access_token"

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-interface {v0, v1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 636
    :cond_0
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    return-void
.end method
