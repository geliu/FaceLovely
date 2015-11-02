.class public Lcom/tencent/open/TaskGuide;
.super Lcom/tencent/connect/common/b;
.source "ProGuard"


# static fields
.field private static BACKGROUND_HEIGHT:I = 0x0

.field private static BACKGROUND_WIDTH:I = 0x0

.field private static BUTTON_HEIGHT:I = 0x0

.field private static final BUTTON_ID:I = 0x2

.field private static BUTTON_MARGIN_RIGHT:I = 0x0

.field private static BUTTON_MARGIN_TOP:I = 0x0

.field private static BUTTON_WIDTH:I = 0x0

.field private static final CGI_APP_GRADE_URI:Ljava/lang/String; = "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk"

.field private static REWARD_MARGIN_TOP:I = 0x0

.field private static REWARD_TEXT_SIZE:I = 0x0

.field private static REWARD_TEXT_WIDTH:I = 0x0

.field private static final REWARD_TX_ID:I = 0x3

.field private static SUBTEXT_MARGIN_TOP:I = 0x0

.field private static final SUB_TIP_TX_ID:I = 0x4

.field private static TIPTEXT_MARGIN_LEFT:I = 0x0

.field private static TIPTEXT_TEXT_SIZE:I = 0x0

.field private static TIPTEXT_WIDTH:I = 0x0

.field private static final TIP_TX_ID:I = 0x1

.field private static sAutoCollapseInteval:I

.field private static sBackground:Landroid/graphics/drawable/Drawable;

.field private static sButtonGreen:Landroid/graphics/drawable/Drawable;

.field private static sButtonRed:Landroid/graphics/drawable/Drawable;

.field static sDuration:J


# instance fields
.field private clRunnalbe:Ljava/lang/Runnable;

.field private cllDelayRunnable:Ljava/lang/Runnable;

.field private mAddedWindow:Z

.field private mAnimationLength:I

.field private mCollapseAnimationRunning:Z

.field private mContentView:Landroid/view/ViewGroup;

.field private mExpandAnimationRunning:Z

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsCollapse:Z

.field mListener:Lcom/tencent/tauth/IUiListener;

.field private mStartTime:J

.field private mStartY:I

.field private mState1:Lcom/tencent/open/TaskGuide$TaskState;

.field private mState2:Lcom/tencent/open/TaskGuide$TaskState;

.field private mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

.field private mWinParams:Landroid/view/WindowManager$LayoutParams;

.field private sDensity:F

.field private sScreenHeight:I

.field private sScreenWidth:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x4b

    const/16 v2, 0x1e

    const/4 v1, 0x6

    .line 76
    sput v3, Lcom/tencent/open/TaskGuide;->BACKGROUND_HEIGHT:I

    .line 77
    const/16 v0, 0x11c

    sput v0, Lcom/tencent/open/TaskGuide;->BACKGROUND_WIDTH:I

    .line 79
    sput v3, Lcom/tencent/open/TaskGuide;->BUTTON_WIDTH:I

    .line 80
    sput v2, Lcom/tencent/open/TaskGuide;->BUTTON_HEIGHT:I

    .line 81
    const/16 v0, 0x1d

    sput v0, Lcom/tencent/open/TaskGuide;->BUTTON_MARGIN_RIGHT:I

    .line 82
    const/4 v0, 0x5

    sput v0, Lcom/tencent/open/TaskGuide;->BUTTON_MARGIN_TOP:I

    .line 84
    const/16 v0, 0x4a

    sput v0, Lcom/tencent/open/TaskGuide;->REWARD_TEXT_WIDTH:I

    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/tencent/open/TaskGuide;->REWARD_MARGIN_TOP:I

    .line 86
    sput v1, Lcom/tencent/open/TaskGuide;->REWARD_TEXT_SIZE:I

    .line 90
    const/16 v0, 0x99

    sput v0, Lcom/tencent/open/TaskGuide;->TIPTEXT_WIDTH:I

    .line 91
    sput v2, Lcom/tencent/open/TaskGuide;->TIPTEXT_MARGIN_LEFT:I

    .line 93
    sput v1, Lcom/tencent/open/TaskGuide;->TIPTEXT_TEXT_SIZE:I

    .line 94
    const/4 v0, 0x3

    sput v0, Lcom/tencent/open/TaskGuide;->SUBTEXT_MARGIN_TOP:I

    .line 563
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/tencent/open/TaskGuide;->sDuration:J

    .line 566
    const/16 v0, 0xbb8

    sput v0, Lcom/tencent/open/TaskGuide;->sAutoCollapseInteval:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/b;-><init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 62
    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    .line 68
    sget-object v0, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    .line 69
    sget-object v0, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    .line 96
    iput v2, p0, Lcom/tencent/open/TaskGuide;->sScreenWidth:I

    .line 97
    iput v2, p0, Lcom/tencent/open/TaskGuide;->sScreenHeight:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/TaskGuide;->sDensity:F

    .line 99
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    .line 511
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mIsCollapse:Z

    .line 560
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    .line 561
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mCollapseAnimationRunning:Z

    .line 567
    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    .line 568
    iput-object v3, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    .line 105
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    .line 106
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->initDisplay()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/open/TaskGuide;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/open/TaskGuide;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tencent/open/TaskGuide;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/open/TaskGuide;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->genearteWinParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->retWinParams()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->expandWindow()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/open/TaskGuide;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->getDimenDp2Px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/tencent/open/TaskGuide;->BUTTON_WIDTH:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/tencent/open/TaskGuide;->BUTTON_HEIGHT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/tencent/open/TaskGuide;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->getButtonGreen()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/open/TaskGuide;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->getButtonRed()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tencent/open/TaskGuide;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->autoCollapseWindow(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->collapseWindow()V

    return-void
.end method

.method static synthetic access$2600(Lcom/tencent/open/TaskGuide;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/tencent/open/TaskGuide;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/open/TaskGuide;->mAnimationLength:I

    return v0
.end method

.method static synthetic access$2800(Lcom/tencent/open/TaskGuide;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/open/TaskGuide;->mStartY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->endAnimation()V

    return-void
.end method

.method static synthetic access$3100(Lcom/tencent/open/TaskGuide;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$TaskInfo;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$TaskInfo;)Lcom/tencent/open/TaskGuide$TaskInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$TaskState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/TaskGuide;->moveToState(ILcom/tencent/open/TaskGuide$TaskState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/open/TaskGuide;I)Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->getState(I)Lcom/tencent/open/TaskGuide$TaskState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/open/TaskGuide;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->getGift(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/open/TaskGuide;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->updateContentView(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->cancelAutoAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide;->createNewContentView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private autoCollapseWindow(I)V
    .locals 4
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->cancelAutoAnimation()V

    .line 584
    new-instance v0, Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$1;)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    .line 585
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 586
    return-void
.end method

.method private cancelAutoAnimation()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->isAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    :cond_0
    return-void
.end method

.method private collapseWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->isAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 649
    new-instance v0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;

    invoke-direct {v0, p0, v2}, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;-><init>(Lcom/tencent/open/TaskGuide;Z)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    .line 650
    invoke-direct {p0, v2}, Lcom/tencent/open/TaskGuide;->setAnimationParam(Z)V

    .line 651
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    :cond_0
    return-void
.end method

.method private createNewContentView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xe

    const/4 v8, -0x1

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;

    invoke-direct {v0, p0, p1}, Lcom/tencent/open/TaskGuide$QQRelativeLayout;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)V

    .line 175
    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

    iget-object v1, v1, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    .line 176
    array-length v2, v1

    if-ne v2, v7, :cond_0

    .line 177
    new-instance v2, Lcom/tencent/open/TaskGuide$TaskLinearLayout;

    aget-object v1, v1, v6

    invoke-direct {v2, p0, p1, v1}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$StepInfo;)V

    .line 178
    invoke-virtual {v2, v7}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;->setId(I)V

    .line 179
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :goto_0
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-object v0

    .line 183
    :cond_0
    new-instance v2, Lcom/tencent/open/TaskGuide$TaskLinearLayout;

    aget-object v3, v1, v6

    invoke-direct {v2, p0, p1, v3}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$StepInfo;)V

    .line 184
    invoke-virtual {v2, v7}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;->setId(I)V

    .line 185
    new-instance v3, Lcom/tencent/open/TaskGuide$TaskLinearLayout;

    aget-object v1, v1, v7

    invoke-direct {v3, p0, p1, v1}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;-><init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;Lcom/tencent/open/TaskGuide$StepInfo;)V

    .line 186
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lcom/tencent/open/TaskGuide$TaskLinearLayout;->setId(I)V

    .line 187
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/tencent/open/TaskGuide;->getDimenDp2Px(I)I

    move-result v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/tencent/open/TaskGuide;->getDimenDp2Px(I)I

    move-result v5

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 196
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v0, v3, v4}, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 596
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 597
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/tencent/open/TaskGuide;->autoCollapseWindow(I)V

    .line 602
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 604
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    .line 607
    iput-boolean v3, p0, Lcom/tencent/open/TaskGuide;->mCollapseAnimationRunning:Z

    .line 609
    return-void

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->removeWindow()V

    goto :goto_0
.end method

.method private expandWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-direct {p0}, Lcom/tencent/open/TaskGuide;->isAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->cllDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 634
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    new-instance v0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;

    invoke-direct {v0, p0, v2}, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;-><init>(Lcom/tencent/open/TaskGuide;Z)V

    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    .line 636
    invoke-direct {p0, v2}, Lcom/tencent/open/TaskGuide;->setAnimationParam(Z)V

    .line 637
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_0
    return-void
.end method

.method private genearteWinParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 125
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 131
    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 133
    sget v1, Lcom/tencent/open/TaskGuide;->BACKGROUND_WIDTH:I

    invoke-direct {p0, v1}, Lcom/tencent/open/TaskGuide;->getDimenDp2Px(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    sget v1, Lcom/tencent/open/TaskGuide;->BACKGROUND_HEIGHT:I

    invoke-direct {p0, v1}, Lcom/tencent/open/TaskGuide;->getDimenDp2Px(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 137
    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 138
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 143
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 144
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 146
    iput-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    .line 147
    return-object v0
.end method

.method private getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/tencent/open/TaskGuide;->sBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "background.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->sBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    :cond_0
    sget-object v0, Lcom/tencent/open/TaskGuide;->sBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getButtonGreen()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/open/TaskGuide;->sButtonGreen:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "button_green.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->sButtonGreen:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_0
    sget-object v0, Lcom/tencent/open/TaskGuide;->sButtonGreen:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getButtonRed()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/tencent/open/TaskGuide;->sButtonRed:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "button_red.9.png"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TaskGuide;->sButtonRed:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_0
    sget-object v0, Lcom/tencent/open/TaskGuide;->sButtonRed:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getDimenDp2Px(I)I
    .locals 2
    .parameter

    .prologue
    .line 164
    int-to-float v0, p1

    iget v1, p0, Lcom/tencent/open/TaskGuide;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 672
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 673
    if-nez v2, :cond_0

    move-object v0, v1

    .line 696
    :goto_0
    return-object v0

    .line 676
    :cond_0
    const-string v0, ".9.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_1

    .line 679
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 680
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 681
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 694
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 684
    goto :goto_0

    .line 687
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 688
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 692
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getGift(I)V
    .locals 6
    .parameter

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    .line 1041
    const-string v0, "action"

    const-string v1, "get_gift"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "task_id"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

    iget-object v1, v1, Lcom/tencent/open/TaskGuide$TaskInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "step_no"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v0, "appid"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    new-instance v5, Lcom/tencent/open/TaskGuide$GiftResultListener;

    invoke-direct {v5, p0, p1}, Lcom/tencent/open/TaskGuide$GiftResultListener;-><init>(Lcom/tencent/open/TaskGuide;I)V

    .line 1047
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    const-string v2, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk"

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/sdkutil/HttpUtils;->requestAsync(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 1050
    sget-object v0, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_REWARD:Lcom/tencent/open/TaskGuide$TaskState;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/TaskGuide;->moveToState(ILcom/tencent/open/TaskGuide$TaskState;)V

    .line 1051
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    const-string v2, "TaskApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "getGift"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method private getState(I)Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1
    .parameter

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    goto :goto_0

    .line 308
    :cond_1
    sget-object v0, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    goto :goto_0
.end method

.method private initDisplay()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/tencent/open/TaskGuide;->sScreenWidth:I

    .line 117
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/tencent/open/TaskGuide;->sScreenHeight:I

    .line 118
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tencent/open/TaskGuide;->sDensity:F

    .line 119
    return-void
.end method

.method private isAnimation()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mCollapseAnimationRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToState(ILcom/tencent/open/TaskGuide$TaskState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 273
    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    goto :goto_0

    .line 275
    :cond_1
    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    .line 276
    iput-object p2, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    goto :goto_0
.end method

.method private retWinParams()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 154
    :cond_0
    return-void
.end method

.method private setAnimationParam(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 612
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/TaskGuide;->mStartTime:J

    .line 614
    if-eqz p1, :cond_0

    .line 615
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mExpandAnimationRunning:Z

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/tencent/open/TaskGuide;->mAnimationLength:I

    .line 620
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/open/TaskGuide;->mStartY:I

    .line 622
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 623
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    return-void

    .line 617
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/open/TaskGuide;->mCollapseAnimationRunning:Z

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/open/TaskGuide$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/TaskGuide$3;-><init>(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method private updateContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/open/TaskGuide$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/TaskGuide$1;-><init>(Lcom/tencent/open/TaskGuide;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public removeWindow()V
    .locals 2

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    .line 663
    :cond_0
    return-void
.end method

.method public showTaskGuideWindow(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1007
    iput-object p1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    .line 1008
    iput-object p3, p0, Lcom/tencent/open/TaskGuide;->mListener:Lcom/tencent/tauth/IUiListener;

    .line 1010
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState1:Lcom/tencent/open/TaskGuide$TaskState;

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mState2:Lcom/tencent/open/TaskGuide$TaskState;

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/open/TaskGuide;->mAddedWindow:Z

    if-eqz v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iput-object v2, p0, Lcom/tencent/open/TaskGuide;->mTaskInfo:Lcom/tencent/open/TaskGuide$TaskInfo;

    .line 1018
    if-eqz p2, :cond_2

    .line 1019
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1020
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1026
    :goto_1
    new-instance v5, Lcom/tencent/open/TaskGuide$TaskRequestListener;

    invoke-direct {v5, p0, v2}, Lcom/tencent/open/TaskGuide$TaskRequestListener;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$1;)V

    .line 1027
    const-string v0, "action"

    const-string v1, "task_list"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v0, "auth"

    const-string v1, "mobile"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v0, "appid"

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    const-string v2, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk"

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/sdkutil/HttpUtils;->requestAsync(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 1035
    const/4 v0, 0x2

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/TaskGuide;->moveToState(ILcom/tencent/open/TaskGuide$TaskState;)V

    goto :goto_0

    .line 1023
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/open/TaskGuide;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1
.end method

.method public showWindow()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 320
    new-instance v1, Lcom/tencent/open/TaskGuide$2;

    invoke-direct {v1, p0}, Lcom/tencent/open/TaskGuide$2;-><init>(Lcom/tencent/open/TaskGuide;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v0, p0, Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide;->mToken:Lcom/tencent/tauth/QQToken;

    const-string v2, "TaskApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "showTaskWindow"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 352
    return-void
.end method
