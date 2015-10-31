.class Lcom/tencent/sdkutil/TDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/sdkutil/TDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/sdkutil/TDialog;Lcom/tencent/sdkutil/TDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;-><init>(Lcom/tencent/sdkutil/TDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1100(Lcom/tencent/sdkutil/TDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 532
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 518
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
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
    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mListener:Lcom/tencent/sdkutil/TDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1200(Lcom/tencent/sdkutil/TDialog;)Lcom/tencent/sdkutil/TDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/sdkutil/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 507
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    .line 512
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
    .line 540
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 541
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 446
    const-string v0, "auth://browser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    invoke-static {p2}, Lcom/tencent/sdkutil/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 448
    const-string v2, "olddata"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    iget-object v3, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #calls: Lcom/tencent/sdkutil/TDialog;->authWithBrowser()Z
    invoke-static {v3}, Lcom/tencent/sdkutil/TDialog;->access$900(Lcom/tencent/sdkutil/TDialog;)Z

    move-result v3

    #setter for: Lcom/tencent/sdkutil/TDialog;->isBrowserStarted:Z
    invoke-static {v2, v3}, Lcom/tencent/sdkutil/TDialog;->access$802(Lcom/tencent/sdkutil/TDialog;Z)Z

    .line 453
    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->isBrowserStarted:Z
    invoke-static {v2}, Lcom/tencent/sdkutil/TDialog;->access$800(Lcom/tencent/sdkutil/TDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    .line 495
    :goto_1
    return v0

    .line 455
    :cond_1
    const-string v2, "fail_cb"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    const-string v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/tencent/sdkutil/TDialog;->callJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 460
    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1000(Lcom/tencent/sdkutil/TDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    const-string v0, "&"

    :goto_2
    invoke-static {v2, v0}, Lcom/tencent/sdkutil/TDialog;->access$1084(Lcom/tencent/sdkutil/TDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    const-string v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/sdkutil/TDialog;->access$1084(Lcom/tencent/sdkutil/TDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1100(Lcom/tencent/sdkutil/TDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/sdkutil/TDialog;->access$1000(Lcom/tencent/sdkutil/TDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_3
    const-string v0, "?"

    goto :goto_2

    .line 466
    :cond_4
    const-string v2, "redir"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    .line 468
    iget-object v2, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/tencent/sdkutil/TDialog;->access$1100(Lcom/tencent/sdkutil/TDialog;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_5
    invoke-static {}, Lcom/tencent/sdkutil/ServerSetting;->getInstance()Lcom/tencent/sdkutil/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/sdkutil/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mListener:Lcom/tencent/sdkutil/TDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1200(Lcom/tencent/sdkutil/TDialog;)Lcom/tencent/sdkutil/TDialog$OnTimeListener;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/sdkutil/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/sdkutil/TDialog$OnTimeListener;->onComplete(Lorg/json/JSONObject;)V

    .line 476
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    move v0, v1

    .line 477
    goto/16 :goto_1

    .line 478
    :cond_6
    const-string v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    #getter for: Lcom/tencent/sdkutil/TDialog;->mListener:Lcom/tencent/sdkutil/TDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/sdkutil/TDialog;->access$1200(Lcom/tencent/sdkutil/TDialog;)Lcom/tencent/sdkutil/TDialog$OnTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog$OnTimeListener;->onCancel()V

    .line 480
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    move v0, v1

    .line 481
    goto/16 :goto_1

    .line 482
    :cond_7
    const-string v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 484
    iget-object v0, p0, Lcom/tencent/sdkutil/TDialog$FbWebViewClient;->this$0:Lcom/tencent/sdkutil/TDialog;

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->dismiss()V

    move v0, v1

    .line 485
    goto/16 :goto_1

    .line 486
    :cond_8
    const-string v0, "download://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 488
    const-string v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 489
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 490
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 491
    invoke-static {}, Lcom/tencent/sdkutil/TDialog;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    move v0, v1

    .line 493
    goto/16 :goto_1

    .line 495
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
