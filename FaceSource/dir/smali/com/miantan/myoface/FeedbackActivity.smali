.class public Lcom/miantan/myoface/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MSG_PIC_SIZE_LIMIT:I = 0x6

.field public static final MSG_READ_PIC:I = 0x0

.field public static final MSG_START_SHOW_SENDING:I = 0x4

.field public static final MSG_STOP_SHOW_SENDING:I = 0x5

.field public static final MSG_UPLOAD_ERR:I = 0x2

.field public static final MSG_UPLOAD_FRE_LIMIT:I = 0x3

.field public static final MSG_UPLOAD_SUCC:I = 0x1


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnSelect:Landroid/widget/Button;

.field private mBtnUpload:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mElemtype:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mFilepath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mNewBitmap:Landroid/graphics/Bitmap;

.field private mNewFile:Ljava/io/File;

.field private mPlatform:Ljava/lang/String;

.field private mSysVersion:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mViewSending:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, "myotee"

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->appname:Ljava/lang/String;

    .line 79
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->LOG_TAG:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mText:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mPlatform:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mSysVersion:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mAppVersion:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mElemtype:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 97
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilepath:Ljava/lang/String;

    .line 98
    const-string v0, "temp_upload.png"

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilename:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    .line 609
    new-instance v0, Lcom/miantan/myoface/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/FeedbackActivity$1;-><init>(Lcom/miantan/myoface/FeedbackActivity;)V

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 443
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 444
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/miantan/myoface/FeedbackActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public CheckisNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 600
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 601
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 602
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 606
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method DelTemp()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method PostToServer()V
    .locals 21

    .prologue
    .line 452
    const-string v16, "http://192.168.199.142/lianmeng/public/new.php"

    .line 456
    .local v16, url:Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 457
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.protocol.version"

    sget-object v19, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 459
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 461
    .local v8, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v10}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 462
    .local v10, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v4, Lorg/apache/http/entity/mime/content/FileBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    move-object/from16 v17, v0

    const-string v18, "image/png"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    .local v4, cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v17, "imgdata"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 466
    const-string v17, "condata"

    new-instance v18, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 468
    const-string v17, "platform"

    new-instance v18, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mPlatform:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 470
    const-string v17, "sysversion"

    new-instance v18, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mSysVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 472
    const-string v17, "appversion"

    new-instance v18, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mAppVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 474
    const-string v17, "elemtype"

    new-instance v18, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mElemtype:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 475
    invoke-virtual {v8, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 480
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 481
    .local v12, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getStatusLine|"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v3, builder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    .line 489
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 488
    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 490
    .local v2, bufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, s:Ljava/lang/String;
    :goto_0
    if-nez v14, :cond_1

    .line 500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 503
    .local v15, str:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 505
    .local v9, jsonObject:Lorg/json/JSONObject;
    const-string v17, "ret"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 506
    .local v13, ret:I
    const-string v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 508
    .local v5, code:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ret:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "|code:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 512
    .local v11, msg:Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 513
    if-nez v13, :cond_3

    .line 515
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 544
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v4           #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v5           #code:I
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #ret:I
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :goto_2
    return-void

    .line 493
    .end local v11           #msg:Landroid/os/Message;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x7b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x7d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 495
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 519
    .restart local v5       #code:I
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    .restart local v11       #msg:Landroid/os/Message;
    .restart local v13       #ret:I
    .restart local v15       #str:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v5, v0, :cond_4

    .line 521
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 547
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v4           #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v5           #code:I
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #ret:I
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 550
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 551
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 523
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v5       #code:I
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #ret:I
    .restart local v14       #s:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x3ea

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 525
    const/16 v17, 0x2

    :try_start_1
    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 554
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v4           #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v5           #code:I
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #ret:I
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 557
    .local v6, e:Ljava/io/IOException;
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 558
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 527
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v5       #code:I
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #ret:I
    .restart local v14       #s:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x3eb

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 529
    const/16 v17, 0x2

    :try_start_2
    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 561
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v4           #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v5           #code:I
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #ret:I
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 563
    .local v6, e:Lorg/json/JSONException;
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 564
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 531
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v5       #code:I
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #ret:I
    .restart local v14       #s:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x3ed

    move/from16 v0, v17

    if-ne v5, v0, :cond_7

    .line 533
    const/16 v17, 0x2

    :try_start_3
    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 567
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v4           #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v5           #code:I
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #ret:I
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 570
    .local v6, e:Ljava/lang/Exception;
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 571
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 535
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v5       #code:I
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #ret:I
    .restart local v14       #s:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x3ec

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 537
    const/16 v17, 0x3

    :try_start_4
    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 539
    :cond_8
    const/16 v17, 0x3ee

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 541
    const/16 v17, 0x6

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1
.end method

.method compressBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "size"

    .prologue
    .line 350
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 361
    return-object p1
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 429
    .local v0, hasSDCard:Z
    if-eqz v0, :cond_0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miantan/myoface/FeedbackActivity;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/FeedbackActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 163
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 167
    const-string v2, "unknow_appversion"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    return-void

    .line 250
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/miantan/myoface/BitmapUtil;->getResizedBitmap(Ljava/lang/String;[BLandroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 259
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v6

    .line 262
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 264
    .local v7, msg:Landroid/os/Message;
    iput v8, v7, Landroid/os/Message;->what:I

    .line 265
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 191
    :sswitch_0
    invoke-virtual {p0}, Lcom/miantan/myoface/FeedbackActivity;->openPhoto()V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "\u8bf7\u9009\u62e9\u56fe\u7247\uff01"

    invoke-direct {p0, v0}, Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    const-string v0, "BtnFeedbackUpload"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/FeedbackActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 203
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    if-nez v0, :cond_1

    .line 209
    const-string v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {p0, v0}, Lcom/miantan/myoface/FeedbackActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mText:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miantan/myoface/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/FeedbackActivity$2;-><init>(Lcom/miantan/myoface/FeedbackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 230
    :sswitch_2
    invoke-virtual {p0}, Lcom/miantan/myoface/FeedbackActivity;->finish()V

    .line 231
    const v0, 0x7f040006

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_2
        0x7f0b001d -> :sswitch_0
        0x7f0b001f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->setContentView(I)V

    .line 119
    const v4, 0x7f0b0003

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnBack:Landroid/widget/Button;

    .line 121
    const v4, 0x7f0b001e

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    .line 126
    const v4, 0x7f0b001d

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnSelect:Landroid/widget/Button;

    .line 127
    const v4, 0x7f0b001c

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mImageView:Landroid/widget/ImageView;

    .line 128
    const v4, 0x7f0b001f

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnUpload:Landroid/widget/Button;

    .line 131
    iget-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnUpload:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 135
    check-cast v3, Landroid/view/WindowManager;

    .line 137
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    const-string v4, "1"

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mPlatform:Ljava/lang/String;

    .line 141
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mSysVersion:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/FeedbackActivity;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mAppVersion:Ljava/lang/String;

    .line 145
    const v4, 0x7f0b0020

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;

    .line 146
    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 147
    .local v0, img_loading:Landroid/widget/ImageView;
    const v4, 0x7f04000a

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/RotateAnimation;

    .line 148
    .local v2, rotateAnimation:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mViewSending:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const-string v4, "23"

    iput-object v4, p0, Lcom/miantan/myoface/FeedbackActivity;->mElemtype:Ljava/lang/String;

    .line 156
    const-string v4, "EnterFeedbackPage"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_0
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 181
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    .line 182
    iput-object v1, p0, Lcom/miantan/myoface/FeedbackActivity;->mImageView:Landroid/widget/ImageView;

    .line 183
    return-void
.end method

.method openPhoto()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method

.method public saveImage(Z)I
    .locals 10
    .parameter "shareToast"

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 367
    .local v3, hasSDCard:Z
    if-nez v3, :cond_0

    .line 369
    const/4 v7, 0x2

    .line 422
    :goto_0
    return v7

    .line 372
    :cond_0
    iget-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 373
    iget-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->LOG_TAG:Ljava/lang/String;

    const-string v8, "mNewBitmap is null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/miantan/myoface/FeedbackActivity;->getSDPath()Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, strPath:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilepath:Ljava/lang/String;

    .line 380
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, destDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 383
    const-string v7, "MagicMirror"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Dir not exist create it "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 385
    const-string v7, "MagicMirror"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Make dir success: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    .line 388
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    .line 389
    iget-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 390
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 393
    .local v2, fos:Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/miantan/myoface/FeedbackActivity;->mNewBitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 394
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 395
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 397
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v4, imgIntent:Landroid/content/Intent;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miantan/myoface/FeedbackActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 399
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v4}, Lcom/miantan/myoface/FeedbackActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v0           #destDir:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #imgIntent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 411
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
