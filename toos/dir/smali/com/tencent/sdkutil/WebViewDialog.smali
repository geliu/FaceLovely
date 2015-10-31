.class public Lcom/tencent/sdkutil/WebViewDialog;
.super Landroid/app/Dialog;
.source "ProGuard"


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "auth://cancel"

.field public static final CLOSE_URI:Ljava/lang/String; = "auth://close"

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field public static final DOWNLOAD_URI:Ljava/lang/String; = "download://"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final MSG_CANCEL:I = 0x2

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_ON_LOAD:I = 0x4

.field private static final MSG_SHOW_PROCESS:I = 0x5

.field private static final MSG_SHOW_TIPS:I = 0x3

.field public static final REDIRECT_BROWSER_URI:Ljava/lang/String; = "auth://browser"

.field private static final TAG:Ljava/lang/String; = "TDialog"

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

.field private static sWeakProcessBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sWeakProcessDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Lcom/tencent/tauth/IUiListener;

.field private mAction:Ljava/lang/String;

.field private mFlMain:Landroid/widget/FrameLayout;

.field private mFlProcess:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

.field private mPbProcess:Landroid/widget/ProgressBar;

.field private mProcessContainer:Landroid/widget/FrameLayout;

.field private mQQToken:Lcom/tencent/tauth/QQToken;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

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
    .line 210
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mQQToken:Lcom/tencent/tauth/QQToken;

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    .line 214
    iput-object p3, p0, Lcom/tencent/sdkutil/WebViewDialog;->mUrl:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    invoke-virtual {p5}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    .line 216
    new-instance v0, Lcom/tencent/sdkutil/WebViewDialog$THandler;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/sdkutil/WebViewDialog$THandler;-><init>(Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mHandler:Landroid/os/Handler;

    .line 217
    iput-object p4, p0, Lcom/tencent/sdkutil/WebViewDialog;->listener:Lcom/tencent/tauth/IUiListener;

    .line 218
    iput-object p5, p0, Lcom/tencent/sdkutil/WebViewDialog;->mQQToken:Lcom/tencent/tauth/QQToken;

    .line 219
    iput-object p2, p0, Lcom/tencent/sdkutil/WebViewDialog;->mAction:Ljava/lang/String;

    .line 220
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/tencent/sdkutil/WebViewDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessBar:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/tencent/sdkutil/WebViewDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/sdkutil/WebViewDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/sdkutil/WebViewDialog;)Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mListener:Lcom/tencent/sdkutil/WebViewDialog$OnTimeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/sdkutil/WebViewDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private createProgress()V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x28

    const/16 v6, 0x11

    const/16 v5, 0xff

    const/4 v4, -0x2

    .line 258
    new-instance v1, Landroid/widget/ProgressBar;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mPbProcess:Landroid/widget/ProgressBar;

    .line 259
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mPbProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v1, Landroid/widget/LinearLayout;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlProcess:Landroid/widget/LinearLayout;

    .line 264
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mAction:Ljava/lang/String;

    const-string v2, "action_login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    const/16 v0, 0x10

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 270
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 271
    new-instance v1, Landroid/widget/TextView;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    const/high16 v0, 0x4190

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 283
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget-object v2, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlProcess:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlProcess:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/sdkutil/WebViewDialog;->mPbProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlProcess:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    .line 293
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 296
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 297
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 298
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 299
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 300
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x108

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 303
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlProcess:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    return-void

    .line 276
    :cond_2
    const-string v0, "Logging in..."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createViews()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 236
    invoke-direct {p0}, Lcom/tencent/sdkutil/WebViewDialog;->createProgress()V

    .line 238
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    new-instance v2, Landroid/webkit/WebView;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    .line 242
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v2, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlMain:Landroid/widget/FrameLayout;

    .line 245
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mProcessContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessBar:Ljava/lang/ref/WeakReference;

    .line 252
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mFlMain:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/WebViewDialog;->setContentView(Landroid/view/View;)V

    .line 254
    return-void
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

    .line 312
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/tencent/sdkutil/WebViewDialog$FbWebViewClient;-><init>(Lcom/tencent/sdkutil/WebViewDialog;Lcom/tencent/sdkutil/WebViewDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 315
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 319
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 321
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 323
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 326
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 327
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 328
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 330
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 331
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 333
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 335
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakContext:Ljava/lang/ref/WeakReference;

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

    .line 338
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 342
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

    .line 343
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/sdkutil/WebViewDialog$JsListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/tencent/sdkutil/WebViewDialog$JsListener;-><init>(Lcom/tencent/sdkutil/WebViewDialog;Lcom/tencent/sdkutil/WebViewDialog$1;)V

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

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 367
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "TDialog"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 350
    const-string v1, "TDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 352
    :catch_2
    move-exception v0

    .line 354
    const-string v1, "TDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 356
    :catch_3
    move-exception v0

    .line 358
    const-string v1, "TDialog"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 360
    :catch_4
    move-exception v0

    .line 361
    const-string v1, "TDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 562
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 566
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 567
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 569
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    .line 570
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 571
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 572
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    .line 574
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 594
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 576
    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 577
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 581
    :cond_3
    if-nez v1, :cond_0

    .line 582
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 588
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sWeakProcessDialog:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static showTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 528
    :try_start_0
    invoke-static {p1}, Lcom/tencent/sdkutil/JsonUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 529
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 531
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    if-nez v1, :cond_2

    .line 534
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 535
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    .line 542
    :goto_0
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 558
    :cond_0
    :goto_1
    return-void

    .line 538
    :cond_1
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 539
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 540
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 556
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 543
    :cond_2
    if-ne v1, v3, :cond_0

    .line 544
    :try_start_1
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 545
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    .line 552
    :goto_2
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 548
    :cond_3
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 549
    sget-object v1, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 550
    sget-object v0, Lcom/tencent/sdkutil/WebViewDialog;->sToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public callJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 370
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

    const-string v1, ");void("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/tencent/sdkutil/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/sdkutil/WebViewDialog;->requestWindowFeature(I)Z

    .line 228
    invoke-direct {p0}, Lcom/tencent/sdkutil/WebViewDialog;->createViews()V

    .line 229
    invoke-direct {p0}, Lcom/tencent/sdkutil/WebViewDialog;->initViews()V

    .line 230
    return-void
.end method
