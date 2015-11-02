.class public Lcom/miantan/myoface/EditorActivity;
.super Landroid/app/Activity;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "JavascriptInterface"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;,
        Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;,
        Lcom/miantan/myoface/EditorActivity$MyPageAdapter;
    }
.end annotation


# static fields
.field public static final MSG_EDIT_RECORD1:I = 0xc

.field public static final MSG_NET_CONNECTED_FALSE:I = 0x1

.field public static final MSG_RECORDING_TOO_SHORT:I = 0x4

.field public static final MSG_SDCARD_FALSE:I = 0x2

.field public static final MSG_START_INIT_HEADEDIT:I = 0xa

.field public static final MSG_START_INIT_WEBVIEW_ERR:I = 0xb

.field public static final MSG_START_SHOW_SAVING:I = 0x7

.field public static final MSG_START_SHOW_SENDING:I = 0x5

.field public static final MSG_STOP_SHOW_LOADING:I = 0x9

.field public static final MSG_STOP_SHOW_SAVING:I = 0x8

.field public static final MSG_STOP_SHOW_SENDING:I = 0x6

.field public static final MSG_WX_INSTALLED_FLASE:I = 0x3

.field private static isNetConnected:Z

.field private static isSDCardAvailable:Z

.field private static isWXInstalled:Z

.field private static mEditMode:I

.field private static mSexual:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private btnBackIndex:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnSendQipao:Landroid/widget/Button;

.field private btnSettings:Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field editor:Landroid/content/SharedPreferences$Editor;

.field gCurFilePath:Ljava/lang/String;

.field private gCurTypeIndex:I

.field gCursorImage:Landroid/widget/ImageView;

.field gCursorWidth:I

.field private heightPixels:I

.field private heightdp:I

.field private heightdp_griditem:I

.field private heightdp_op:I

.field private heightdp_show:I

.field private heightdp_title:I

.field private imageviewLoading:Landroid/widget/ImageView;

.field private isOnPause:Z

.field private isSaving:Z

.field private isSharing:Z

.field private listAllTypeElemIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private listAllTypeElemShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field listGridViewAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field listGridViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ll:Landroid/widget/LinearLayout;

.field private mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

.field private mButtonSettingsCancle:Landroid/widget/Button;

.field private mButtonSettingsHY:Landroid/widget/Button;

.field private mButtonSettingsSoundS:Landroid/widget/Button;

.field private mButtonSettingsUserlearn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditTextQipao:Landroid/widget/EditText;

.field mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field mTabHost:Landroid/widget/TabHost;

.field private mTabSelector:Ljava/lang/Runnable;

.field mTabWidget:Landroid/widget/TabWidget;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewSaving:Landroid/view/View;

.field private mViewSettings:Landroid/view/View;

.field private mWebview:Landroid/webkit/WebView;

.field manager:Landroid/app/LocalActivityManager;

.field private music_save:I

.field private music_shake:I

.field private music_share:I

.field preferences:Landroid/content/SharedPreferences;

.field private relativelayoutBg:Landroid/widget/RelativeLayout;

.field private relativelayoutET:Landroid/widget/RelativeLayout;

.field private relativelayoutLoading:Landroid/widget/RelativeLayout;

.field private relativelayoutOp:Landroid/widget/RelativeLayout;

.field private relativelayoutUserLearn:Landroid/widget/RelativeLayout;

.field private relativelayoutWebview:Landroid/widget/RelativeLayout;

.field private sEditModePersonStr:Ljava/lang/String;

.field private sp_save:Landroid/media/SoundPool;

.field private sp_shake:Landroid/media/SoundPool;

.field private sp_share:Landroid/media/SoundPool;

.field private strEditQipao:Ljava/lang/String;

.field private sysVersion:I

.field private widthPixels:I

.field private widthdp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity;->isNetConnected:Z

    .line 200
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity;->isSDCardAvailable:Z

    .line 201
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity;->isWXInstalled:Z

    .line 202
    sput v0, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    .line 203
    sput v0, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    const-string v0, "FaceQ"

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->appname:Ljava/lang/String;

    .line 149
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 170
    iput-boolean v2, p0, Lcom/miantan/myoface/EditorActivity;->isOnPause:Z

    .line 181
    iput-boolean v2, p0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    .line 182
    iput-boolean v2, p0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    .line 204
    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->sEditModePersonStr:Ljava/lang/String;

    .line 212
    const/16 v0, 0x30

    iput v0, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_title:I

    .line 233
    iput v2, p0, Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    .line 250
    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->manager:Landroid/app/LocalActivityManager;

    .line 252
    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    .line 256
    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 289
    const/16 v0, 0xa

    iput v0, p0, Lcom/miantan/myoface/EditorActivity;->sysVersion:I

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->strEditQipao:Ljava/lang/String;

    .line 2373
    new-instance v0, Lcom/miantan/myoface/EditorActivity$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/EditorActivity$1;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method private DoCheckNetwork()V
    .locals 3

    .prologue
    .line 2559
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity;->isNetConnected:Z

    .line 2560
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity;->isNetConnected:Z

    if-nez v2, :cond_0

    .line 2562
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2563
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2564
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2567
    :catch_0
    move-exception v0

    .line 2569
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private DoCheckSharePrepare()V
    .locals 3

    .prologue
    .line 2515
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity;->isNetConnected:Z

    .line 2516
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity;->isNetConnected:Z

    if-nez v2, :cond_1

    .line 2518
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2519
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2520
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2523
    :catch_0
    move-exception v0

    .line 2525
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2532
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity;->CheckisWXInstalled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity;->isWXInstalled:Z

    .line 2533
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity;->isWXInstalled:Z

    if-nez v2, :cond_0

    .line 2535
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2536
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2537
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2540
    .end local v1           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 2542
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 2849
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2850
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2851
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2852
    return-void
.end method

.method private ShowToastForErrTips(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 2855
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2856
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2857
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2858
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2847
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/miantan/myoface/EditorActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mViewSaving:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/miantan/myoface/EditorActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 215
    iget v0, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_griditem:I

    return v0
.end method

.method static synthetic access$11(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/miantan/myoface/EditorActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 233
    iget v0, p0, Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I

    return v0
.end method

.method static synthetic access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1923
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/miantan/myoface/EditorActivity;III)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/miantan/myoface/EditorActivity;->getPicIndexParamV2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->strEditQipao:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/miantan/myoface/EditorActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3337
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity;->animateToTab(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/miantan/myoface/EditorActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput p1, p0, Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I

    return-void
.end method

.method static synthetic access$21(Lcom/miantan/myoface/EditorActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$22(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/miantan/myoface/EditorActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3(Lcom/miantan/myoface/EditorActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 1638
    invoke-direct {p0}, Lcom/miantan/myoface/EditorActivity;->getParamV2()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 202
    sget v0, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    return v0
.end method

.method static synthetic access$5(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    return-object v0
.end method

.method static synthetic access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/miantan/myoface/EditorActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$9(Lcom/miantan/myoface/EditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2853
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity;->ShowToastForErrTips(Ljava/lang/String;)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 3339
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3340
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3341
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3343
    :cond_0
    new-instance v1, Lcom/miantan/myoface/EditorActivity$26;

    invoke-direct {v1, p0, v0}, Lcom/miantan/myoface/EditorActivity$26;-><init>(Lcom/miantan/myoface/EditorActivity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;

    .line 3350
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3351
    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 2365
    if-nez p1, :cond_0

    .line 2366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2368
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private combineBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "background"
    .parameter "foreground"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2824
    if-nez p1, :cond_0

    move-object v5, v6

    .line 2844
    :goto_0
    return-object v5

    .line 2828
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2829
    .local v1, bgWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2830
    .local v0, bgHeight:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2831
    .local v4, fgWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2834
    .local v3, fgHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2835
    .local v5, newbmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2837
    .local v2, cv:Landroid/graphics/Canvas;
    invoke-virtual {v2, p1, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2839
    sub-int v7, v0, v3

    int-to-float v7, v7

    invoke-virtual {v2, p2, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2841
    const/16 v6, 0x1f

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 2843
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 2610
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2611
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getColorParam(III)Ljava/lang/String;
    .locals 4
    .parameter "sexual"
    .parameter "curTypeIndex"
    .parameter "curElementIndex"

    .prologue
    .line 1868
    const-string v0, ""

    .line 1869
    .local v0, ret:Ljava/lang/String;
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v2, v2, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v2, v2, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne p2, v2, :cond_1

    .line 1871
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1874
    .local v1, sColor:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1877
    .end local v1           #sColor:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getJsFun(I)Ljava/lang/String;
    .locals 2
    .parameter "curTypeIndex"

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_JSFUN:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getListByArray([Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .parameter "shows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1630
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1634
    return-object v1

    .line 1632
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getParamV2()Lorg/json/JSONObject;
    .locals 25

    .prologue
    .line 1642
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 1644
    .local v19, person:Lorg/json/JSONObject;
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 1645
    .local v21, sexual:Lorg/json/JSONObject;
    const/16 v20, 0x0

    .line 1646
    .local v20, sex:I
    sget v22, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    if-nez v22, :cond_0

    .line 1647
    const/16 v20, 0x1

    .line 1648
    :cond_0
    const-string v22, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1650
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1651
    .local v14, hair:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1652
    const-string v22, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1653
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1654
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1656
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1657
    .local v11, face:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1658
    const-string v22, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1659
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1660
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1662
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 1663
    .local v17, mouth:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1664
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1665
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1667
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1668
    .local v9, eye:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1669
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1670
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1672
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1673
    .local v10, eyebrow:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1674
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1675
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1677
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1678
    .local v15, hat:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1679
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1680
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1682
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 1683
    .local v16, hobby:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1684
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1685
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1687
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1688
    .local v6, cloth:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1689
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1690
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1692
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1693
    .local v4, bubble:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v22, v0

    sget v23, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v23, v0

    aget v5, v22, v23

    .line 1694
    .local v5, bubbleid:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_1

    .line 1695
    const/4 v5, 0x0

    .line 1696
    :cond_1
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1697
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1698
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1700
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1701
    .local v12, feature:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1702
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1703
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1705
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1706
    .local v13, glass:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1707
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1708
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1710
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1711
    .local v8, express:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1712
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1713
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1715
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 1716
    .local v18, nose:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1717
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1718
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1720
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1721
    .local v3, background:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v23, v0

    sget v24, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1722
    const-string v22, "x"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1723
    const-string v22, "y"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1727
    const-string v22, "sexual"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1728
    const-string v22, "hair"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1729
    const-string v22, "face"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1730
    const-string v22, "mouth"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1731
    const-string v22, "eye"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    const-string v22, "eyebrow"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1733
    const-string v22, "hat"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1734
    const-string v22, "hobby"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1735
    const-string v22, "cloth"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1736
    const-string v22, "feature"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1737
    const-string v22, "glass"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1738
    const-string v22, "express"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1739
    const-string v22, "nose"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1740
    const-string v22, "background"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1741
    const-string v22, "bubble"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    .end local v3           #background:Lorg/json/JSONObject;
    .end local v4           #bubble:Lorg/json/JSONObject;
    .end local v5           #bubbleid:I
    .end local v6           #cloth:Lorg/json/JSONObject;
    .end local v8           #express:Lorg/json/JSONObject;
    .end local v9           #eye:Lorg/json/JSONObject;
    .end local v10           #eyebrow:Lorg/json/JSONObject;
    .end local v11           #face:Lorg/json/JSONObject;
    .end local v12           #feature:Lorg/json/JSONObject;
    .end local v13           #glass:Lorg/json/JSONObject;
    .end local v14           #hair:Lorg/json/JSONObject;
    .end local v15           #hat:Lorg/json/JSONObject;
    .end local v16           #hobby:Lorg/json/JSONObject;
    .end local v17           #mouth:Lorg/json/JSONObject;
    .end local v18           #nose:Lorg/json/JSONObject;
    .end local v19           #person:Lorg/json/JSONObject;
    .end local v20           #sex:I
    .end local v21           #sexual:Lorg/json/JSONObject;
    :goto_0
    return-object v19

    .line 1749
    :catch_0
    move-exception v7

    .line 1750
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1752
    const/16 v19, 0x0

    goto :goto_0
.end method

.method private getPicIndexParam(III)Ljava/lang/String;
    .locals 7
    .parameter "sexual"
    .parameter "curTypeIndex"
    .parameter "curElementIndex"

    .prologue
    const/4 v6, 0x3

    .line 1904
    const-string v1, ""

    .line 1905
    .local v1, ret:Ljava/lang/String;
    add-int/lit8 v0, p3, 0x1

    .line 1907
    .local v0, picindex:I
    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    if-ne p2, v6, :cond_1

    .line 1909
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1911
    .local v3, sColor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1920
    .end local v1           #ret:Ljava/lang/String;
    .end local v3           #sColor:Ljava/lang/String;
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1917
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1920
    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPicIndexParamV2(III)Ljava/lang/String;
    .locals 5
    .parameter "sexual"
    .parameter "curTypeIndex"
    .parameter "pos"

    .prologue
    .line 1883
    const-string v1, ""

    .line 1885
    .local v1, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v3, v3, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v3, v3, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne p2, v3, :cond_1

    .line 1887
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1890
    .local v2, sColor:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1899
    .end local v2           #sColor:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1895
    :cond_1
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1897
    .local v0, picindex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 2618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2619
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public CheckisNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2578
    if-eqz p1, :cond_0

    .line 2580
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2579
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2581
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2582
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 2583
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 2586
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CheckisWXInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 2590
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2591
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 2593
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 2594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 2602
    :goto_1
    return v4

    .line 2595
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2597
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2598
    const/4 v4, 0x1

    goto :goto_1

    .line 2594
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 799
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/miantan/myoface/BasicDataApplication;

    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 801
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 802
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 804
    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    if-nez v2, :cond_2

    .line 807
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->InitElement()V

    .line 889
    sget v2, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    if-ne v2, v4, :cond_1

    .line 892
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->sEditModePersonStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 897
    .local v1, person:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/miantan/myoface/EditorActivity;->setIndexNumAndColorByPerson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    .end local v1           #person:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I

    .line 916
    return-void

    .line 844
    :cond_2
    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    if-ne v2, v4, :cond_0

    .line 848
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/EditorActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 905
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public InitDevice()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 301
    const-string v5, "config"

    invoke-virtual {p0, v5, v9}, Lcom/miantan/myoface/EditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->preferences:Landroid/content/SharedPreferences;

    .line 302
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 307
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->sysVersion:I

    .line 315
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v10, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_save:Landroid/media/SoundPool;

    .line 316
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_save:Landroid/media/SoundPool;

    const v6, 0x7f050002

    invoke-virtual {v5, p0, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->music_save:I

    .line 318
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v10, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_share:Landroid/media/SoundPool;

    .line 319
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_share:Landroid/media/SoundPool;

    const v6, 0x7f050004

    invoke-virtual {v5, p0, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->music_share:I

    .line 321
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v10, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_shake:Landroid/media/SoundPool;

    .line 322
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sp_shake:Landroid/media/SoundPool;

    const v6, 0x7f050003

    invoke-virtual {v5, p0, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->music_shake:I

    .line 329
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 330
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 331
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    .line 332
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->heightPixels:I

    .line 333
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    int-to-float v5, v5

    invoke-static {p0, v5}, Lcom/miantan/myoface/EditorActivity;->px2dip(Landroid/content/Context;F)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->widthdp:I

    .line 334
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->heightPixels:I

    int-to-float v5, v5

    invoke-static {p0, v5}, Lcom/miantan/myoface/EditorActivity;->px2dip(Landroid/content/Context;F)I

    move-result v5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp:I

    .line 336
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_show:I

    .line 337
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp:I

    iget v6, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_title:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_show:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_op:I

    .line 338
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_op:I

    add-int/lit8 v5, v5, -0x2c

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_griditem:I

    .line 340
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "widthPixels:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|heightPixels:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 341
    const-string v7, "|widthdp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->widthdp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|heightdp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|heightdp_show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 342
    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_show:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|heightdp_op:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_op:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|heightdp_griditem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_griditem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 349
    .local v2, editBundle:Landroid/os/Bundle;
    const-string v4, ""

    .line 350
    .local v4, typeString:Ljava/lang/String;
    const-string v3, ""

    .line 353
    .local v3, sexualString:Ljava/lang/String;
    :try_start_0
    const-string v5, "editType"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    const-string v5, "sexualType"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 360
    :goto_0
    const-string v5, "male"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    sput v9, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    .line 368
    :goto_1
    const-string v5, "new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    sput v9, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    .line 376
    :goto_2
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "female"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 363
    sput v8, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    goto :goto_1

    .line 365
    :cond_1
    sput v9, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    goto :goto_1

    .line 370
    :cond_2
    const-string v5, "edit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 371
    sput v8, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    .line 372
    const-string v5, "person"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miantan/myoface/EditorActivity;->sEditModePersonStr:Ljava/lang/String;

    goto :goto_2

    .line 374
    :cond_3
    sput v9, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    goto :goto_2
.end method

.method public InitElement()V
    .locals 4

    .prologue
    .line 1933
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->LAST_INDEX:I

    if-le v0, v1, :cond_0

    .line 1971
    return-void

    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNumInit:[[I

    sget v3, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1938
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v0, v1, :cond_2

    .line 1940
    :cond_1
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColorInit:[[Ljava/lang/String;

    sget v3, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1933
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitOp(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 922
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v9, v3, :cond_1

    .line 1205
    const v3, 0x7f0b001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1206
    const v3, 0x7f0b0065

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    .line 1208
    new-instance v3, Landroid/app/LocalActivityManager;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->manager:Landroid/app/LocalActivityManager;

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->manager:Landroid/app/LocalActivityManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    .line 1217
    const v3, 0x7f0b0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->gCursorImage:Landroid/widget/ImageView;

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1220
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1221
    .local v5, oldCursorWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1222
    .local v6, oldCursorHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    int-to-double v3, v3

    const-wide v17, 0x3fcbc6a7ef9db22dL

    mul-double v3, v3, v17

    double-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miantan/myoface/EditorActivity;->gCursorWidth:I

    .line 1225
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1226
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity;->gCursorWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    int-to-float v4, v5

    const/high16 v8, 0x3f80

    mul-float/2addr v4, v8

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1228
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1230
    .local v14, newbm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->gCursorImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1231
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1232
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1234
    :cond_0
    const/4 v2, 0x0

    .line 1239
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/miantan/myoface/EmptyActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1240
    .local v10, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC:[Ljava/lang/Integer;

    array-length v3, v3

    if-lt v9, v3, :cond_2

    .line 1261
    const v3, 0x7f0b0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/miantan/myoface/EditorActivity$MyPageAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v8, v1}, Lcom/miantan/myoface/EditorActivity$MyPageAdapter;-><init>(Lcom/miantan/myoface/EditorActivity;Ljava/util/List;Lcom/miantan/myoface/EditorActivity$MyPageAdapter;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/miantan/myoface/EditorActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$4;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    new-instance v4, Lcom/miantan/myoface/EditorActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$5;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$6;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$7;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$8;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$9;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$10;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$11;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$12;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$13;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$14;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$15;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$16;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$17;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$18;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$19;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$20;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$21;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity$22;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1465
    return-void

    .line 923
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v5           #oldCursorWidth:I
    .end local v6           #oldCursorHeight:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #newbm:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v12, Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 926
    .local v12, mGridView:Landroid/widget/GridView;
    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 927
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 928
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 929
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 930
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 935
    new-instance v13, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1, v3}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;-><init>(Lcom/miantan/myoface/EditorActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 936
    .local v13, mySimpleAdapter:Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;
    invoke-virtual {v13, v9}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 954
    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 955
    const v3, 0x7f02007d

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 956
    new-instance v3, Lcom/miantan/myoface/EditorActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miantan/myoface/EditorActivity$3;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1194
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 1195
    const v3, 0x7f060002

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1242
    .end local v12           #mGridView:Landroid/widget/GridView;
    .end local v13           #mySimpleAdapter:Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v5       #oldCursorWidth:I
    .restart local v6       #oldCursorHeight:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v14       #newbm:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030014

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1244
    .local v16, tabIndicator:Landroid/widget/RelativeLayout;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity;->gCursorWidth:I

    const/high16 v4, 0x4220

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v15, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1245
    .local v15, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    const v3, 0x7f0b00ab

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1253
    .local v11, ivTab:Landroid/widget/ImageView;
    if-nez v9, :cond_3

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC_DOWN:[Ljava/lang/Integer;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1257
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity;->mTabHost:Landroid/widget/TabHost;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1240
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1256
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC:[Ljava/lang/Integer;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public InitUI()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 647
    const v7, 0x7f0b005d

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutBg:Landroid/widget/RelativeLayout;

    .line 648
    const v7, 0x7f0b005e

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutOp:Landroid/widget/RelativeLayout;

    .line 649
    const v7, 0x7f0b005f

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    .line 650
    const v7, 0x7f0b0034

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    .line 651
    const v7, 0x7f0b0062

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;

    .line 652
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 656
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_show:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 657
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 658
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 662
    .local v3, param3:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_op:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 663
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 664
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 667
    .local v5, param_webview:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_show:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 668
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 669
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    const v7, 0x7f0b006b

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 673
    .local v6, relativelayoutUserLearn2:Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 674
    .local v4, param4:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity;->heightdp_op:I

    add-int/lit8 v7, v7, -0x2c

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 675
    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 676
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    const v7, 0x7f0b005a

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSave:Landroid/widget/Button;

    .line 684
    const v7, 0x7f0b000e

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnBackIndex:Landroid/widget/Button;

    .line 685
    const v7, 0x7f0b005c

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnShare:Landroid/widget/Button;

    .line 686
    const v7, 0x7f0b0061

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSettings:Landroid/widget/Button;

    .line 687
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnShare:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnBackIndex:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSettings:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    const v7, 0x7f0b0064

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSendQipao:Landroid/widget/Button;

    .line 693
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->btnSendQipao:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    const v7, 0x7f0b0063

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;

    .line 699
    const v7, 0x7f0b0071

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    .line 700
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 703
    const v7, 0x7f0b007a

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsHY:Landroid/widget/Button;

    .line 704
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsHY:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    const v7, 0x7f0b007c

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    .line 707
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    sget-boolean v7, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v7, :cond_0

    .line 709
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v8, 0x7f020053

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 722
    :goto_0
    const v7, 0x7f0b0075

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsCancle:Landroid/widget/Button;

    .line 723
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsCancle:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    const v7, 0x7f0b0077

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsUserlearn:Landroid/widget/Button;

    .line 725
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsUserlearn:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    const v7, 0x7f0b0035

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->imageviewLoading:Landroid/widget/ImageView;

    .line 728
    sget v7, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    if-nez v7, :cond_1

    .line 730
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->imageviewLoading:Landroid/widget/ImageView;

    const v8, 0x7f0200a5

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 746
    :goto_1
    const v7, 0x7f0b0033

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    .line 747
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 749
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 750
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 751
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v8, Landroid/webkit/WebChromeClient;

    invoke-direct {v8}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 753
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v8, Lcom/miantan/myoface/EditorActivity$2;

    invoke-direct {v8, p0}, Lcom/miantan/myoface/EditorActivity$2;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 775
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const-string v8, "headEdit"

    invoke-virtual {v7, p0, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const-string v8, "file:///android_asset/headEdit.html"

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 777
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_2
    return-void

    .line 711
    :cond_0
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v8, 0x7f020050

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 734
    :cond_1
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->imageviewLoading:Landroid/widget/ImageView;

    const v8, 0x7f0200a6

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 784
    .local v1, msg_init:Landroid/os/Message;
    const/16 v7, 0xb

    iput v7, v1, Landroid/os/Message;->what:I

    .line 785
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    sget v8, Lcom/miantan/myoface/BasicData;->mLoadingTimeRetry:I

    int-to-long v8, v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method ShowColorPickerDialog()V
    .locals 6

    .prologue
    .line 1470
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    sget v5, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I

    aget-object v3, v4, v5

    .line 1471
    .local v3, pre_colorvalue:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1472
    .local v2, init_colorvalue:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1473
    .local v1, init_color:I
    const/high16 v4, -0x100

    or-int/2addr v1, v4

    .line 1478
    new-instance v0, Lcom/miantan/myoface/ColorPickerDialog;

    .line 1480
    new-instance v4, Lcom/miantan/myoface/EditorActivity$23;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/EditorActivity$23;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    .line 1478
    invoke-direct {v0, p0, v1, v4}, Lcom/miantan/myoface/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V

    .line 1508
    .local v0, cpdialog:Lcom/miantan/myoface/ColorPickerDialog;
    invoke-virtual {v0}, Lcom/miantan/myoface/ColorPickerDialog;->show()V

    .line 1554
    return-void
.end method

.method public convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "view"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 2710
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2712
    .local v4, widthSpec:I
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2714
    .local v1, heightSpec:I
    invoke-virtual {p1, v4, v1}, Landroid/view/View;->measure(II)V

    .line 2716
    iget v5, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    iget v6, p0, Lcom/miantan/myoface/EditorActivity;->widthPixels:I

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 2719
    const/high16 v5, 0x43a0

    invoke-static {p0, v5}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 2720
    .local v3, imgWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2724
    :cond_0
    move v2, v3

    .line 2725
    .local v2, imgHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v2, v5, :cond_1

    .line 2726
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2730
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 2731
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2733
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 2734
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "convertViewToBitmap bitmap is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_2
    return-object v0
.end method

.method getIndexPos(Lorg/json/JSONObject;)[I
    .locals 39
    .parameter "person"

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->LAST_INDEX:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 384
    .local v35, ret:[I
    :try_start_0
    const-string v37, "sexual"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 385
    .local v36, sexualindex:I
    const-string v37, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 386
    .local v23, hairindex:I
    const-string v37, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "color"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 387
    .local v21, haircolor:Ljava/lang/String;
    const-string v37, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 388
    .local v15, faceindex:I
    const-string v37, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "color"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 389
    .local v13, facecolor:Ljava/lang/String;
    const-string v37, "mouth"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 390
    .local v29, mouthindex:I
    const-string v37, "eye"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 391
    .local v11, eyeindex:I
    const-string v37, "eyebrow"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 392
    .local v9, eyebrowindex:I
    const-string v37, "hat"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 393
    .local v25, hatindex:I
    const-string v37, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 394
    .local v2, bgindex:I
    const-string v37, "hobby"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 395
    .local v27, likeindex:I
    const-string v37, "cloth"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 396
    .local v4, clothindex:I
    const-string v37, "bubble"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 397
    .local v33, qipaoindex:I
    const-string v37, "feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 398
    .local v17, featureindex:I
    const-string v37, "glass"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 399
    .local v19, glassindex:I
    const-string v37, "express"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 400
    .local v7, expindex:I
    const-string v37, "nose"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 429
    .local v31, noseindex:I
    const/16 v24, 0x0

    .line 430
    .local v24, hairpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_HAIRCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 431
    .local v22, haircolorpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_FACE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 432
    .local v16, facepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_SKINCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 433
    .local v14, facecolorpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_MOUSE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 434
    .local v30, mouthpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_EYE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 435
    .local v12, eyepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_EYEBROWS_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 436
    .local v10, eyebrowpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_HAT_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 437
    .local v26, hatpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_BG_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 438
    .local v3, bgpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_LIKE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 439
    .local v28, likepos:I
    const/4 v5, 0x0

    .line 440
    .local v5, clothpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_QIPAO_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 441
    .local v34, qipaopos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_FEATURE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 442
    .local v18, featurepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_GLASS_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 443
    .local v20, glasspos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_EXP_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 444
    .local v8, exppos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_NOSE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 445
    .local v32, nosepos:I
    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_HAIR_MAN_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_MAN_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 450
    :cond_0
    if-nez v36, :cond_1

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_HAIR_FEMALE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_FEMALE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v37, v0

    aput v24, v35, v37

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v37, v0

    aput v22, v35, v37

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v37, v0

    aput v16, v35, v37

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v37, v0

    aput v14, v35, v37

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v37, v0

    aput v10, v35, v37

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v37, v0

    aput v12, v35, v37

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v37, v0

    aput v30, v35, v37

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v37, v0

    aput v32, v35, v37

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v37, v0

    aput v18, v35, v37

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v37, v0

    aput v20, v35, v37

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v37, v0

    aput v5, v35, v37

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v37, v0

    aput v26, v35, v37

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v37, v0

    aput v28, v35, v37

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v37, v0

    aput v3, v35, v37

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v37, v0

    aput v8, v35, v37

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v37, v0

    aput v34, v35, v37
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v2           #bgindex:I
    .end local v3           #bgpos:I
    .end local v4           #clothindex:I
    .end local v5           #clothpos:I
    .end local v7           #expindex:I
    .end local v8           #exppos:I
    .end local v9           #eyebrowindex:I
    .end local v10           #eyebrowpos:I
    .end local v11           #eyeindex:I
    .end local v12           #eyepos:I
    .end local v13           #facecolor:Ljava/lang/String;
    .end local v14           #facecolorpos:I
    .end local v15           #faceindex:I
    .end local v16           #facepos:I
    .end local v17           #featureindex:I
    .end local v18           #featurepos:I
    .end local v19           #glassindex:I
    .end local v20           #glasspos:I
    .end local v21           #haircolor:Ljava/lang/String;
    .end local v22           #haircolorpos:I
    .end local v23           #hairindex:I
    .end local v24           #hairpos:I
    .end local v25           #hatindex:I
    .end local v26           #hatpos:I
    .end local v27           #likeindex:I
    .end local v28           #likepos:I
    .end local v29           #mouthindex:I
    .end local v30           #mouthpos:I
    .end local v31           #noseindex:I
    .end local v32           #nosepos:I
    .end local v33           #qipaoindex:I
    .end local v34           #qipaopos:I
    .end local v36           #sexualindex:I
    :goto_0
    return-object v35

    .line 476
    :catch_0
    move-exception v6

    .line 478
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2694
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2696
    .local v0, hasSDCard:Z
    if-eqz v0, :cond_0

    .line 2698
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

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2702
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 27
    .parameter "v"

    .prologue
    .line 2042
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2362
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2048
    :sswitch_1
    const-string v2, "BtnSave"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    if-nez v2, :cond_0

    .line 2053
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->savePicture()V

    .line 2062
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v2, :cond_1

    .line 2063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->sp_save:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity;->music_save:I

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2065
    :cond_1
    const-string v2, "BtnSave_Succ"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 2079
    .local v19, msg:Landroid/os/Message;
    const/16 v2, 0xc

    move-object/from16 v0, v19

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2067
    .end local v19           #msg:Landroid/os/Message;
    :catch_0
    move-exception v15

    .line 2068
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2076
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 2079
    .restart local v19       #msg:Landroid/os/Message;
    const/16 v2, 0xc

    move-object/from16 v0, v19

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2071
    .end local v15           #e:Ljava/lang/Exception;
    .end local v19           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    .line 2076
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miantan/myoface/EditorActivity;->isSaving:Z

    .line 2078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 2079
    .restart local v19       #msg:Landroid/os/Message;
    const/16 v3, 0xc

    move-object/from16 v0, v19

    iput v3, v0, Landroid/os/Message;->what:I

    .line 2080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2100
    throw v2

    .line 2109
    .end local v19           #msg:Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    if-nez v2, :cond_5

    .line 2111
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    .line 2112
    const-string v2, "BtnShare"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2117
    :try_start_2
    new-instance v16, Landroid/content/Intent;

    const-class v2, Lcom/miantan/myoface/ShareHelperActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2119
    .local v16, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 2121
    .local v11, bitWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 2124
    .local v5, bitHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    sub-int v3, v11, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v5

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 2125
    .local v26, webview_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 2127
    if-nez v26, :cond_2

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "webview_bitmap is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_2
    move-object/from16 v12, v26

    .line 2132
    .local v12, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v12}, Lcom/miantan/myoface/BitmapStore;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2135
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2136
    .local v13, bundle:Landroid/os/Bundle;
    const-string v25, "smode0"

    .line 2137
    .local v25, strfrom:Ljava/lang/String;
    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    if-nez v2, :cond_3

    .line 2138
    const-string v25, "smode0"

    .line 2139
    :cond_3
    sget v2, Lcom/miantan/myoface/EditorActivity;->mSexual:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2140
    const-string v25, "smode1"

    .line 2141
    :cond_4
    const-string v2, "from"

    move-object/from16 v0, v25

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/miantan/myoface/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    goto/16 :goto_0

    .line 2145
    .end local v5           #bitHeight:I
    .end local v11           #bitWidth:I
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #bundle:Landroid/os/Bundle;
    .end local v16           #i:Landroid/content/Intent;
    .end local v25           #strfrom:Ljava/lang/String;
    .end local v26           #webview_bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v15

    .line 2147
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    goto/16 :goto_0

    .line 2150
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 2151
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miantan/myoface/EditorActivity;->isSharing:Z

    .line 2152
    throw v2

    .line 2162
    :cond_5
    :sswitch_3
    const-string v2, "BtnBackMainPage"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2164
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2165
    .local v10, backIt:Landroid/content/Intent;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/miantan/myoface/EditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 2166
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->finish()V

    .line 2167
    const v2, 0x7f040006

    const v3, 0x7f040009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miantan/myoface/EditorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 2175
    .end local v10           #backIt:Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2178
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miantan/myoface/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 2184
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2186
    .local v24, str:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2187
    .local v9, allcnt:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_6

    .line 2197
    const/16 v2, 0x1e

    if-le v9, v2, :cond_8

    .line 2199
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2189
    :cond_6
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 2191
    .local v22, s:Ljava/lang/String;
    const-string v2, "[\\u4E00-\\u9FA5]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2192
    add-int/lit8 v9, v9, 0x2

    .line 2187
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2194
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2202
    .end local v22           #s:Ljava/lang/String;
    :cond_8
    const-string v20, ""

    .line 2203
    .local v20, newstr:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2204
    .local v14, cnt:I
    const/16 v17, 0x1

    .line 2205
    .local v17, line:I
    const/16 v16, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_9

    .line 2224
    const/4 v2, 0x3

    move/from16 v0, v17

    if-le v0, v2, :cond_c

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2207
    :cond_9
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 2208
    .restart local v22       #s:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2209
    .local v21, nowcnt:I
    const-string v2, "[\\u4E00-\\u9FA5]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2210
    const/16 v21, 0x2

    .line 2214
    :goto_4
    add-int v14, v14, v21

    .line 2216
    const/16 v2, 0xa

    if-le v14, v2, :cond_a

    .line 2218
    move/from16 v14, v21

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&el&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2220
    add-int/lit8 v17, v17, 0x1

    .line 2222
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2205
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2212
    :cond_b
    const/16 v21, 0x1

    goto :goto_4

    .line 2272
    .end local v21           #nowcnt:I
    .end local v22           #s:Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:bubbleEdit(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2273
    .local v23, sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2274
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miantan/myoface/EditorActivity;->strEditQipao:Ljava/lang/String;

    goto/16 :goto_0

    .line 2281
    .end local v9           #allcnt:I
    .end local v14           #cnt:I
    .end local v16           #i:I
    .end local v17           #line:I
    .end local v20           #newstr:Ljava/lang/String;
    .end local v23           #sUrl:Ljava/lang/String;
    .end local v24           #str:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2291
    :sswitch_7
    sget-boolean v2, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v2, :cond_d

    .line 2293
    const/4 v2, 0x0

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 2294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2302
    :goto_5
    invoke-static {}, Lcom/miantan/myoface/BasicData;->getSoundSwitch()I

    move-result v18

    .line 2303
    .local v18, mIsSoundOn:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SwitchSoundOn"

    move/from16 v0, v18

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2298
    .end local v18           #mIsSoundOn:I
    :cond_d
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_5

    .line 2331
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2333
    const v2, 0x7f0b006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    .line 2334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/miantan/myoface/EditorActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miantan/myoface/EditorActivity$25;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2346
    :sswitch_9
    const-string v2, "BtnSettings_BtnClose"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2352
    :sswitch_a
    const-string v2, "BtnSettings_TouchClose"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miantan/myoface/EditorActivity;->mViewSettings:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2042
    :sswitch_data_0
    .sparse-switch
        0x7f0b000e -> :sswitch_3
        0x7f0b005a -> :sswitch_1
        0x7f0b005c -> :sswitch_2
        0x7f0b0061 -> :sswitch_6
        0x7f0b0062 -> :sswitch_4
        0x7f0b0064 -> :sswitch_5
        0x7f0b0071 -> :sswitch_a
        0x7f0b0075 -> :sswitch_9
        0x7f0b0077 -> :sswitch_8
        0x7f0b007a -> :sswitch_0
        0x7f0b007c -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1560
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1563
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->InitDevice()V

    .line 1566
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/EditorActivity;->setContentView(I)V

    .line 1568
    iput-object p0, p0, Lcom/miantan/myoface/EditorActivity;->mContext:Landroid/content/Context;

    .line 1571
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->InitData()V

    .line 1574
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->InitUI()V

    .line 1575
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miantan/myoface/BitmapCacheLru;->initBitmapCache(Landroid/content/Context;)V

    .line 1581
    invoke-virtual {p0, p1}, Lcom/miantan/myoface/EditorActivity;->InitOp(Landroid/os/Bundle;)V

    .line 1588
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity:Z

    if-eqz v0, :cond_0

    .line 1591
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    .line 1592
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miantan/myoface/EditorActivity$24;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/EditorActivity$24;-><init>(Lcom/miantan/myoface/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1600
    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity:Z

    .line 1602
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NeverEnteredEditorActivity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1603
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1607
    :cond_0
    sget v0, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    if-nez v0, :cond_2

    .line 1608
    const-string v0, "EnterEditorPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1611
    :cond_1
    :goto_0
    return-void

    .line 1609
    :cond_2
    sget v0, Lcom/miantan/myoface/EditorActivity;->mEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1610
    const-string v0, "EnterEditorPage_EditMode"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 2915
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2917
    const/4 v1, 0x0

    .line 2918
    .local v1, rmgridview:Landroid/widget/GridView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2922
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2923
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 2932
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 2934
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2935
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->removeAllViews()V

    .line 2936
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 2939
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miantan/myoface/EditorActivity;->isOnPause:Z

    .line 2946
    return-void

    .line 2919
    :cond_1
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity;->listGridViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #rmgridview:Landroid/widget/GridView;
    check-cast v1, Landroid/widget/GridView;

    .line 2920
    .restart local v1       #rmgridview:Landroid/widget/GridView;
    const/4 v1, 0x0

    .line 2918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 2895
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2897
    :try_start_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2899
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 2900
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2906
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 2910
    return-void

    .line 2903
    :catch_0
    move-exception v0

    .line 2904
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 2872
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2874
    :try_start_0
    iget-boolean v1, p0, Lcom/miantan/myoface/EditorActivity;->isOnPause:Z

    if-eqz v1, :cond_1

    .line 2875
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2877
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 2879
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2885
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 2892
    return-void

    .line 2881
    :catch_0
    move-exception v0

    .line 2882
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public randomElement()V
    .locals 7

    .prologue
    .line 1976
    const/16 v3, 0x10

    new-array v1, v3, [I

    .line 1977
    .local v1, randoms:[I
    const/4 v2, 0x0

    .line 1978
    .local v2, temp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 1982
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 1990
    const-string v3, "ShakeRandom"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1991
    return-void

    .line 1980
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 1978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1982
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public readBitMap(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x1

    .line 3012
    const/4 v0, 0x0

    .line 3013
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miantan/myoface/BitmapCacheLru;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3014
    if-nez v0, :cond_0

    .line 3015
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3016
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3017
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3018
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 3019
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 3020
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3021
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miantan/myoface/BitmapCacheLru;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3024
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Z)I
    .locals 19
    .parameter "strFileName"
    .parameter "shareToast"

    .prologue
    .line 2749
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2750
    .local v13, hasSDCard:Z
    if-nez v13, :cond_0

    .line 2751
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x2

    .line 2820
    :goto_0
    return v1

    .line 2755
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2757
    .local v8, bitWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2760
    .local v4, bitHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    sub-int v2, v8, v4

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2762
    .local v18, webview_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 2769
    if-nez v18, :cond_1

    .line 2770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "webview_bitmap is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_1
    move-object/from16 v9, v18

    .line 2775
    .local v9, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getSDPath()Ljava/lang/String;

    move-result-object v16

    .line 2779
    .local v16, strPath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miantan/myoface/EditorActivity;->gCurFilePath:Ljava/lang/String;

    .line 2780
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2781
    .local v10, destDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2783
    const-string v1, "MagicMirror"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dir not exist create it "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 2785
    const-string v1, "MagicMirror"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Make dir success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_2
    new-instance v14, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2789
    .local v14, imageFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 2790
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2791
    .local v12, fos:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {v9, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 2793
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2795
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2796
    .local v15, imgIntent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    .line 2797
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2798
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/miantan/myoface/EditorActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2815
    .end local v10           #destDir:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v15           #imgIntent:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :goto_1
    if-eqz p2, :cond_3

    .line 2817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity;->ShowToast(Ljava/lang/String;)V

    .line 2820
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2804
    :catch_0
    move-exception v11

    .line 2807
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 2809
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 2812
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public savePicture()V
    .locals 5

    .prologue
    .line 2686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2687
    .local v1, nowTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity;->appname:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/EditorActivity;->saveImage(Ljava/lang/String;Z)I

    .line 2689
    return-void
.end method

.method setIndexNumAndColorByPerson(Lorg/json/JSONObject;)V
    .locals 24
    .parameter "person"

    .prologue
    .line 489
    :try_start_0
    const-string v21, "sexual"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 490
    .local v20, sexualindex:I
    rsub-int/lit8 v19, v20, 0x1

    .line 492
    .local v19, sex:I
    const-string v21, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 493
    .local v13, hairindex:I
    const-string v21, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    .local v12, haircolor:Ljava/lang/String;
    const-string v21, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 495
    .local v9, faceindex:I
    const-string v21, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, facecolor:Ljava/lang/String;
    const-string v21, "eyebrow"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 497
    .local v6, eyebrowindex:I
    const-string v21, "eye"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 498
    .local v7, eyeindex:I
    const-string v21, "mouth"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 499
    .local v16, mouthindex:I
    const-string v21, "nose"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 500
    .local v17, noseindex:I
    const-string v21, "feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 501
    .local v10, featureindex:I
    const-string v21, "hat"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 502
    .local v14, hatindex:I
    const-string v21, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 503
    .local v2, bgindex:I
    const-string v21, "hobby"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 504
    .local v15, likeindex:I
    const-string v21, "cloth"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 505
    .local v3, clothindex:I
    const-string v21, "bubble"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 506
    .local v18, qipaoindex:I
    const-string v21, "glass"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 507
    .local v11, glassindex:I
    const-string v21, "express"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 509
    .local v5, expindex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v22, v0

    aput v13, v21, v22

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v22, v0

    aput-object v12, v21, v22

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v22, v0

    aput v9, v21, v22

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v22, v0

    aput-object v8, v21, v22

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v22, v0

    aput v6, v21, v22

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v22, v0

    aput v7, v21, v22

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v22, v0

    aput v16, v21, v22

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v22, v0

    aput v17, v21, v22

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v22, v0

    aput v10, v21, v22

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v22, v0

    aput v11, v21, v22

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v22, v0

    aput v3, v21, v22

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v22, v0

    aput v14, v21, v22

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v22, v0

    aput v15, v21, v22

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v22, v0

    aput v2, v21, v22

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v22, v0

    aput v5, v21, v22

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BIANSHEN:I

    move/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v21, v22
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v2           #bgindex:I
    .end local v3           #clothindex:I
    .end local v5           #expindex:I
    .end local v6           #eyebrowindex:I
    .end local v7           #eyeindex:I
    .end local v8           #facecolor:Ljava/lang/String;
    .end local v9           #faceindex:I
    .end local v10           #featureindex:I
    .end local v11           #glassindex:I
    .end local v12           #haircolor:Ljava/lang/String;
    .end local v13           #hairindex:I
    .end local v14           #hatindex:I
    .end local v15           #likeindex:I
    .end local v16           #mouthindex:I
    .end local v17           #noseindex:I
    .end local v18           #qipaoindex:I
    .end local v19           #sex:I
    .end local v20           #sexualindex:I
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v4

    .line 534
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
