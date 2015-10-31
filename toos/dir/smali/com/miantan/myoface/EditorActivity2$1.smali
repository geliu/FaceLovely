.class Lcom/miantan/myoface/EditorActivity2$1;
.super Landroid/os/Handler;
.source "EditorActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 3187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/EditorActivity2$1;)Lcom/miantan/myoface/EditorActivity2;
    .locals 1
    .parameter

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 3192
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3396
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3397
    return-void

    .line 3195
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v5}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$0(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V

    goto :goto_0

    .line 3198
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v5}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$0(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V

    goto :goto_0

    .line 3201
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v5}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$0(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V

    goto :goto_0

    .line 3215
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mViewSaving:Landroid/view/View;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$1(Lcom/miantan/myoface/EditorActivity2;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3220
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mViewSaving:Landroid/view/View;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$1(Lcom/miantan/myoface/EditorActivity2;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3227
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->relativelayoutLoading:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$2(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 3234
    :pswitch_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x0

    #calls: Lcom/miantan/myoface/EditorActivity2;->getParamV2(I)Lorg/json/JSONObject;
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$3(Lcom/miantan/myoface/EditorActivity2;I)Lorg/json/JSONObject;

    move-result-object v17

    .line 3235
    .local v17, person1:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x1

    #calls: Lcom/miantan/myoface/EditorActivity2;->getParamV2(I)Lorg/json/JSONObject;
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$3(Lcom/miantan/myoface/EditorActivity2;I)Lorg/json/JSONObject;

    move-result-object v18

    .line 3236
    .local v18, person2:Lorg/json/JSONObject;
    const/16 v21, 0x3

    .line 3237
    .local v21, type:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    if-nez v4, :cond_2

    .line 3238
    const/16 v21, 0x3

    .line 3243
    :cond_1
    :goto_1
    move/from16 v19, v21

    .line 3244
    .local v19, recordid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miantan/myoface/BasicDataApplication;->getRecordHelper()Lcom/miantan/myoface/RecordHelper;

    move-result-object v4

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miantan/myoface/RecordHelper;->addRecord2(IILorg/json/JSONObject;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3247
    .end local v17           #person1:Lorg/json/JSONObject;
    .end local v18           #person2:Lorg/json/JSONObject;
    .end local v19           #recordid:I
    .end local v21           #type:I
    :catch_0
    move-exception v14

    .line 3248
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3239
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v17       #person1:Lorg/json/JSONObject;
    .restart local v18       #person2:Lorg/json/JSONObject;
    .restart local v21       #type:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3240
    const/16 v21, 0x4

    goto :goto_1

    .line 3241
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3242
    const/16 v21, 0x5

    goto :goto_1

    .line 3260
    .end local v17           #person1:Lorg/json/JSONObject;
    .end local v18           #person2:Lorg/json/JSONObject;
    .end local v21           #type:I
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "javascript:initTwoPerson("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v6, 0x0

    #calls: Lcom/miantan/myoface/EditorActivity2;->getParamV2(I)Lorg/json/JSONObject;
    invoke-static {v5, v6}, Lcom/miantan/myoface/EditorActivity2;->access$3(Lcom/miantan/myoface/EditorActivity2;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v6, 0x1

    #calls: Lcom/miantan/myoface/EditorActivity2;->getParamV2(I)Lorg/json/JSONObject;
    invoke-static {v5, v6}, Lcom/miantan/myoface/EditorActivity2;->access$3(Lcom/miantan/myoface/EditorActivity2;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3261
    .local v22, url_init:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url_init:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v4, v4, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 3266
    .local v16, msg_start:Landroid/os/Message;
    const/16 v4, 0x9

    move-object/from16 v0, v16

    iput v4, v0, Landroid/os/Message;->what:I

    .line 3267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v4, v4, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/miantan/myoface/BasicData;->mLoadingTimeDouble:I

    int-to-long v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3277
    .end local v16           #msg_start:Landroid/os/Message;
    .end local v22           #url_init:Ljava/lang/String;
    :pswitch_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const v6, 0x7f0b0033

    invoke-virtual {v4, v6}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    #setter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v5, v4}, Lcom/miantan/myoface/EditorActivity2;->access$8(Lcom/miantan/myoface/EditorActivity2;Landroid/webkit/WebView;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 3281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Landroid/webkit/WebChromeClient;

    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Lcom/miantan/myoface/EditorActivity2$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/miantan/myoface/EditorActivity2$1$1;-><init>(Lcom/miantan/myoface/EditorActivity2$1;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const-string v5, "headEdit2"

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const-string v5, "file:///android_asset/headEdit2.html"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->reload()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3315
    :catch_1
    move-exception v14

    .line 3316
    .restart local v14       #e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 3317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v5}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080066

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/miantan/myoface/EditorActivity2;->ShowToastForErrTips(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$9(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3324
    .end local v14           #e:Ljava/lang/Exception;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x0

    #calls: Lcom/miantan/myoface/EditorActivity2;->setPosition(I)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$10(Lcom/miantan/myoface/EditorActivity2;I)V

    goto/16 :goto_0

    .line 3330
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x1

    #calls: Lcom/miantan/myoface/EditorActivity2;->setPosition(I)V
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$10(Lcom/miantan/myoface/EditorActivity2;I)V

    goto/16 :goto_0

    .line 3335
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v4}, Lcom/miantan/myoface/EditorActivity2;->savePicture()V

    .line 3339
    sget-boolean v4, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v4, :cond_0

    .line 3340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->sp_save:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$11(Lcom/miantan/myoface/EditorActivity2;)Landroid/media/SoundPool;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->music_save:I
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$12(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v5

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_0

    .line 3350
    :pswitch_d
    :try_start_3
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const-class v5, Lcom/miantan/myoface/ShareHelperActivity;

    invoke-direct {v15, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3352
    .local v15, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 3354
    .local v11, bitWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3357
    .local v7, bitHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    sub-int v5, v11, v7

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v7

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 3358
    .local v23, webview_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 3360
    if-nez v23, :cond_4

    .line 3361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "webview_bitmap is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    :cond_4
    move-object/from16 v12, v23

    .line 3365
    .local v12, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v12}, Lcom/miantan/myoface/BitmapStore;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3367
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 3368
    .local v13, bundle:Landroid/os/Bundle;
    const-string v20, "dmode0"

    .line 3369
    .local v20, strfrom:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    if-nez v4, :cond_5

    .line 3370
    const-string v20, "dmode0"

    .line 3371
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 3372
    const-string v20, "dmode1"

    .line 3373
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 3374
    const-string v20, "dmode2"

    .line 3375
    :cond_7
    const-string v4, "from"

    move-object/from16 v0, v20

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    invoke-virtual {v15, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x0

    invoke-virtual {v4, v15, v5}, Lcom/miantan/myoface/EditorActivity2;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x0

    #setter for: Lcom/miantan/myoface/EditorActivity2;->isSharing:Z
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$13(Lcom/miantan/myoface/EditorActivity2;Z)V

    goto/16 :goto_0

    .line 3384
    .end local v7           #bitHeight:I
    .end local v11           #bitWidth:I
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #bundle:Landroid/os/Bundle;
    .end local v15           #i:Landroid/content/Intent;
    .end local v20           #strfrom:Ljava/lang/String;
    .end local v23           #webview_bitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v14

    .line 3385
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v5, 0x0

    #setter for: Lcom/miantan/myoface/EditorActivity2;->isSharing:Z
    invoke-static {v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$13(Lcom/miantan/myoface/EditorActivity2;Z)V

    goto/16 :goto_0

    .line 3388
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 3389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miantan/myoface/EditorActivity2$1;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v6, 0x0

    #setter for: Lcom/miantan/myoface/EditorActivity2;->isSharing:Z
    invoke-static {v5, v6}, Lcom/miantan/myoface/EditorActivity2;->access$13(Lcom/miantan/myoface/EditorActivity2;Z)V

    .line 3390
    throw v4

    .line 3192
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method
