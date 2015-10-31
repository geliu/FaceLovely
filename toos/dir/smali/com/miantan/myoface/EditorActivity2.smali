.class public Lcom/miantan/myoface/EditorActivity2;
.super Landroid/app/Activity;
.source "EditorActivity2.java"

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
        Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;,
        Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;,
        Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;
    }
.end annotation


# static fields
.field public static final MSG_CHANGE_POSITION_0:I = 0xc

.field public static final MSG_CHANGE_POSITION_1:I = 0xd

.field public static final MSG_EDIT_RECORD2:I = 0x10

.field public static final MSG_NET_CONNECTED_FALSE:I = 0x1

.field public static final MSG_RECORDING_TOO_SHORT:I = 0x4

.field public static final MSG_SAVE_IMAGE:I = 0xe

.field public static final MSG_SDCARD_FALSE:I = 0x2

.field public static final MSG_SHARE:I = 0xf

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


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private btnBackIndex:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnSendQipao:Landroid/widget/Button;

.field private btnSettings:Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field cnt0:I

.field cnt1:I

.field editor:Landroid/content/SharedPreferences$Editor;

.field gCurFilePath:Ljava/lang/String;

.field private gCurTypeIndex:I

.field gCursorImage:Landroid/widget/ImageView;

.field gCursorWidth:I

.field private gMode:I

.field private gPosition:I

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

.field private listAllTypeElemIndex2:Ljava/util/List;
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

.field private listAllTypeElemShow2:Ljava/util/List;
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
            "Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field listGridViewAdapters2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;",
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

.field listGridViews2:Ljava/util/List;
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

.field private music_boy:I

.field private music_girl:I

.field private music_save:I

.field private music_shake:I

.field private music_share:I

.field myPageAdapter:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

.field myPageAdapter2:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

.field preferences:Landroid/content/SharedPreferences;

.field private relativelayoutBg:Landroid/widget/RelativeLayout;

.field private relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

.field private relativelayoutET:Landroid/widget/RelativeLayout;

.field private relativelayoutLoading:Landroid/widget/RelativeLayout;

.field private relativelayoutOp:Landroid/widget/RelativeLayout;

.field private relativelayoutWebview:Landroid/widget/RelativeLayout;

.field private sEditModePersonStr1:Ljava/lang/String;

.field private sEditModePersonStr2:Ljava/lang/String;

.field private sp_boy:Landroid/media/SoundPool;

.field private sp_girl:Landroid/media/SoundPool;

.field private sp_save:Landroid/media/SoundPool;

.field private sp_shake:Landroid/media/SoundPool;

.field private sp_share:Landroid/media/SoundPool;

.field private strEditQipao:Ljava/lang/String;

.field private strEditQipao2:Ljava/lang/String;

.field private sysVersion:I

.field private widthPixels:I

.field private widthdp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity2;->isNetConnected:Z

    .line 201
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity2;->isSDCardAvailable:Z

    .line 202
    sput-boolean v0, Lcom/miantan/myoface/EditorActivity2;->isWXInstalled:Z

    .line 204
    sput v0, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    .line 235
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    const-string v0, "FaceQ"

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->appname:Ljava/lang/String;

    .line 148
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 168
    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isOnPause:Z

    .line 179
    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    .line 180
    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isSharing:Z

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao2:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr1:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr2:Ljava/lang/String;

    .line 214
    const/16 v0, 0x30

    iput v0, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_title:I

    .line 238
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    .line 239
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 243
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters:Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    .line 251
    new-instance v0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    invoke-direct {v0, p0, v2}, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;-><init>(Lcom/miantan/myoface/EditorActivity2;Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;)V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViews2:Ljava/util/List;

    .line 257
    new-instance v0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    invoke-direct {v0, p0, v2}, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;-><init>(Lcom/miantan/myoface/EditorActivity2;Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;)V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter2:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    .line 262
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->manager:Landroid/app/LocalActivityManager;

    .line 264
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    .line 268
    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 299
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->cnt0:I

    .line 300
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->cnt1:I

    .line 310
    const/16 v0, 0xa

    iput v0, p0, Lcom/miantan/myoface/EditorActivity2;->sysVersion:I

    .line 3187
    new-instance v0, Lcom/miantan/myoface/EditorActivity2$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/EditorActivity2$1;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method private DoCheckNetwork()V
    .locals 3

    .prologue
    .line 3453
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity2;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isNetConnected:Z

    .line 3454
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isNetConnected:Z

    if-nez v2, :cond_0

    .line 3456
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3457
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3458
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3469
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3461
    :catch_0
    move-exception v0

    .line 3463
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private DoCheckSharePrepare()V
    .locals 3

    .prologue
    .line 3409
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity2;->CheckisNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isNetConnected:Z

    .line 3410
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isNetConnected:Z

    if-nez v2, :cond_1

    .line 3412
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3413
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3414
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3442
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3417
    :catch_0
    move-exception v0

    .line 3419
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3426
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/miantan/myoface/EditorActivity2;->CheckisWXInstalled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isWXInstalled:Z

    .line 3427
    sget-boolean v2, Lcom/miantan/myoface/EditorActivity2;->isWXInstalled:Z

    if-nez v2, :cond_0

    .line 3429
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3430
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3431
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3434
    .end local v1           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 3436
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 3683
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3684
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3685
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3686
    return-void
.end method

.method private ShowToastForErrTips(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 3689
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3690
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3691
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3692
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3681
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/miantan/myoface/EditorActivity2;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewSaving:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/miantan/myoface/EditorActivity2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2160
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->setPosition(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/miantan/myoface/EditorActivity2;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->sp_save:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$12(Lcom/miantan/myoface/EditorActivity2;)I
    .locals 1
    .parameter

    .prologue
    .line 285
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->music_save:I

    return v0
.end method

.method static synthetic access$13(Lcom/miantan/myoface/EditorActivity2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/miantan/myoface/EditorActivity2;->isSharing:Z

    return-void
.end method

.method static synthetic access$14(Lcom/miantan/myoface/EditorActivity2;)I
    .locals 1
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_griditem:I

    return v0
.end method

.method static synthetic access$15(Lcom/miantan/myoface/EditorActivity2;)I
    .locals 1
    .parameter

    .prologue
    .line 239
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    return v0
.end method

.method static synthetic access$16(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19(Lcom/miantan/myoface/EditorActivity2;)I
    .locals 1
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/miantan/myoface/EditorActivity2;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2783
    invoke-direct {p0, p1, p2}, Lcom/miantan/myoface/EditorActivity2;->getSexual(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2695
    invoke-direct {p0, p1, p2, p3}, Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$25(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27(Lcom/miantan/myoface/EditorActivity2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4207
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->animateToTab(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/miantan/myoface/EditorActivity2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput p1, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    return-void
.end method

.method static synthetic access$29(Lcom/miantan/myoface/EditorActivity2;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/miantan/myoface/EditorActivity2;I)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2192
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->getParamV2(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30(Lcom/miantan/myoface/EditorActivity2;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2680
    invoke-direct {p0, p1, p2}, Lcom/miantan/myoface/EditorActivity2;->getJsFun(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$32(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4(Lcom/miantan/myoface/EditorActivity2;)I
    .locals 1
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    return v0
.end method

.method static synthetic access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    return-object v0
.end method

.method static synthetic access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/miantan/myoface/EditorActivity2;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$9(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3687
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->ShowToastForErrTips(Ljava/lang/String;)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 4209
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4210
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4211
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4213
    :cond_0
    new-instance v1, Lcom/miantan/myoface/EditorActivity2$27;

    invoke-direct {v1, p0, v0}, Lcom/miantan/myoface/EditorActivity2$27;-><init>(Lcom/miantan/myoface/EditorActivity2;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;

    .line 4220
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 4221
    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 3178
    if-nez p1, :cond_0

    .line 3179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3181
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

    .line 3658
    if-nez p1, :cond_0

    move-object v5, v6

    .line 3678
    :goto_0
    return-object v5

    .line 3662
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 3663
    .local v1, bgWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 3664
    .local v0, bgHeight:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3665
    .local v4, fgWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3668
    .local v3, fgHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3669
    .local v5, newbmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3671
    .local v2, cv:Landroid/graphics/Canvas;
    invoke-virtual {v2, p1, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3673
    sub-int v7, v0, v3

    int-to-float v7, v7

    invoke-virtual {v2, p2, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3675
    const/16 v6, 0x1f

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 3677
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 3505
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3506
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getColorParam(III)Ljava/lang/String;
    .locals 5
    .parameter "curPosition"
    .parameter "curTypeIndex"
    .parameter "curElementIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x3

    .line 2657
    const-string v0, ""

    .line 2658
    .local v0, ret:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2660
    if-eq p2, v2, :cond_0

    if-ne p2, v4, :cond_1

    .line 2662
    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

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

    .line 2664
    .local v1, sColor:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2676
    .end local v1           #sColor:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 2667
    :cond_2
    if-ne p1, v2, :cond_1

    .line 2669
    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_1

    .line 2671
    :cond_3
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

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

    .line 2673
    .restart local v1       #sColor:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getJSFunParam(III)Ljava/lang/String;
    .locals 8
    .parameter "curPosition"
    .parameter "curTypeIndex"
    .parameter "curElemindex"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 2699
    const-string v0, ""

    .line 2700
    .local v0, ret:Ljava/lang/String;
    if-nez p1, :cond_6

    .line 2702
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v5, v5, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_JSFUN2:[Ljava/lang/Integer;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2703
    .local v2, sJsFun:Ljava/lang/String;
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne p2, v4, :cond_0

    .line 2705
    if-nez p3, :cond_3

    .line 2707
    const-string v2, "cleanBubbl2eTextA"

    .line 2716
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2717
    .local v3, sParam:Ljava/lang/String;
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne p2, v4, :cond_4

    .line 2719
    :cond_1
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2721
    .local v1, sColor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2734
    .end local v1           #sColor:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2779
    :goto_2
    return-object v0

    .line 2709
    .end local v3           #sParam:Ljava/lang/String;
    :cond_3
    if-ne p3, v6, :cond_0

    .line 2711
    const-string v2, "bubbl2eChangeA"

    goto :goto_0

    .line 2723
    .restart local v3       #sParam:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne p2, v4, :cond_2

    .line 2725
    if-nez p3, :cond_5

    .line 2727
    const-string v3, "0"

    .line 2728
    goto :goto_1

    .line 2729
    :cond_5
    if-ne p3, v6, :cond_2

    .line 2731
    const-string v3, "1"

    goto :goto_1

    .line 2738
    .end local v2           #sJsFun:Ljava/lang/String;
    .end local v3           #sParam:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v5, v5, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_JSFUN2:[Ljava/lang/Integer;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2739
    .restart local v2       #sJsFun:Ljava/lang/String;
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne p2, v4, :cond_7

    .line 2741
    if-nez p3, :cond_b

    .line 2743
    const-string v2, "cleanBubbl2eTextB"

    .line 2751
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-eq p2, v4, :cond_8

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    if-eq p2, v4, :cond_8

    .line 2753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2757
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2758
    .restart local v3       #sParam:Ljava/lang/String;
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq p2, v4, :cond_9

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne p2, v4, :cond_c

    .line 2760
    :cond_9
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2762
    .restart local v1       #sColor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2775
    .end local v1           #sColor:Ljava/lang/String;
    :cond_a
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2745
    .end local v3           #sParam:Ljava/lang/String;
    :cond_b
    if-ne p3, v6, :cond_7

    .line 2747
    const-string v2, "bubbl2eChangeB"

    goto/16 :goto_3

    .line 2764
    .restart local v3       #sParam:Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne p2, v4, :cond_a

    .line 2766
    if-nez p3, :cond_d

    .line 2768
    const-string v3, "0"

    .line 2769
    goto :goto_4

    .line 2770
    :cond_d
    if-ne p3, v6, :cond_a

    .line 2772
    const-string v3, "2"

    goto :goto_4
.end method

.method private getJsFun(II)Ljava/lang/String;
    .locals 3
    .parameter "curPosition"
    .parameter "curTypeIndex"

    .prologue
    .line 2682
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_JSFUN2:[Ljava/lang/Integer;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2683
    .local v0, ret:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2685
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    if-eq p2, v1, :cond_0

    .line 2687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2690
    :cond_0
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
    .line 2183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 2188
    return-object v1

    .line 2186
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getParamV2(I)Lorg/json/JSONObject;
    .locals 24
    .parameter "position"

    .prologue
    .line 2198
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 2199
    .local v18, person:Lorg/json/JSONObject;
    if-nez p1, :cond_4

    .line 2201
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 2202
    .local v20, sexual:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miantan/myoface/EditorActivity2;->getSexual(II)I

    move-result v22

    rsub-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2204
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 2205
    .local v13, hair:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2206
    const-string v21, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2207
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2208
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2210
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2211
    .local v10, face:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2212
    const-string v21, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2213
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2214
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2216
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 2217
    .local v16, mouth:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2218
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2219
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2221
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2222
    .local v8, eye:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2223
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2224
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2226
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2227
    .local v9, eyebrow:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2228
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2229
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2231
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 2232
    .local v14, hat:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2233
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2234
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2236
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 2237
    .local v15, hobby:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2238
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2239
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2241
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2242
    .local v5, cloth:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2243
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2244
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2246
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2247
    .local v4, bdBubble:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    aget-object v21, v21, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v22, v0

    aget v19, v21, v22

    .line 2248
    .local v19, qipao_index:I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 2251
    const v19, 0xc368

    .line 2252
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 2253
    const v19, 0xc36a

    .line 2254
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 2255
    const v19, 0xc369

    .line 2257
    :cond_2
    const-string v21, "id"

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2258
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2259
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2261
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2262
    .local v11, feature:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2263
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2264
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2266
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2267
    .local v12, glass:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2268
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2269
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2271
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 2272
    .local v7, express:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2273
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2274
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2276
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 2277
    .local v17, nose:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2278
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2279
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2281
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2282
    .local v3, background:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2286
    const-string v21, "sexual"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2287
    const-string v21, "hair"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2288
    const-string v21, "face"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2289
    const-string v21, "mouth"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2290
    const-string v21, "eye"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2291
    const-string v21, "eyebrow"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2292
    const-string v21, "hat"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2293
    const-string v21, "hobby"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2294
    const-string v21, "cloth"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2295
    const-string v21, "feature"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2296
    const-string v21, "glass"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2297
    const-string v21, "express"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2298
    const-string v21, "nose"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2299
    if-nez p1, :cond_3

    .line 2301
    const-string v21, "background"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2302
    const-string v21, "bdBubble"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2417
    .end local v3           #background:Lorg/json/JSONObject;
    .end local v4           #bdBubble:Lorg/json/JSONObject;
    .end local v5           #cloth:Lorg/json/JSONObject;
    .end local v7           #express:Lorg/json/JSONObject;
    .end local v8           #eye:Lorg/json/JSONObject;
    .end local v9           #eyebrow:Lorg/json/JSONObject;
    .end local v10           #face:Lorg/json/JSONObject;
    .end local v11           #feature:Lorg/json/JSONObject;
    .end local v12           #glass:Lorg/json/JSONObject;
    .end local v13           #hair:Lorg/json/JSONObject;
    .end local v14           #hat:Lorg/json/JSONObject;
    .end local v15           #hobby:Lorg/json/JSONObject;
    .end local v16           #mouth:Lorg/json/JSONObject;
    .end local v17           #nose:Lorg/json/JSONObject;
    .end local v18           #person:Lorg/json/JSONObject;
    .end local v19           #qipao_index:I
    .end local v20           #sexual:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-object v18

    .line 2305
    .restart local v18       #person:Lorg/json/JSONObject;
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2307
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 2308
    .restart local v20       #sexual:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miantan/myoface/EditorActivity2;->getSexual(II)I

    move-result v22

    rsub-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2310
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 2311
    .restart local v13       #hair:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2312
    const-string v21, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2313
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2314
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2316
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2317
    .restart local v10       #face:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2318
    const-string v21, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2319
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2320
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2322
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 2323
    .restart local v16       #mouth:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2324
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2325
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2327
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2328
    .restart local v8       #eye:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2329
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2330
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2332
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2333
    .restart local v9       #eyebrow:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2334
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2335
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2337
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 2338
    .restart local v14       #hat:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2339
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2340
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2342
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 2343
    .restart local v15       #hobby:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2344
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2345
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2347
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2348
    .restart local v5       #cloth:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2349
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2350
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2353
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2354
    .restart local v11       #feature:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2355
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2356
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2358
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2359
    .restart local v4       #bdBubble:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    aget-object v21, v21, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v22, v0

    aget v19, v21, v22

    .line 2360
    .restart local v19       #qipao_index:I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 2363
    const v19, 0xc368

    .line 2364
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 2365
    const v19, 0xc36a

    .line 2366
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2367
    const v19, 0xc369

    .line 2369
    :cond_7
    const-string v21, "id"

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2370
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2371
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2373
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2374
    .restart local v12       #glass:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2375
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2376
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2378
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 2379
    .restart local v7       #express:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2380
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2381
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2383
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 2384
    .restart local v17       #nose:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2385
    const-string v21, "x"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2386
    const-string v21, "y"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2388
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2389
    .restart local v3       #background:Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aget-object v22, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2393
    const-string v21, "sexual"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2394
    const-string v21, "hair"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2395
    const-string v21, "face"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2396
    const-string v21, "mouth"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2397
    const-string v21, "eye"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2398
    const-string v21, "eyebrow"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2399
    const-string v21, "hat"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2400
    const-string v21, "hobby"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2401
    const-string v21, "cloth"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2402
    const-string v21, "feature"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2403
    const-string v21, "glass"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2404
    const-string v21, "express"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2405
    const-string v21, "nose"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2408
    const-string v21, "background"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2409
    const-string v21, "bdBubble"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2414
    .end local v3           #background:Lorg/json/JSONObject;
    .end local v4           #bdBubble:Lorg/json/JSONObject;
    .end local v5           #cloth:Lorg/json/JSONObject;
    .end local v7           #express:Lorg/json/JSONObject;
    .end local v8           #eye:Lorg/json/JSONObject;
    .end local v9           #eyebrow:Lorg/json/JSONObject;
    .end local v10           #face:Lorg/json/JSONObject;
    .end local v11           #feature:Lorg/json/JSONObject;
    .end local v12           #glass:Lorg/json/JSONObject;
    .end local v13           #hair:Lorg/json/JSONObject;
    .end local v14           #hat:Lorg/json/JSONObject;
    .end local v15           #hobby:Lorg/json/JSONObject;
    .end local v16           #mouth:Lorg/json/JSONObject;
    .end local v17           #nose:Lorg/json/JSONObject;
    .end local v18           #person:Lorg/json/JSONObject;
    .end local v19           #qipao_index:I
    .end local v20           #sexual:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 2415
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2417
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private getSexual(II)I
    .locals 2
    .parameter "mode"
    .parameter "position"

    .prologue
    .line 2786
    const/4 v0, 0x0

    .line 2787
    .local v0, msexual:I
    if-nez p1, :cond_2

    .line 2789
    if-nez p2, :cond_1

    .line 2790
    const/4 v0, 0x0

    .line 2803
    :cond_0
    :goto_0
    return v0

    .line 2792
    :cond_1
    const/4 v0, 0x1

    .line 2793
    goto :goto_0

    .line 2794
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 2796
    const/4 v0, 0x1

    .line 2797
    goto :goto_0

    .line 2798
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2800
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 3513
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3514
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 2162
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 2164
    iput v1, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 2166
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter2:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2167
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    iget v0, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2173
    const/4 v0, 0x0

    iput v0, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 2175
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2176
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method


# virtual methods
.method public CheckisNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 3473
    if-eqz p1, :cond_0

    .line 3475
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3474
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3476
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3477
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 3478
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 3481
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

    .line 3485
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3486
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 3488
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 3489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0           #i:I
    :cond_0
    move v4, v5

    .line 3497
    :goto_1
    return v4

    .line 3490
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3492
    .local v3, pn:Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3493
    const/4 v4, 0x1

    goto :goto_1

    .line 3489
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/miantan/myoface/BasicDataApplication;

    iput-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 810
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 811
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 813
    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    if-nez v3, :cond_2

    .line 815
    iput v5, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 817
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->InitElement()V

    .line 982
    sget v3, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    if-ne v3, v6, :cond_1

    .line 985
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr1:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 986
    .local v1, person1:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr2:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 998
    .local v2, person2:Lorg/json/JSONObject;
    invoke-virtual {p0, v1, v2}, Lcom/miantan/myoface/EditorActivity2;->setIndexNumAndColorByPerson2(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v1           #person1:Lorg/json/JSONObject;
    .end local v2           #person2:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    iput v5, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    .line 1012
    return-void

    .line 890
    :cond_2
    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    if-ne v3, v6, :cond_3

    .line 892
    iput v5, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 894
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_FEMALE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iput-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    .line 931
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iput-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    goto/16 :goto_0

    .line 933
    :cond_3
    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 935
    iput v5, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    .line 937
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX2:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    iput-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    .line 974
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;

    iput-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;

    goto/16 :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public InitDevice()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 320
    const-string v4, "config"

    invoke-virtual {p0, v4, v9}, Lcom/miantan/myoface/EditorActivity2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->preferences:Landroid/content/SharedPreferences;

    .line 321
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->editor:Landroid/content/SharedPreferences$Editor;

    .line 326
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->sysVersion:I

    .line 334
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_save:Landroid/media/SoundPool;

    .line 335
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_save:Landroid/media/SoundPool;

    const v5, 0x7f050002

    invoke-virtual {v4, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->music_save:I

    .line 337
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_share:Landroid/media/SoundPool;

    .line 338
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_share:Landroid/media/SoundPool;

    const v5, 0x7f050004

    invoke-virtual {v4, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->music_share:I

    .line 340
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_shake:Landroid/media/SoundPool;

    .line 341
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_shake:Landroid/media/SoundPool;

    const v5, 0x7f050003

    invoke-virtual {v4, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->music_shake:I

    .line 343
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_boy:Landroid/media/SoundPool;

    .line 344
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_boy:Landroid/media/SoundPool;

    const/high16 v5, 0x7f05

    invoke-virtual {v4, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->music_boy:I

    .line 346
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_girl:Landroid/media/SoundPool;

    .line 347
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sp_girl:Landroid/media/SoundPool;

    const v5, 0x7f050001

    invoke-virtual {v4, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->music_girl:I

    .line 355
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 356
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 357
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    .line 358
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightPixels:I

    .line 359
    iget v4, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    int-to-float v4, v4

    invoke-static {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->px2dip(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->widthdp:I

    .line 360
    iget v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightPixels:I

    int-to-float v4, v4

    invoke-static {p0, v4}, Lcom/miantan/myoface/EditorActivity2;->px2dip(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp:I

    .line 362
    iget v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_show:I

    .line 363
    iget v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp:I

    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_title:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_show:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_op:I

    .line 364
    iget v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_op:I

    add-int/lit8 v4, v4, -0x2c

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_griditem:I

    .line 370
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 371
    .local v1, editBundle:Landroid/os/Bundle;
    const-string v4, "dmode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, modeString:Ljava/lang/String;
    const-string v4, "editType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, typeString:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    iput v9, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    .line 383
    :cond_0
    :goto_0
    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 384
    sput v9, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    .line 390
    :cond_1
    :goto_1
    return-void

    .line 375
    :cond_2
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    iput v6, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    goto :goto_0

    .line 378
    :cond_3
    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    const/4 v4, 0x2

    iput v4, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    goto :goto_0

    .line 385
    :cond_4
    const-string v4, "edit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    sput v6, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    .line 387
    const-string v4, "person1"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr1:Ljava/lang/String;

    .line 388
    const-string v4, "person2"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->sEditModePersonStr2:Ljava/lang/String;

    goto :goto_1
.end method

.method public InitElement()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->LAST_INDEX:I

    if-le v0, v1, :cond_0

    .line 2834
    return-void

    .line 2810
    :cond_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    iget v2, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNumInit2:[[[I

    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2811
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    iget v2, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNumInit2:[[[I

    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v2, v2, v3

    aget-object v2, v2, v5

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2812
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget v1, v1, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v0, v1, :cond_2

    .line 2814
    :cond_1
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget v2, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColorInit2:[[[Ljava/lang/String;

    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 2815
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget v2, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v2, v2, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColorInit2:[[[Ljava/lang/String;

    iget v3, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v2, v2, v3

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 2808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitOp(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 1018
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v9, v3, :cond_1

    .line 1775
    const v3, 0x7f0b001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1776
    const v3, 0x7f0b0065

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    .line 1778
    new-instance v3, Landroid/app/LocalActivityManager;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->manager:Landroid/app/LocalActivityManager;

    .line 1779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->manager:Landroid/app/LocalActivityManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    .line 1787
    const v3, 0x7f0b0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->gCursorImage:Landroid/widget/ImageView;

    .line 1789
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1790
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1791
    .local v5, oldCursorWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1792
    .local v6, oldCursorHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    int-to-double v3, v3

    const-wide v19, 0x3fcbc6a7ef9db22dL

    mul-double v3, v3, v19

    double-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miantan/myoface/EditorActivity2;->gCursorWidth:I

    .line 1795
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1796
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity2;->gCursorWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    int-to-float v4, v5

    const/high16 v8, 0x3f80

    mul-float/2addr v4, v8

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1798
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1800
    .local v16, newbm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->gCursorImage:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1801
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1802
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1804
    :cond_0
    const/4 v2, 0x0

    .line 1809
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/miantan/myoface/EmptyActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1811
    .local v10, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC2:[Ljava/lang/Integer;

    array-length v3, v3

    if-lt v9, v3, :cond_2

    .line 1831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->setViewList(Ljava/util/List;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter2:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViews2:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->setViewList(Ljava/util/List;)V

    .line 1834
    const v3, 0x7f0b0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2;->myPageAdapter:Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$5;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$6;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$7;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$8;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$9;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$10;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$11;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$12;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$13;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$14;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$15;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$16;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$17;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$18;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$19;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$20;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$21;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$22;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$22;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miantan/myoface/EditorActivity2$23;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miantan/myoface/EditorActivity2$23;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2037
    return-void

    .line 1019
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v5           #oldCursorWidth:I
    .end local v6           #oldCursorHeight:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v16           #newbm:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v12, Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 1022
    .local v12, mGridView:Landroid/widget/GridView;
    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1023
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1024
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1025
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 1026
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 1031
    new-instance v14, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;-><init>(Lcom/miantan/myoface/EditorActivity2;Landroid/content/Context;Ljava/util/List;)V

    .line 1032
    .local v14, mySimpleAdapter:Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setPosition(I)V

    .line 1033
    invoke-virtual {v14, v9}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 1034
    invoke-virtual {v12, v14}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1035
    const v3, 0x7f02007d

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 1036
    new-instance v3, Lcom/miantan/myoface/EditorActivity2$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miantan/myoface/EditorActivity2$3;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1354
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 1355
    const v3, 0x7f060002

    invoke-virtual {v12, v3}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    new-instance v13, Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 1362
    .local v13, mGridView2:Landroid/widget/GridView;
    const/4 v3, 0x3

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1363
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1364
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1365
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 1366
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 1369
    new-instance v15, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1, v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;-><init>(Lcom/miantan/myoface/EditorActivity2;Landroid/content/Context;Ljava/util/List;)V

    .line 1370
    .local v15, mySimpleAdapter2:Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setPosition(I)V

    .line 1371
    invoke-virtual {v15, v9}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 1372
    invoke-virtual {v13, v15}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1373
    const v3, 0x7f02007d

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 1374
    new-instance v3, Lcom/miantan/myoface/EditorActivity2$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miantan/myoface/EditorActivity2$4;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1764
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 1765
    const v3, 0x7f060002

    invoke-virtual {v13, v3}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViews2:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v12           #mGridView:Landroid/widget/GridView;
    .end local v13           #mGridView2:Landroid/widget/GridView;
    .end local v14           #mySimpleAdapter:Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;
    .end local v15           #mySimpleAdapter2:Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v5       #oldCursorWidth:I
    .restart local v6       #oldCursorHeight:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v16       #newbm:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030014

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 1815
    .local v18, tabIndicator:Landroid/widget/RelativeLayout;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miantan/myoface/EditorActivity2;->gCursorWidth:I

    const/high16 v4, 0x4220

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v4

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1816
    .local v17, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1823
    const v3, 0x7f0b00ab

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1824
    .local v11, ivTab:Landroid/widget/ImageView;
    if-nez v9, :cond_3

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC_DOWN2:[Ljava/lang/Integer;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1828
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miantan/myoface/EditorActivity2;->mTabHost:Landroid/widget/TabHost;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1811
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1827
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC2:[Ljava/lang/Integer;

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
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 622
    const v7, 0x7f0b005d

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutBg:Landroid/widget/RelativeLayout;

    .line 623
    const v7, 0x7f0b005e

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutOp:Landroid/widget/RelativeLayout;

    .line 624
    const v7, 0x7f0b005f

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    .line 625
    const v7, 0x7f0b0034

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    .line 626
    const v7, 0x7f0b0062

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;

    .line 627
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 631
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_show:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 632
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 633
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 637
    .local v3, param3:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_op:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 638
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 639
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 642
    .local v5, param_webview:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_show:I

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 643
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 644
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    const v7, 0x7f0b007f

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 648
    .local v6, relativelayoutDoubleUserLearn2:Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 649
    .local v4, param4:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/miantan/myoface/EditorActivity2;->heightdp_op:I

    add-int/lit8 v7, v7, 0x32

    int-to-float v7, v7

    invoke-static {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 650
    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 651
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    const v7, 0x7f0b005a

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSave:Landroid/widget/Button;

    .line 659
    const v7, 0x7f0b000e

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnBackIndex:Landroid/widget/Button;

    .line 660
    const v7, 0x7f0b005c

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnShare:Landroid/widget/Button;

    .line 661
    const v7, 0x7f0b0061

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSettings:Landroid/widget/Button;

    .line 662
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSave:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnShare:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnBackIndex:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSettings:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    const v7, 0x7f0b0064

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSendQipao:Landroid/widget/Button;

    .line 668
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->btnSendQipao:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    const v7, 0x7f0b0063

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;

    .line 725
    const v7, 0x7f0b0071

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    .line 726
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 729
    const v7, 0x7f0b007a

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsHY:Landroid/widget/Button;

    .line 730
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsHY:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    const v7, 0x7f0b007c

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    .line 733
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    sget-boolean v7, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v7, :cond_1

    .line 735
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v8, 0x7f020053

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 740
    :goto_0
    const v7, 0x7f0b0075

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsCancle:Landroid/widget/Button;

    .line 741
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsCancle:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v7, 0x7f0b0077

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsUserlearn:Landroid/widget/Button;

    .line 743
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsUserlearn:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    const v7, 0x7f0b0035

    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->imageviewLoading:Landroid/widget/ImageView;

    .line 747
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->imageviewLoading:Landroid/widget/ImageView;

    const v8, 0x7f0200a5

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 748
    iget v7, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    if-ne v7, v9, :cond_0

    .line 750
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->imageviewLoading:Landroid/widget/ImageView;

    const v8, 0x7f0200a6

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 759
    :cond_0
    const v7, 0x7f0b0033

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    .line 760
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 762
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 763
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 764
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    new-instance v8, Landroid/webkit/WebChromeClient;

    invoke-direct {v8}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 766
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    new-instance v8, Lcom/miantan/myoface/EditorActivity2$2;

    invoke-direct {v8, p0}, Lcom/miantan/myoface/EditorActivity2$2;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 787
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const-string v8, "headEdit2"

    invoke-virtual {v7, p0, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    new-instance v8, Lcom/miantan/myoface/JavaScriptObject;

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/miantan/myoface/JavaScriptObject;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v9, "myjsobj"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const-string v8, "file:///android_asset/headEdit2.html"

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 790
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_1
    return-void

    .line 737
    :cond_1
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    const v8, 0x7f020050

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 796
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 797
    .local v1, msg_init:Landroid/os/Message;
    const/16 v7, 0xb

    iput v7, v1, Landroid/os/Message;->what:I

    .line 798
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    sget v8, Lcom/miantan/myoface/BasicData;->mLoadingTimeRetry:I

    int-to-long v8, v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method ShowColorPickerDialog2()V
    .locals 6

    .prologue
    .line 2043
    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v4, v4, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I

    aget-object v3, v4, v5

    .line 2044
    .local v3, pre_colorvalue:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2045
    .local v2, init_colorvalue:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2046
    .local v1, init_color:I
    const/high16 v4, -0x100

    or-int/2addr v1, v4

    .line 2048
    new-instance v0, Lcom/miantan/myoface/ColorPickerDialog;

    .line 2050
    new-instance v4, Lcom/miantan/myoface/EditorActivity2$24;

    invoke-direct {v4, p0}, Lcom/miantan/myoface/EditorActivity2$24;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    .line 2048
    invoke-direct {v0, p0, v1, v4}, Lcom/miantan/myoface/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V

    .line 2086
    .local v0, cpdialog:Lcom/miantan/myoface/ColorPickerDialog;
    invoke-virtual {v0}, Lcom/miantan/myoface/ColorPickerDialog;->show()V

    .line 2087
    return-void
.end method

.method public convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "view"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 3544
    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3546
    .local v4, widthSpec:I
    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3548
    .local v1, heightSpec:I
    invoke-virtual {p1, v4, v1}, Landroid/view/View;->measure(II)V

    .line 3550
    iget v5, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    iget v6, p0, Lcom/miantan/myoface/EditorActivity2;->widthPixels:I

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 3553
    const/high16 v5, 0x43a0

    invoke-static {p0, v5}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 3554
    .local v3, imgWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 3555
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 3558
    :cond_0
    move v2, v3

    .line 3559
    .local v2, imgHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v2, v5, :cond_1

    .line 3560
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 3564
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 3565
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3567
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 3568
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;

    const-string v6, "convertViewToBitmap bitmap is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    :cond_2
    return-object v0
.end method

.method getIndexPos2(Lorg/json/JSONObject;)[I
    .locals 39
    .parameter "person"

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->LAST_INDEX:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 509
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

    .line 510
    .local v36, sexualindex:I
    const-string v37, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 511
    .local v23, hairindex:I
    const-string v37, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "color"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 512
    .local v21, haircolor:Ljava/lang/String;
    const-string v37, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 513
    .local v15, faceindex:I
    const-string v37, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "color"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 514
    .local v13, facecolor:Ljava/lang/String;
    const-string v37, "mouth"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 515
    .local v29, mouthindex:I
    const-string v37, "eye"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 516
    .local v11, eyeindex:I
    const-string v37, "eyebrow"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 517
    .local v9, eyebrowindex:I
    const-string v37, "hat"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 518
    .local v25, hatindex:I
    const-string v37, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 519
    .local v2, bgindex:I
    const-string v37, "hobby"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 520
    .local v27, likeindex:I
    const-string v37, "cloth"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 521
    .local v4, clothindex:I
    const-string v37, "bdBubble"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 522
    .local v33, qipaoindex:I
    const-string v37, "feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 523
    .local v17, featureindex:I
    const-string v37, "glass"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 524
    .local v19, glassindex:I
    const-string v37, "express"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 525
    .local v7, expindex:I
    const-string v37, "nose"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "id"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 555
    .local v31, noseindex:I
    const/16 v24, 0x0

    .line 556
    .local v24, hairpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 557
    .local v22, haircolorpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 558
    .local v16, facepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_SKINCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 559
    .local v14, facecolorpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 560
    .local v30, mouthpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 561
    .local v12, eyepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 562
    .local v10, eyebrowpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 563
    .local v26, hatpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 564
    .local v3, bgpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 565
    .local v28, likepos:I
    const/4 v5, 0x0

    .line 566
    .local v5, clothpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miantan/myoface/BasicDataApplication;->get_QIPAO_PIC_INDEX2_POS()Ljava/util/Map;

    move-result-object v37

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 567
    .local v34, qipaopos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 568
    .local v18, featurepos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 569
    .local v20, glasspos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 570
    .local v8, exppos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 571
    .local v32, nosepos:I
    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 576
    :cond_0
    if-nez v36, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

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

    .line 582
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v37, v0

    aput v24, v35, v37

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v37, v0

    aput v22, v35, v37

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v37, v0

    aput v16, v35, v37

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v37, v0

    aput v14, v35, v37

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v37, v0

    aput v10, v35, v37

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v37, v0

    aput v12, v35, v37

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v37, v0

    aput v30, v35, v37

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v37, v0

    aput v32, v35, v37

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v37, v0

    aput v18, v35, v37

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v37, v0

    aput v20, v35, v37

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v37, v0

    aput v5, v35, v37

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v37, v0

    aput v26, v35, v37

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v37, v0

    aput v28, v35, v37

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v37, v0

    aput v3, v35, v37

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v37, v0

    aput v8, v35, v37

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v37, v0

    aput v34, v35, v37
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
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

    .line 607
    :catch_0
    move-exception v6

    .line 609
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3528
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3530
    .local v0, hasSDCard:Z
    if-eqz v0, :cond_0

    .line 3532
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

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3536
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 2888
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 3175
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2895
    :sswitch_1
    const-string v17, "BtnSave_DoubleMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2896
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2900
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    .line 2905
    const-string v15, "javascript:cleanHalo()"

    .line 2906
    .local v15, sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2909
    .local v11, msg_init:Landroid/os/Message;
    const/16 v17, 0xe

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 2932
    .local v10, msg:Landroid/os/Message;
    const/16 v17, 0x10

    move/from16 v0, v17

    iput v0, v10, Landroid/os/Message;->what:I

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2920
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #msg_init:Landroid/os/Message;
    .end local v15           #sUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2921
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2929
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 2932
    .restart local v10       #msg:Landroid/os/Message;
    const/16 v17, 0x10

    move/from16 v0, v17

    iput v0, v10, Landroid/os/Message;->what:I

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2924
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v17

    .line 2929
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miantan/myoface/EditorActivity2;->isSaving:Z

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 2932
    .restart local v10       #msg:Landroid/os/Message;
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v10, Landroid/os/Message;->what:I

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2956
    throw v17

    .line 2963
    .end local v10           #msg:Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miantan/myoface/EditorActivity2;->isSharing:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "isSharing:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miantan/myoface/EditorActivity2;->isSharing:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miantan/myoface/EditorActivity2;->isSharing:Z

    .line 2967
    const-string v17, "BtnShare_DoubleMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2969
    const-string v15, "javascript:cleanHalo()"

    .line 2970
    .restart local v15       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2973
    .restart local v11       #msg_init:Landroid/os/Message;
    const/16 v17, 0xf

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3005
    .end local v11           #msg_init:Landroid/os/Message;
    .end local v15           #sUrl:Ljava/lang/String;
    :cond_1
    :sswitch_3
    const-string v17, "BtnBackChooseDoubleModeActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 3007
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3008
    .local v4, backIt:Landroid/content/Intent;
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/miantan/myoface/EditorActivity2;->setResult(ILandroid/content/Intent;)V

    .line 3009
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->finish()V

    .line 3010
    const v17, 0x7f040006

    const v18, 0x7f040009

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/miantan/myoface/EditorActivity2;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 3018
    .end local v4           #backIt:Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3021
    const-string v17, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getCurrentFocus()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 3027
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3029
    .local v16, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3030
    .local v3, allcnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 3040
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-le v3, v0, :cond_4

    .line 3042
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080064

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3032
    :cond_2
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3034
    .local v14, s:Ljava/lang/String;
    const-string v17, "[\\u4E00-\\u9FA5]+"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3035
    add-int/lit8 v3, v3, 0x2

    .line 3030
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3037
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3045
    .end local v14           #s:Ljava/lang/String;
    :cond_4
    const-string v12, ""

    .line 3046
    .local v12, newstr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3047
    .local v5, cnt:I
    const/4 v8, 0x1

    .line 3048
    .local v8, line:I
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_5

    .line 3067
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v8, v0, :cond_8

    .line 3069
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080065

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3050
    :cond_5
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3051
    .restart local v14       #s:Ljava/lang/String;
    const/4 v13, 0x0

    .line 3052
    .local v13, nowcnt:I
    const-string v17, "[\\u4E00-\\u9FA5]+"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3053
    const/4 v13, 0x2

    .line 3057
    :goto_4
    add-int/2addr v5, v13

    .line 3059
    const/16 v17, 0xa

    move/from16 v0, v17

    if-le v5, v0, :cond_6

    .line 3061
    move v5, v13

    .line 3062
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "&el&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3063
    add-int/lit8 v8, v8, 0x1

    .line 3065
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3048
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3055
    :cond_7
    const/4 v13, 0x1

    goto :goto_4

    .line 3073
    .end local v13           #nowcnt:I
    .end local v14           #s:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 3075
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "javascript:bubbl2eEditA(\'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\')"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3076
    .restart local v15       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;

    .line 3078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3082
    .end local v15           #sUrl:Ljava/lang/String;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "javascript:bubbl2eEditB(\'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\')"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3083
    .restart local v15       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miantan/myoface/EditorActivity2;->strEditQipao2:Ljava/lang/String;

    .line 3085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3094
    .end local v3           #allcnt:I
    .end local v5           #cnt:I
    .end local v7           #i:I
    .end local v8           #line:I
    .end local v12           #newstr:Ljava/lang/String;
    .end local v15           #sUrl:Ljava/lang/String;
    .end local v16           #str:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3104
    :sswitch_7
    sget-boolean v17, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v17, :cond_a

    .line 3106
    const/16 v17, 0x0

    sput-boolean v17, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 3107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3115
    :goto_5
    invoke-static {}, Lcom/miantan/myoface/BasicData;->getSoundSwitch()I

    move-result v9

    .line 3116
    .local v9, mIsSoundOn:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    const-string v18, "SwitchSoundOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 3111
    .end local v9           #mIsSoundOn:I
    :cond_a
    const/16 v17, 0x1

    sput-boolean v17, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mButtonSettingsSoundS:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f020053

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_5

    .line 3144
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 3146
    const v17, 0x7f0b007e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    .line 3147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/miantan/myoface/EditorActivity2$26;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity2$26;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3159
    :sswitch_9
    const-string v17, "BtnSettings_BtnClose"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3165
    :sswitch_a
    const-string v17, "BtnSettings_TouchClose"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 3166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mViewSettings:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2888
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

    .line 2093
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2096
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->InitDevice()V

    .line 2099
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/EditorActivity2;->setContentView(I)V

    .line 2101
    iput-object p0, p0, Lcom/miantan/myoface/EditorActivity2;->mContext:Landroid/content/Context;

    .line 2104
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->InitUI()V

    .line 2105
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miantan/myoface/BitmapCacheLru;->initBitmapCache(Landroid/content/Context;)V

    .line 2107
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->InitData()V

    .line 2113
    invoke-virtual {p0, p1}, Lcom/miantan/myoface/EditorActivity2;->InitOp(Landroid/os/Bundle;)V

    .line 2120
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity2:Z

    if-eqz v0, :cond_0

    .line 2124
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/EditorActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    .line 2125
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miantan/myoface/EditorActivity2$25;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/EditorActivity2$25;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutDoubleUserLearn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2133
    sput-boolean v2, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity2:Z

    .line 2135
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NeverEnteredEditorActivity2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2136
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2140
    :cond_0
    sget v0, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    if-nez v0, :cond_2

    .line 2141
    const-string v0, "EnterEditorPage_DoubleMode"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2144
    :cond_1
    :goto_0
    return-void

    .line 2142
    :cond_2
    sget v0, Lcom/miantan/myoface/EditorActivity2;->mEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2143
    const-string v0, "EnterEditorPage_DoubleMode_EditMode"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 3741
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3743
    const/4 v1, 0x0

    .line 3744
    .local v1, rmgridview:Landroid/widget/GridView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 3748
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3749
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 3758
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 3760
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->relativelayoutWebview:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3761
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3762
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 3766
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miantan/myoface/EditorActivity2;->isOnPause:Z

    .line 3773
    return-void

    .line 3745
    :cond_1
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2;->listGridViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #rmgridview:Landroid/widget/GridView;
    check-cast v1, Landroid/widget/GridView;

    .line 3746
    .restart local v1       #rmgridview:Landroid/widget/GridView;
    const/4 v1, 0x0

    .line 3744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2867
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 3721
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3723
    :try_start_0
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3725
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 3726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3732
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 3736
    return-void

    .line 3729
    :catch_0
    move-exception v0

    .line 3730
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 3698
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3700
    :try_start_0
    iget-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isOnPause:Z

    if-eqz v1, :cond_1

    .line 3701
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3703
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 3705
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miantan/myoface/EditorActivity2;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3711
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 3718
    return-void

    .line 3707
    :catch_0
    move-exception v0

    .line 3708
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2872
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2878
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2882
    const/4 v0, 0x0

    return v0
.end method

.method public readBitMap(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x1

    .line 3839
    const/4 v0, 0x0

    .line 3840
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miantan/myoface/BitmapCacheLru;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3841
    if-nez v0, :cond_0

    .line 3842
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3843
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3844
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3845
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 3846
    invoke-virtual {p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 3847
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3848
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miantan/myoface/BitmapCacheLru;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3851
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
    .line 3583
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 3584
    .local v13, hasSDCard:Z
    if-nez v13, :cond_0

    .line 3585
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsg(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V

    .line 3586
    const/4 v1, 0x2

    .line 3654
    :goto_0
    return v1

    .line 3589
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 3590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 3591
    .local v8, bitWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3594
    .local v4, bitHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

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

    .line 3596
    .local v18, webview_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 3603
    if-nez v18, :cond_1

    .line 3604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;

    const-string v2, "webview_bitmap is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_1
    move-object/from16 v9, v18

    .line 3609
    .local v9, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getSDPath()Ljava/lang/String;

    move-result-object v16

    .line 3613
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

    iput-object v1, v0, Lcom/miantan/myoface/EditorActivity2;->gCurFilePath:Ljava/lang/String;

    .line 3614
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3615
    .local v10, destDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3617
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

    .line 3618
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 3619
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

    .line 3622
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

    .line 3623
    .local v14, imageFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 3624
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3625
    .local v12, fos:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {v9, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3626
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 3627
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 3629
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3630
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

    .line 3631
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3632
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/miantan/myoface/EditorActivity2;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3649
    .end local v10           #destDir:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v15           #imgIntent:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :goto_1
    if-eqz p2, :cond_3

    .line 3651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miantan/myoface/EditorActivity2;->getResources()Landroid/content/res/Resources;

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

    invoke-direct {v0, v1}, Lcom/miantan/myoface/EditorActivity2;->ShowToast(Ljava/lang/String;)V

    .line 3654
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3638
    :catch_0
    move-exception v11

    .line 3641
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 3643
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 3646
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public savePicture()V
    .locals 5

    .prologue
    .line 3520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3521
    .local v1, nowTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2;->appname:Ljava/lang/String;

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

    .line 3522
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/miantan/myoface/EditorActivity2;->saveImage(Ljava/lang/String;Z)I

    .line 3523
    return-void
.end method

.method setIndexNumAndColorByPerson2(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 24
    .parameter "person1"
    .parameter "person2"

    .prologue
    .line 405
    :try_start_0
    const-string v21, "sexual"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 406
    .local v20, sexualindex:I
    rsub-int/lit8 v19, v20, 0x1

    .line 408
    .local v19, sex:I
    const-string v21, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 409
    .local v13, hairindex:I
    const-string v21, "hair"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 410
    .local v12, haircolor:Ljava/lang/String;
    const-string v21, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 411
    .local v9, faceindex:I
    const-string v21, "face"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, facecolor:Ljava/lang/String;
    const-string v21, "eyebrow"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 413
    .local v6, eyebrowindex:I
    const-string v21, "eye"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 414
    .local v7, eyeindex:I
    const-string v21, "mouth"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 415
    .local v16, mouthindex:I
    const-string v21, "nose"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 416
    .local v17, noseindex:I
    const-string v21, "feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 417
    .local v10, featureindex:I
    const-string v21, "hat"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 418
    .local v14, hatindex:I
    const-string v21, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 419
    .local v2, bgindex:I
    const-string v21, "hobby"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 420
    .local v15, likeindex:I
    const-string v21, "cloth"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 421
    .local v3, clothindex:I
    const-string v21, "bdBubble"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 422
    .local v18, qipaoindex:I
    const-string v21, "glass"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 423
    .local v11, glassindex:I
    const-string v21, "express"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 425
    .local v5, expindex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v22, v0

    aput v13, v21, v22

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v22, v0

    aput-object v12, v21, v22

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v22, v0

    aput v9, v21, v22

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v22, v0

    aput-object v8, v21, v22

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v22, v0

    aput v6, v21, v22

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v22, v0

    aput v7, v21, v22

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v22, v0

    aput v16, v21, v22

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v22, v0

    aput v17, v21, v22

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v22, v0

    aput v10, v21, v22

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v22, v0

    aput v11, v21, v22

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v22, v0

    aput v3, v21, v22

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v22, v0

    aput v14, v21, v22

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v22, v0

    aput v15, v21, v22

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v22, v0

    aput v2, v21, v22

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v22, v0

    aput v5, v21, v22

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v22, v0

    aput v18, v21, v22

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BIANSHEN:I

    move/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 449
    const-string v21, "sexual"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 450
    rsub-int/lit8 v19, v20, 0x1

    .line 452
    const-string v21, "hair"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 453
    const-string v21, "hair"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 454
    const-string v21, "face"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    const-string v21, "face"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "color"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    const-string v21, "eyebrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 457
    const-string v21, "eye"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 458
    const-string v21, "mouth"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 459
    const-string v21, "nose"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 460
    const-string v21, "feature"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 461
    const-string v21, "hat"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 462
    const-string v21, "background"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 463
    const-string v21, "hobby"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 464
    const-string v21, "cloth"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 465
    const-string v21, "bdBubble"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 466
    const-string v21, "glass"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 467
    const-string v21, "express"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIR:I

    move/from16 v22, v0

    aput v13, v21, v22

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    move/from16 v22, v0

    aput-object v12, v21, v22

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FACE:I

    move/from16 v22, v0

    aput v9, v21, v22

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    move/from16 v22, v0

    aput-object v8, v21, v22

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    move/from16 v22, v0

    aput v6, v21, v22

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    move/from16 v22, v0

    aput v7, v21, v22

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    move/from16 v22, v0

    aput v16, v21, v22

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    move/from16 v22, v0

    aput v17, v21, v22

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_FEATURE:I

    move/from16 v22, v0

    aput v10, v21, v22

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_GLASS:I

    move/from16 v22, v0

    aput v11, v21, v22

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v22, v0

    aput v3, v21, v22

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v22, v0

    aput v14, v21, v22

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v22, v0

    aput v15, v21, v22

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v22, v0

    aput v2, v21, v22

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    move/from16 v22, v0

    aput v5, v21, v22

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    move/from16 v22, v0

    aput v18, v21, v22

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miantan/myoface/EditorActivity2;->gMode:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BIANSHEN:I

    move/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v21, v22
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
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

    .line 494
    :catch_0
    move-exception v4

    .line 496
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
