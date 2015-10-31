.class Lcom/miantan/myoface/EditorActivity$1;
.super Landroid/os/Handler;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    .line 2373
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/EditorActivity$1;)Lcom/miantan/myoface/EditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 2377
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2502
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2503
    return-void

    .line 2380
    :pswitch_1
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v7}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/miantan/myoface/EditorActivity;->access$0(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2383
    :pswitch_2
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v7}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/miantan/myoface/EditorActivity;->access$0(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2386
    :pswitch_3
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v7}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/miantan/myoface/EditorActivity;->access$0(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2400
    :pswitch_4
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mViewSaving:Landroid/view/View;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$1(Lcom/miantan/myoface/EditorActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2405
    :pswitch_5
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mViewSaving:Landroid/view/View;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$1(Lcom/miantan/myoface/EditorActivity;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2412
    :pswitch_6
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$2(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2419
    :pswitch_7
    :try_start_0
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #calls: Lcom/miantan/myoface/EditorActivity;->getParamV2()Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$3(Lcom/miantan/myoface/EditorActivity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2420
    .local v2, person:Lorg/json/JSONObject;
    const/4 v4, 0x1

    .line 2421
    .local v4, type:I
    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v6

    if-nez v6, :cond_0

    .line 2422
    const/4 v4, 0x1

    .line 2425
    :goto_1
    move v3, v4

    .line 2426
    .local v3, recordid:I
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$5(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miantan/myoface/BasicDataApplication;->getRecordHelper()Lcom/miantan/myoface/RecordHelper;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v2}, Lcom/miantan/myoface/RecordHelper;->addRecord1(IILorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2429
    .end local v2           #person:Lorg/json/JSONObject;
    .end local v3           #recordid:I
    .end local v4           #type:I
    :catch_0
    move-exception v0

    .line 2430
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2424
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #person:Lorg/json/JSONObject;
    .restart local v4       #type:I
    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    .line 2439
    .end local v2           #person:Lorg/json/JSONObject;
    .end local v4           #type:I
    :pswitch_8
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #calls: Lcom/miantan/myoface/EditorActivity;->getParamV2()Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$3(Lcom/miantan/myoface/EditorActivity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2440
    .restart local v2       #person:Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "javascript:initHeadEdit("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2441
    .local v5, url_init:Ljava/lang/String;
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$5(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MSG_START_INIT_HEADEDIT|url_init:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2445
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v6, v6, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2446
    .local v1, msg_start:Landroid/os/Message;
    const/16 v6, 0x9

    iput v6, v1, Landroid/os/Message;->what:I

    .line 2447
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v6, v6, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/miantan/myoface/BasicData;->mLoadingTimeSingle:I

    int-to-long v7, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2457
    .end local v1           #msg_start:Landroid/os/Message;
    .end local v2           #person:Lorg/json/JSONObject;
    .end local v5           #url_init:Ljava/lang/String;
    :pswitch_9
    :try_start_1
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    const v8, 0x7f0b0033

    invoke-virtual {v6, v8}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    #setter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v7, v6}, Lcom/miantan/myoface/EditorActivity;->access$8(Lcom/miantan/myoface/EditorActivity;Landroid/webkit/WebView;)V

    .line 2458
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2460
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2461
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2462
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Landroid/webkit/WebChromeClient;

    invoke-direct {v7}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2464
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Lcom/miantan/myoface/EditorActivity$1$1;

    invoke-direct {v7, p0}, Lcom/miantan/myoface/EditorActivity$1$1;-><init>(Lcom/miantan/myoface/EditorActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2490
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, "headEdit"

    invoke-virtual {v6, p0, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, "file:///android_asset/headEdit.html"

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2492
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->reload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2495
    :catch_1
    move-exception v0

    .line 2496
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2497
    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$1;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v7}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/miantan/myoface/EditorActivity;->ShowToastForErrTips(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/miantan/myoface/EditorActivity;->access$9(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method
