.class Lcom/miantan/myoface/EditorActivity2$1$1;
.super Landroid/webkit/WebViewClient;
.source "EditorActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity2$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miantan/myoface/EditorActivity2$1;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$1$1;->this$1:Lcom/miantan/myoface/EditorActivity2$1;

    .line 3284
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3299
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$1$1;->this$1:Lcom/miantan/myoface/EditorActivity2$1;

    #getter for: Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity2$1;->access$0(Lcom/miantan/myoface/EditorActivity2$1;)Lcom/miantan/myoface/EditorActivity2;

    move-result-object v1

    iget-object v1, v1, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3300
    .local v0, msg_init:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3301
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$1$1;->this$1:Lcom/miantan/myoface/EditorActivity2$1;

    #getter for: Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity2$1;->access$0(Lcom/miantan/myoface/EditorActivity2$1;)Lcom/miantan/myoface/EditorActivity2;

    move-result-object v1

    iget-object v1, v1, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3304
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 3289
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3290
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 3308
    return-void
.end method
