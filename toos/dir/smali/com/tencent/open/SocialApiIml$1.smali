.class Lcom/tencent/open/SocialApiIml$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/VoiceHelper$ImageCallback;


# instance fields
.field final synthetic this$0:Lcom/tencent/open/SocialApiIml;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tencent/open/SocialApiIml;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/tencent/open/SocialApiIml$1;->this$0:Lcom/tencent/open/SocialApiIml;

    iput-object p2, p0, Lcom/tencent/open/SocialApiIml$1;->val$params:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/open/SocialApiIml$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tencent/open/SocialApiIml$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$1;->val$params:Landroid/os/Bundle;

    const-string v1, "image_date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x5

    const-string v2, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    const-string v3, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/tencent/open/SocialApiIml$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 369
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$1;->this$0:Lcom/tencent/open/SocialApiIml;

    #calls: Lcom/tencent/open/SocialApiIml;->dismissProgressDl()V
    invoke-static {v0}, Lcom/tencent/open/SocialApiIml;->access$000(Lcom/tencent/open/SocialApiIml;)V

    .line 370
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$1;->val$params:Landroid/os/Bundle;

    const-string v1, "image_date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$1;->val$params:Landroid/os/Bundle;

    const-string v1, "image_date"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/SocialApiIml$1;->this$0:Lcom/tencent/open/SocialApiIml;

    iget-object v1, p0, Lcom/tencent/open/SocialApiIml$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/open/SocialApiIml$1;->val$params:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/open/SocialApiIml$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    #calls: Lcom/tencent/open/SocialApiIml;->startVoiceView(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/open/SocialApiIml;->access$300(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 362
    return-void
.end method
