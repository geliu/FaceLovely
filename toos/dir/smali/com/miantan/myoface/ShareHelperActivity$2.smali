.class Lcom/miantan/myoface/ShareHelperActivity$2;
.super Ljava/lang/Object;
.source "ShareHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareHelperActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .line 316
    .local v14, msg_start:Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v14, Landroid/os/Message;->what:I

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 324
    new-instance v12, Lcom/tencent/mm/sdk/openapi/WXImageObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$2(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/tencent/mm/sdk/openapi/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v12, imgObj:Lcom/tencent/mm/sdk/openapi/WXImageObject;
    new-instance v13, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v13}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 327
    .local v13, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v12, v13, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$2(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x78

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 333
    .local v17, thumbBmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v1

    iput-object v1, v13, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 335
    new-instance v16, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct/range {v16 .. v16}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 336
    .local v16, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    const-string v2, "img"

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/miantan/myoface/ShareHelperActivity;->access$3(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 337
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 338
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput v1, v0, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$4(Lcom/miantan/myoface/ShareHelperActivity;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$4(Lcom/miantan/myoface/ShareHelperActivity;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    move-result v8

    .line 341
    .local v8, bSendReqResult:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$4(Lcom/miantan/myoface/ShareHelperActivity;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v9

    .line 342
    .local v9, bWXAppInstalled:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->wx_api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$4(Lcom/miantan/myoface/ShareHelperActivity;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v10

    .line 343
    .local v10, bWXAppSupportAPI:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$5(Lcom/miantan/myoface/ShareHelperActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bSendReqResult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|bWXAppInstalled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|bWXAppSupportAPI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-boolean v1, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v1, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->sp_share:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$6(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/media/SoundPool;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->music_share:I
    invoke-static {v2}, Lcom/miantan/myoface/ShareHelperActivity;->access$7(Lcom/miantan/myoface/ShareHelperActivity;)I

    move-result v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 364
    .local v15, msg_stop:Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v15, Landroid/os/Message;->what:I

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    .end local v8           #bSendReqResult:Z
    .end local v9           #bWXAppInstalled:Z
    .end local v10           #bWXAppSupportAPI:Z
    .end local v12           #imgObj:Lcom/tencent/mm/sdk/openapi/WXImageObject;
    .end local v13           #msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .end local v16           #req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    .end local v17           #thumbBmp:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 358
    .end local v15           #msg_stop:Landroid/os/Message;
    :catch_0
    move-exception v11

    .line 359
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 364
    .restart local v15       #msg_stop:Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v15, Landroid/os/Message;->what:I

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v1, v1, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 362
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #msg_stop:Landroid/os/Message;
    :catchall_0
    move-exception v1

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v2, v2, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 364
    .restart local v15       #msg_stop:Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v15, Landroid/os/Message;->what:I

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/ShareHelperActivity$2;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v2, v2, Lcom/miantan/myoface/ShareHelperActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    throw v1
.end method
