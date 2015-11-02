.class public Lcom/miantan/myoface/HistroyActivity;
.super Landroid/app/Activity;
.source "HistroyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "JavascriptInterface"
    }
.end annotation


# static fields
.field public static final MSG_EDIT_RECORD:I = 0x1

.field public static final MSG_START_INIT_HEADEDIT:I = 0x0

.field public static final MSG_START_INIT_WEBVIEW_ERR:I = 0x3

.field public static final MSG_STOP_SHOW_LOADING:I = 0x2


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private btnGetBack:Landroid/widget/Button;

.field private isOnPause:Z

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

.field private ll:Landroid/widget/LinearLayout;

.field private mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

.field mHandler:Landroid/os/Handler;

.field mSexual:I

.field private mWebview:Landroid/webkit/WebView;

.field private relativelayoutLoading:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "MYOFace"

    iput-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->LOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 60
    iput-boolean v1, p0, Lcom/miantan/myoface/HistroyActivity;->isOnPause:Z

    .line 62
    iput v1, p0, Lcom/miantan/myoface/HistroyActivity;->mSexual:I

    .line 280
    new-instance v0, Lcom/miantan/myoface/HistroyActivity$1;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/HistroyActivity$1;-><init>(Lcom/miantan/myoface/HistroyActivity;)V

    iput-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 600
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 601
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 602
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 603
    return-void
.end method

.method private ShowToastForErrTips(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 606
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 607
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 608
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 609
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/HistroyActivity;)Lcom/miantan/myoface/BasicDataApplication;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/miantan/myoface/HistroyActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/miantan/myoface/HistroyActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miantan/myoface/HistroyActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/miantan/myoface/HistroyActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$4(Lcom/miantan/myoface/HistroyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/miantan/myoface/HistroyActivity;->ShowToastForErrTips(Ljava/lang/String;)V

    return-void
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
    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 596
    return-object v1

    .line 594
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 262
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    invoke-virtual {v2}, Lcom/miantan/myoface/BasicDataApplication;->getRecordHelper()Lcom/miantan/myoface/RecordHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miantan/myoface/RecordHelper;->getList()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, listJSON:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:initHistoryList("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, url_init:Ljava/lang/String;
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 277
    .end local v0           #listJSON:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v1           #url_init:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 217
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, backIt:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/miantan/myoface/HistroyActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/miantan/myoface/HistroyActivity;->finish()V

    .line 220
    const v1, 0x7f040006

    const v2, 0x7f040009

    invoke-virtual {p0, v1, v2}, Lcom/miantan/myoface/HistroyActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/miantan/myoface/HistroyActivity;->requestWindowFeature(I)Z

    .line 74
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/miantan/myoface/HistroyActivity;->setContentView(I)V

    .line 77
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/miantan/myoface/HistroyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->btnGetBack:Landroid/widget/Button;

    .line 78
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Lcom/miantan/myoface/HistroyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->relativelayoutLoading:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->btnGetBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/miantan/myoface/HistroyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/miantan/myoface/BasicDataApplication;

    iput-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    .line 86
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 87
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 89
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemShow:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIR_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FACE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYEBROWS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EYE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->MOUSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->NOSE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->FEATURE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->GLASS_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->CLOTHES_MAN_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->HAT_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->LIKE_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->BG_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->EXP_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->listAllTypeElemIndex:Ljava/util/List;

    iget-object v3, p0, Lcom/miantan/myoface/HistroyActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->QIPAO_PIC_INDEX:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/miantan/myoface/HistroyActivity;->getListByArray([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const v2, 0x7f0b0033

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/miantan/myoface/HistroyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    .line 165
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 168
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 169
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v3, Lcom/miantan/myoface/HistroyActivity$2;

    invoke-direct {v3, p0}, Lcom/miantan/myoface/HistroyActivity$2;-><init>(Lcom/miantan/myoface/HistroyActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 190
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    const-string v3, "historyList"

    invoke-virtual {v2, p0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v3, Lcom/miantan/myoface/JavaScriptObject;

    iget-object v4, p0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/miantan/myoface/JavaScriptObject;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v4, "myjsobj"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/historyList.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    const-string v2, "EnterHistoryPage"

    invoke-static {p0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 200
    .local v1, msg_init:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 201
    iget-object v2, p0, Lcom/miantan/myoface/HistroyActivity;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/miantan/myoface/BasicData;->mLoadingTimeRetry:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miantan/myoface/HistroyActivity;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 258
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    :try_start_0
    iget-boolean v1, p0, Lcom/miantan/myoface/HistroyActivity;->isOnPause:Z

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/miantan/myoface/HistroyActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 233
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miantan/myoface/HistroyActivity;->isOnPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 240
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
