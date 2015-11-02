.class Lcom/tencent/tauth/Tencent$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/Tencent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/Tencent;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$3;->this$0:Lcom/tencent/tauth/Tencent;

    iput-object p2, p0, Lcom/tencent/tauth/Tencent$3;->val$params:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/tauth/Tencent$3;->val$listener:Lcom/tencent/tauth/IUiListener;

    iput-object p4, p0, Lcom/tencent/tauth/Tencent$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 971
    const-string v0, "params"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent$3;->val$params:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v0, Lcom/tencent/tauth/Tencent;->mBridge:Lcom/tencent/jsutil/JsBridge;

    const-string v1, "reportUtils.startQQ4Connect"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$3;->this$0:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent$3;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tauth/Tencent;->parseBundleToJSON4QQShare(Landroid/os/Bundle;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/tencent/tauth/Tencent$3;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/tauth/Tencent;->access$100(Lcom/tencent/tauth/Tencent;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/tencent/tauth/Tencent$3;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-static {v1}, Lcom/tencent/sdkutil/TemporaryStorage;->setListener(Lcom/tencent/tauth/IUiListener;)V

    .line 977
    :cond_0
    sget-object v1, Lcom/tencent/tauth/Tencent;->mController:Lcom/tencent/jsutil/JumpController;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/tencent/jsutil/JumpController;->setActivity(Landroid/app/Activity;)V

    .line 978
    sget-object v1, Lcom/tencent/tauth/Tencent;->mJsDialogListener:Lcom/tencent/jsutil/JsDialogListener;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/tencent/jsutil/JsDialogListener;->setActivity(Landroid/app/Activity;)V

    .line 979
    sget-object v1, Lcom/tencent/tauth/Tencent;->appUtils:Lcom/tencent/sdkutil/AppUtils;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/tencent/sdkutil/AppUtils;->setActivity(Landroid/app/Activity;)V

    .line 988
    sget-object v1, Lcom/tencent/tauth/Tencent;->mBridge:Lcom/tencent/jsutil/JsBridge;

    const-string v2, "tencent.share.shareMessageToQQ"

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 990
    return-void
.end method
