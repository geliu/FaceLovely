.class Lcom/tencent/sdkutil/TDialog$JsListener;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/sdkutil/TDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/sdkutil/TDialog;Lcom/tencent/sdkutil/TDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/tencent/sdkutil/TDialog$JsListener;-><init>(Lcom/tencent/sdkutil/TDialog;)V

    return-void
.end method


# virtual methods
.method public onAddShare(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/tencent/sdkutil/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$700(Lcom/tencent/sdkutil/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 422
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    .line 423
    return-void
.end method

.method public onCancelAddShare(I)V
    .locals 1
    .parameter

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onCancelInvite()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onCancelLogin()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$700(Lcom/tencent/sdkutil/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    const-string v0, "onComplete"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    .line 418
    return-void
.end method

.method public onInvite(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/tencent/sdkutil/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$700(Lcom/tencent/sdkutil/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$JsListener;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$700(Lcom/tencent/sdkutil/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 428
    return-void
.end method
