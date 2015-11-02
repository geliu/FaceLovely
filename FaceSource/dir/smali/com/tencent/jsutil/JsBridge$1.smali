.class Lcom/tencent/jsutil/JsBridge$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/JsBridge;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/JsBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/jsutil/JsBridge$1;->this$0:Lcom/tencent/jsutil/JsBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 90
    const-string v0, "JsBridge"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v1, "JsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge$1;->this$0:Lcom/tencent/jsutil/JsBridge;

    #getter for: Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/tencent/jsutil/JsBridge;->access$000(Lcom/tencent/jsutil/JsBridge;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
