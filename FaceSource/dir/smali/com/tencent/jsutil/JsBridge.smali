.class public Lcom/tencent/jsutil/JsBridge;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsBridge"

.field public static instance:Lcom/tencent/jsutil/JsBridge;


# instance fields
.field handler:Landroid/os/Handler;

.field private jsNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mJsPath:Ljava/lang/String;

.field private mLoadProgress:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    .line 87
    new-instance v0, Lcom/tencent/jsutil/JsBridge$1;

    invoke-direct {v0, p0}, Lcom/tencent/jsutil/JsBridge$1;-><init>(Lcom/tencent/jsutil/JsBridge;)V

    iput-object v0, p0, Lcom/tencent/jsutil/JsBridge;->handler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcom/tencent/jsutil/JsBridge;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    .line 76
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/jsutil/JsBridge$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/tencent/jsutil/JsBridge$MyWebViewClient;-><init>(Lcom/tencent/jsutil/JsBridge;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iput-object p2, p0, Lcom/tencent/jsutil/JsBridge;->mJsPath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/jsutil/JsBridge;->jsNameList:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/tencent/jsutil/JsBridge;->setJsEnabled()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/jsutil/JsBridge;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/jsutil/JsBridge;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/jsutil/JsBridge;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/jsutil/JsBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/jsutil/JsBridge;->transSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/jsutil/JsBridge;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lcom/tencent/jsutil/JsBridge;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/tencent/jsutil/JsBridge;

    invoke-direct {v0, p0, p1}, Lcom/tencent/jsutil/JsBridge;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private transSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 286
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0
.end method


# virtual methods
.method public WebViewReload()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    .line 321
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 323
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/jsutil/JsBridge;->instance:Lcom/tencent/jsutil/JsBridge;

    .line 338
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 339
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 340
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 341
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 342
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 344
    return-void
.end method

.method public excuteMethod(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 298
    const-string v0, "JsBridge"

    const-string v1, "excuteMethod(method)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/jsutil/JsBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/jsutil/JsBridge$3;-><init>(Lcom/tencent/jsutil/JsBridge;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    return-void
.end method

.method public varargs executeMethod(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "JsBridge"

    const-string v1, "excuteMethod(method,params)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/jsutil/JsBridge$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/jsutil/JsBridge$2;-><init>(Lcom/tencent/jsutil/JsBridge;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 279
    return-void
.end method

.method public getAllObjNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge;->jsNameList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDownloadProgress()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    return v0
.end method

.method public getWebViewCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmJsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mJsPath:Ljava/lang/String;

    return-object v0
.end method

.method public jsReload()V
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/jsutil/JsBridge;->mLoadProgress:I

    .line 331
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:window.location.reload( true )"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const-string v0, "loadurl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public regiesterObj(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "addJavascriptInterface"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->jsNameList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "JsBridge"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 194
    const-string v1, "JsBridge"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 196
    :catch_2
    move-exception v0

    .line 198
    const-string v1, "JsBridge"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 200
    :catch_3
    move-exception v0

    .line 202
    const-string v1, "JsBridge"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 204
    :catch_4
    move-exception v0

    .line 205
    const-string v1, "JsBridge"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerObj(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    const-string v1, "JsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "addJavascriptInterface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 171
    :goto_1
    iget-object v1, p0, Lcom/tencent/jsutil/JsBridge;->jsNameList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    return-void

    .line 145
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 154
    const-string v2, "JsBridge"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 156
    :catch_1
    move-exception v1

    .line 158
    const-string v2, "JsBridge"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 160
    :catch_2
    move-exception v1

    .line 162
    const-string v2, "JsBridge"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 164
    :catch_3
    move-exception v1

    .line 166
    const-string v2, "JsBridge"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 168
    :catch_4
    move-exception v1

    .line 169
    const-string v2, "JsBridge"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerObjs(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/tencent/jsutil/JsBridge;->regiesterObj(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setJsDisabled()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    return-void
.end method

.method public setJsEnabled()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "JsBridge"

    const-string v1, "setJsEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/tencent/jsutil/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 107
    return-void
.end method
