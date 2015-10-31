.class Lcom/tencent/jsutil/JsDialogListener$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/JsDialogListener;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/JsDialogListener;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string v1, "actionUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v1, "listenerKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-static {v0}, Lcom/tencent/sdkutil/TemporaryStorage;->getListener(I)Lcom/tencent/tauth/IUiListener;

    move-result-object v4

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 47
    new-instance v0, Lcom/tencent/sdkutil/PKDialog;

    iget-object v1, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/jsutil/JsDialogListener;->access$000(Lcom/tencent/jsutil/JsDialogListener;)Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mQQToken:Lcom/tencent/tauth/QQToken;
    invoke-static {v5}, Lcom/tencent/jsutil/JsDialogListener;->access$100(Lcom/tencent/jsutil/JsDialogListener;)Lcom/tencent/tauth/QQToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/PKDialog;->show()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 49
    const-string v0, "JsDialogListener"

    const-string v1, "creatDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/jsutil/JsDialogListener;->access$000(Lcom/tencent/jsutil/JsDialogListener;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51
    const-string v0, "mActivity"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    if-nez v4, :cond_3

    .line 54
    const-string v0, "listener"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    if-nez v4, :cond_4

    .line 57
    const-string v0, "mQQToken"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_4
    const-string v0, "TDialog activity"

    iget-object v1, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/jsutil/JsDialogListener;->access$000(Lcom/tencent/jsutil/JsDialogListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/tencent/sdkutil/TDialog;

    iget-object v1, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/jsutil/JsDialogListener;->access$000(Lcom/tencent/jsutil/JsDialogListener;)Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mQQToken:Lcom/tencent/tauth/QQToken;
    invoke-static {v5}, Lcom/tencent/jsutil/JsDialogListener;->access$100(Lcom/tencent/jsutil/JsDialogListener;)Lcom/tencent/tauth/QQToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->show()V

    goto :goto_0

    .line 61
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Lcom/tencent/sdkutil/WebViewDialog;

    iget-object v1, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/jsutil/JsDialogListener;->access$000(Lcom/tencent/jsutil/JsDialogListener;)Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/jsutil/JsDialogListener$1;->this$0:Lcom/tencent/jsutil/JsDialogListener;

    #getter for: Lcom/tencent/jsutil/JsDialogListener;->mQQToken:Lcom/tencent/tauth/QQToken;
    invoke-static {v5}, Lcom/tencent/jsutil/JsDialogListener;->access$100(Lcom/tencent/jsutil/JsDialogListener;)Lcom/tencent/tauth/QQToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/WebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog;->show()V

    goto :goto_0
.end method
