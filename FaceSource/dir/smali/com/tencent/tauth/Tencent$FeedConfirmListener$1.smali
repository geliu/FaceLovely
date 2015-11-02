.class Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;
.super Lcom/tencent/tauth/Tencent$FeedConfirmListener$ButtonListener;
.source "ProGuard"


# instance fields
.field final synthetic this$1:Lcom/tencent/tauth/Tencent$FeedConfirmListener;

.field final synthetic val$response:Lorg/json/JSONObject;

.field final synthetic val$userListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->this$1:Lcom/tencent/tauth/Tencent$FeedConfirmListener;

    iput-object p3, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->val$userListener:Lcom/tencent/tauth/IUiListener;

    iput-object p4, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->val$response:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/tencent/tauth/Tencent$FeedConfirmListener$ButtonListener;-><init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->this$1:Lcom/tencent/tauth/Tencent$FeedConfirmListener;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->sendFeedConfirmCgi()V

    .line 1549
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->val$userListener:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->val$userListener:Lcom/tencent/tauth/IUiListener;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;->val$response:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 1555
    :cond_1
    return-void
.end method
