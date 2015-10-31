.class Lcom/miantan/myoface/HistroyActivity$1;
.super Landroid/os/Handler;
.source "HistroyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/HistroyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/HistroyActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/HistroyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/HistroyActivity$1;)Lcom/miantan/myoface/HistroyActivity;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 285
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 476
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 477
    :cond_1
    return-void

    .line 289
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$0(Lcom/miantan/myoface/HistroyActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miantan/myoface/BasicDataApplication;->getRecordHelper()Lcom/miantan/myoface/RecordHelper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miantan/myoface/RecordHelper;->getList()Ljava/util/List;

    move-result-object v9

    .line 305
    .local v9, listJSON:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "javascript:initHistoryList("

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 308
    .local v19, url_init:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .line 312
    .local v14, msg_start:Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v14, Landroid/os/Message;->what:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    sget v21, Lcom/miantan/myoface/BasicData;->mLoadingTimeHistory:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 321
    .end local v9           #listJSON:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v14           #msg_start:Landroid/os/Message;
    .end local v19           #url_init:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "id"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 323
    .local v7, id:I
    if-ltz v7, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$0(Lcom/miantan/myoface/HistroyActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miantan/myoface/BasicDataApplication;->getRecordHelper()Lcom/miantan/myoface/RecordHelper;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/miantan/myoface/RecordHelper;->getJSONObjectById(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 330
    .local v8, json:Lorg/json/JSONObject;
    const/4 v15, 0x0

    .local v15, person:Lorg/json/JSONObject;
    const/16 v16, 0x0

    .local v16, person1:Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 331
    .local v17, person2:Lorg/json/JSONObject;
    :try_start_0
    const-string v20, "count"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 332
    .local v3, count:I
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 333
    .local v18, type:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_2

    .line 335
    const-string v20, "personTagA"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 337
    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 339
    const-string v20, "personTagA"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 340
    const-string v20, "personTagB"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 342
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 344
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v11, maleintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v10, malebundle:Landroid/os/Bundle;
    const-string v20, "editType"

    const-string v21, "edit"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v20, "sexualType"

    const-string v21, "male"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v20, "person"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/miantan/myoface/HistroyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    const v22, 0x7f040008

    invoke-virtual/range {v20 .. v22}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 408
    .end local v3           #count:I
    .end local v10           #malebundle:Landroid/os/Bundle;
    .end local v11           #maleintent:Landroid/content/Intent;
    .end local v18           #type:I
    :catch_0
    move-exception v4

    .line 410
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 354
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v3       #count:I
    .restart local v18       #type:I
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 356
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v6, femaleIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v5, femaleBundle:Landroid/os/Bundle;
    const-string v20, "editType"

    const-string v21, "edit"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v20, "sexualType"

    const-string v21, "female"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v20, "person"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/miantan/myoface/HistroyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    const v22, 0x7f040008

    invoke-virtual/range {v20 .. v22}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 366
    .end local v5           #femaleBundle:Landroid/os/Bundle;
    .end local v6           #femaleIntent:Landroid/content/Intent;
    :cond_5
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 368
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v13, modeintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 370
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v12, modebundle:Landroid/os/Bundle;
    const-string v20, "dmode"

    const-string v21, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v20, "editType"

    const-string v21, "edit"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v20, "person1"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v20, "person2"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/miantan/myoface/HistroyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    const v22, 0x7f040008

    invoke-virtual/range {v20 .. v22}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 379
    .end local v12           #modebundle:Landroid/os/Bundle;
    .end local v13           #modeintent:Landroid/content/Intent;
    :cond_6
    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 381
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 382
    .restart local v13       #modeintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 383
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 384
    .restart local v12       #modebundle:Landroid/os/Bundle;
    const-string v20, "dmode"

    const-string v21, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v20, "editType"

    const-string v21, "edit"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v20, "person1"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v20, "person2"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/miantan/myoface/HistroyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    const v22, 0x7f040008

    invoke-virtual/range {v20 .. v22}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 392
    .end local v12           #modebundle:Landroid/os/Bundle;
    .end local v13           #modeintent:Landroid/content/Intent;
    :cond_7
    const/16 v20, 0x5

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 394
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 395
    .restart local v13       #modeintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 396
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 397
    .restart local v12       #modebundle:Landroid/os/Bundle;
    const-string v20, "dmode"

    const-string v21, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v20, "editType"

    const-string v21, "edit"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v20, "person1"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v20, "person2"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/miantan/myoface/HistroyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    const v22, 0x7f040008

    invoke-virtual/range {v20 .. v22}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 419
    .end local v3           #count:I
    .end local v7           #id:I
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v12           #modebundle:Landroid/os/Bundle;
    .end local v13           #modeintent:Landroid/content/Intent;
    .end local v15           #person:Lorg/json/JSONObject;
    .end local v16           #person1:Lorg/json/JSONObject;
    .end local v17           #person2:Lorg/json/JSONObject;
    .end local v18           #type:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$2(Lcom/miantan/myoface/HistroyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 429
    :pswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const v22, 0x7f0b0033

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miantan/myoface/HistroyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/webkit/WebView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    #setter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/miantan/myoface/HistroyActivity;->access$3(Lcom/miantan/myoface/HistroyActivity;Landroid/webkit/WebView;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    new-instance v21, Landroid/webkit/WebChromeClient;

    invoke-direct/range {v21 .. v21}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    new-instance v21, Lcom/miantan/myoface/HistroyActivity$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miantan/myoface/HistroyActivity$1$1;-><init>(Lcom/miantan/myoface/HistroyActivity$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    const-string v21, "headEdit2"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    const-string v21, "file:///android_asset/headEdit2.html"

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Lcom/miantan/myoface/HistroyActivity;->access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->reload()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 467
    :catch_1
    move-exception v4

    .line 468
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/HistroyActivity$1;->this$0:Lcom/miantan/myoface/HistroyActivity;

    move-object/from16 v20, v0

    const-string v21, "\u676f\u5177\u2299\ufe4f\u2299\u2016\u2223 \u4f60\u7684\u624b\u673a\u4e0d\u7231\u6211\uff0c\u9875\u9762\u6253\u4e0d\u5f00~"

    #calls: Lcom/miantan/myoface/HistroyActivity;->ShowToastForErrTips(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/miantan/myoface/HistroyActivity;->access$4(Lcom/miantan/myoface/HistroyActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
