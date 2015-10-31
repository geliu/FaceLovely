.class Lcom/tencent/open/SocialApiIml$EncryptTokenListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mListener:Lcom/tencent/tauth/IUiListener;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/open/SocialApiIml;


# direct methods
.method constructor <init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->this$0:Lcom/tencent/open/SocialApiIml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mListener:Lcom/tencent/tauth/IUiListener;

    .line 515
    iput-object p3, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mAction:Ljava/lang/String;

    .line 516
    iput-object p4, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mUrl:Ljava/lang/String;

    .line 517
    iput-object p5, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mBundle:Landroid/os/Bundle;

    .line 518
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 553
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 7
    .parameter

    .prologue
    .line 522
    .line 523
    const/4 v0, 0x0

    .line 525
    :try_start_0
    const-string v1, "encry_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mBundle:Landroid/os/Bundle;

    const-string v1, "encrytoken"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->this$0:Lcom/tencent/open/SocialApiIml;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->this$0:Lcom/tencent/open/SocialApiIml;

    #getter for: Lcom/tencent/open/SocialApiIml;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->access$100(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mListener:Lcom/tencent/tauth/IUiListener;

    #calls: Lcom/tencent/open/SocialApiIml;->showDialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    invoke-static/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->access$400(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    .line 537
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "miles"

    const-string v1, "The token get from qq or qzone is empty. Write temp token to localstorage."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->this$0:Lcom/tencent/open/SocialApiIml;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->this$0:Lcom/tencent/open/SocialApiIml;

    #getter for: Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->access$500(Lcom/tencent/open/SocialApiIml;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/SocialApiIml;->writeEncryToken(Landroid/content/Context;)V

    .line 541
    :cond_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    .line 527
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 528
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v2

    const-string v3, "openSDK_LOG"

    const-string v4, "OpenApi, EncrytokenListener() onComplete error"

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/record/debug/WnsClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v0

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4
    .parameter

    .prologue
    .line 545
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const-string v1, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApi, EncryptTokenListener() onError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$EncryptTokenListener;->mListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 548
    return-void
.end method
