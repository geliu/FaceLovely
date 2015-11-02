.class public Lcom/miantan/myoface/BasicData;
.super Ljava/lang/Object;
.source "BasicData.java"


# static fields
.field public static final MSG_INSTAGRAM_INSTALLED_FLASE:I = 0x6d

.field public static final MSG_KAKAO_INSTALLED_FLASE:I = 0x71

.field public static final MSG_LINE_INSTALLED_FLASE:I = 0x6f

.field public static final MSG_NET_CONNECTED_FALSE:I = 0x65

.field public static final MSG_RECORDING_TOO_SHORT:I = 0x68

.field public static final MSG_SDCARD_FALSE:I = 0x66

.field public static final MSG_START_SHOW_SAVING:I = 0x6b

.field public static final MSG_START_SHOW_SENDING:I = 0x69

.field public static final MSG_STOP_SHOW_SAVING:I = 0x6c

.field public static final MSG_STOP_SHOW_SENDING:I = 0x6a

.field public static final MSG_TUMBLR_INSTALLED_FLASE:I = 0x70

.field public static final MSG_WHATSAPP_INSTALLED_FLASE:I = 0x6e

.field public static final MSG_WX_INSTALLED_FLASE:I = 0x67

.field public static final REQBACK_CODE:I = 0x2

.field public static final REQUEST_CODE:I = 0x1

.field public static isAppNewVersion:Z

.field public static isNetConnected:Z

.field public static isNeverEnterEditorActivity:Z

.field public static isNeverEnterEditorActivity2:Z

.field public static isSDCardAvailable:Z

.field public static isShakeOn:Z

.field public static isSoundOn:Z

.field public static isWBInstalled:Z

.field public static isWXInstalled:Z

.field public static mLoadingTimeDouble:I

.field public static mLoadingTimeHistory:I

.field public static mLoadingTimeRetry:I

.field public static mLoadingTimeSingle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 598
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isAppNewVersion:Z

    .line 599
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity:Z

    .line 600
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity2:Z

    .line 601
    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isShakeOn:Z

    .line 602
    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 603
    sput v2, Lcom/miantan/myoface/BasicData;->mLoadingTimeSingle:I

    .line 604
    const/16 v0, 0x7d0

    sput v0, Lcom/miantan/myoface/BasicData;->mLoadingTimeDouble:I

    .line 605
    sput v2, Lcom/miantan/myoface/BasicData;->mLoadingTimeHistory:I

    .line 606
    const/16 v0, 0x1388

    sput v0, Lcom/miantan/myoface/BasicData;->mLoadingTimeRetry:I

    .line 673
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isNetConnected:Z

    .line 674
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isSDCardAvailable:Z

    .line 675
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isWXInstalled:Z

    .line 676
    sput-boolean v1, Lcom/miantan/myoface/BasicData;->isWBInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShakeSwitch()I
    .locals 1

    .prologue
    .line 630
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isShakeOn:Z

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSoundSwitch()I
    .locals 1

    .prologue
    .line 643
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShakeSwitch(I)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x1

    .line 636
    if-ne p0, v0, :cond_0

    .line 637
    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isShakeOn:Z

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isShakeOn:Z

    goto :goto_0
.end method

.method public static setSoundSwitch(I)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x1

    .line 649
    if-ne p0, v0, :cond_0

    .line 650
    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    goto :goto_0
.end method
