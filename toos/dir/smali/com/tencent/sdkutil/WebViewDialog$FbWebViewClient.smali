.class Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/WebViewDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/sdkutil/WebViewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/sdkutil/WebViewDialog;Lcom/tencent/sdkutil/WebViewDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;-><init>(Lcom/tencent/sdkutil/WebViewDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    #getter for: Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/tencent/sdkutil/WebViewDialog;->access$900(Lcom/tencent/sdkutil/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 510
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 496
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    #getter for: Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/WebViewDialog;->access$800(Lcom/tencent/sdkutil/WebViewDialog;)Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 486
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog;->dismiss()V

    .line 491
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 519
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 432
    const-string v0, "auth://browser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {p2}, Lcom/tencent/sdkutil/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move v0, v1

    .line 472
    :goto_0
    return v0

    .line 450
    :cond_0
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/sdkutil/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    #getter for: Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/WebViewDialog;->access$800(Lcom/tencent/sdkutil/WebViewDialog;)Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/sdkutil/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->onComplete(Lorg/json/JSONObject;)V

    .line 453
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog;->dismiss()V

    move v0, v1

    .line 454
    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    #getter for: Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/WebViewDialog;->access$800(Lcom/tencent/sdkutil/WebViewDialog;)Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;->onCancel()V

    .line 457
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog;->dismiss()V

    move v0, v1

    .line 458
    goto :goto_0

    .line 459
    :cond_2
    const-string v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/WebViewDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/WebViewDialog;->dismiss()V

    move v0, v1

    .line 462
    goto :goto_0

    .line 463
    :cond_3
    const-string v0, "download://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    const-string v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 466
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 467
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 468
    invoke-static {}, Lcom/tencent/sdkutil/WebViewDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 472
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
