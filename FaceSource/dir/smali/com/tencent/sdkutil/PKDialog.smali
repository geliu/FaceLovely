.class public Lcom/tencent/sdkutil/PKDialog;
.super Landroid/app/Dialog;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "auth://cancel"

.field public static final CLOSE_URI:Ljava/lang/String; = "auth://close"

.field public static final DOWNLOAD_URI:Ljava/lang/String; = "download://"

.field private static final MSG_CANCEL:I = 0x2

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_ON_LOAD:I = 0x4

.field private static final MSG_SHOW_PROCESS:I = 0x5

.field private static final MSG_SHOW_TIPS:I = 0x3

.field public static final REDIRECT_BROWSER_URI:Ljava/lang/String; = "auth://browser"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WEBVIEW_HEIGHT:I = 0xb9

.field static sToast:Landroid/widget/Toast;

.field private static sWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebviewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/tencent/sdkutil/PKDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p3, p0, Lcom/tencent/sdkutil/PKDialog;->mUrl:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    invoke-virtual {p5}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/PKDialog$OnTimeListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mListener:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    .line 86
    new-instance v0, Lcom/tencent/sdkutil/PKDialog$THandler;

    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mListener:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/sdkutil/PKDialog$THandler;-><init>(Lcom/tencent/sdkutil/PKDialog$OnTimeListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mHandler:Landroid/os/Handler;

    .line 87
    const/high16 v0, 0x4339

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    .line 88
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; webviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/sdkutil/PKDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/sdkutil/PKDialog;)Lcom/tencent/sdkutil/PKDialog$OnTimeListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mListener:Lcom/tencent/sdkutil/PKDialog$OnTimeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/sdkutil/PKDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/tencent/sdkutil/PKDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/tencent/sdkutil/PKDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createViews()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 111
    new-instance v1, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    const/high16 v1, 0x6600

    invoke-virtual {v0, v1}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v1, Landroid/webkit/WebView;

    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    .line 117
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 122
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->addKeyboardStateChangedListener(Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mFlMain:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/PKDialog;->setContentView(Landroid/view/View;)V

    .line 138
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 145
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/sdkutil/PKDialog$FbWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/tencent/sdkutil/PKDialog$FbWebViewClient;-><init>(Lcom/tencent/sdkutil/PKDialog;Lcom/tencent/sdkutil/PKDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 149
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 152
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 154
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 156
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 159
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 160
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 161
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 163
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 164
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 166
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 168
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 175
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

    .line 176
    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/sdkutil/PKDialog$JsListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/tencent/sdkutil/PKDialog$JsListener;-><init>(Lcom/tencent/sdkutil/PKDialog;Lcom/tencent/sdkutil/PKDialog$1;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sdk_js_if"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 197
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 199
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 183
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 187
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 189
    :catch_3
    move-exception v0

    .line 191
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 193
    :catch_4
    move-exception v0

    .line 194
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 347
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 351
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 352
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static showTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 313
    :try_start_0
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 314
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-nez v1, :cond_2

    .line 319
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 320
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    .line 327
    :goto_0
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    :cond_0
    :goto_1
    return-void

    .line 323
    :cond_1
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 324
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 325
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 328
    :cond_2
    if-ne v1, v3, :cond_0

    .line 329
    :try_start_1
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 330
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    .line 337
    :goto_2
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 333
    :cond_3
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 334
    sget-object v1, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 335
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public callJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/tencent/sdkutil/PKDialog;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/tencent/sdkutil/PKDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/sdkutil/PKDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    invoke-direct {p0}, Lcom/tencent/sdkutil/PKDialog;->createViews()V

    .line 105
    invoke-direct {p0}, Lcom/tencent/sdkutil/PKDialog;->initViews()V

    .line 106
    return-void
.end method

.method public onKeyboardHidden()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 507
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    const-string v1, "keyboard hide"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public onKeyboardShown(I)V
    .locals 2
    .parameter

    .prologue
    .line 489
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    if-ge p1, v0, :cond_1

    const/4 v1, 0x2

    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/sdkutil/PKDialog;->TAG:Ljava/lang/String;

    const-string v1, "keyboard show"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/tencent/sdkutil/PKDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/sdkutil/PKDialog;->mWebviewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
