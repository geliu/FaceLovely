.class Lcom/tencent/jsutil/JsTokenListener$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/JsTokenListener;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/JsTokenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/jsutil/JsTokenListener$1;->this$0:Lcom/tencent/jsutil/JsTokenListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener$1;->this$0:Lcom/tencent/jsutil/JsTokenListener;

    #calls: Lcom/tencent/jsutil/JsTokenListener;->doComplete(Lorg/json/JSONObject;)V
    invoke-static {v1, v0}, Lcom/tencent/jsutil/JsTokenListener;->access$000(Lcom/tencent/jsutil/JsTokenListener;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tauth/UiError;

    .line 38
    iget-object v1, p0, Lcom/tencent/jsutil/JsTokenListener$1;->this$0:Lcom/tencent/jsutil/JsTokenListener;

    #calls: Lcom/tencent/jsutil/JsTokenListener;->doError(Lcom/tencent/tauth/UiError;)V
    invoke-static {v1, v0}, Lcom/tencent/jsutil/JsTokenListener;->access$100(Lcom/tencent/jsutil/JsTokenListener;Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/jsutil/JsTokenListener$1;->this$0:Lcom/tencent/jsutil/JsTokenListener;

    #calls: Lcom/tencent/jsutil/JsTokenListener;->doCancel()V
    invoke-static {v0}, Lcom/tencent/jsutil/JsTokenListener;->access$200(Lcom/tencent/jsutil/JsTokenListener;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
