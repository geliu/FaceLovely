.class Lcom/tencent/jsutil/PackIUiListener$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/PackIUiListener;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/PackIUiListener;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tencent/jsutil/PackIUiListener$1;->this$0:Lcom/tencent/jsutil/PackIUiListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 26
    iget-object v1, p0, Lcom/tencent/jsutil/PackIUiListener$1;->this$0:Lcom/tencent/jsutil/PackIUiListener;

    #getter for: Lcom/tencent/jsutil/PackIUiListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;
    invoke-static {v1}, Lcom/tencent/jsutil/PackIUiListener;->access$000(Lcom/tencent/jsutil/PackIUiListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/jsutil/PackIUiListener$1;->this$0:Lcom/tencent/jsutil/PackIUiListener;

    #getter for: Lcom/tencent/jsutil/PackIUiListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;
    invoke-static {v0}, Lcom/tencent/jsutil/PackIUiListener;->access$000(Lcom/tencent/jsutil/PackIUiListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto :goto_0

    .line 32
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tauth/UiError;

    .line 33
    iget-object v1, p0, Lcom/tencent/jsutil/PackIUiListener$1;->this$0:Lcom/tencent/jsutil/PackIUiListener;

    #getter for: Lcom/tencent/jsutil/PackIUiListener;->mIUiListener:Lcom/tencent/tauth/IUiListener;
    invoke-static {v1}, Lcom/tencent/jsutil/PackIUiListener;->access$000(Lcom/tencent/jsutil/PackIUiListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
